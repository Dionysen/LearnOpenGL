

#ifndef CAMERA_H
#define CAMERA_H

#include <glad/glad.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

#include <vector>

// 定义一些可能用到的常量
enum Camera_Movement
{
    FORWARD,
    BACKWARD,
    LEFT,
    RIGHT
};

// 摄像机默认值
const float YAW = -90.0f; // 偏航角度
const float PITCH = 0.0f; // 上仰角度
const float SPEED = 5.0f; // 摄像机移动速度，虽然实际是整个空间的物体同时在移动
const float SENSITIVITY = 0.1f; // 鼠标灵敏度，用以计算镜头转向
const float ZOOM = 45.0f; // 视野，观察空间的大小

// An abstract camera class that processes input and calculates the corresponding Euler Angles, Vectors and Matrices for use in OpenGL
class Camera
{
public:
    // 摄像机属性
    glm::vec3 Position;  // 摄像机位置向量
    glm::vec3 Front;     // 方向向量，摄像机指向的目标的方向
    glm::vec3 Up;        // 上向量，也即y轴正方向，叉乘方向向量可得右向量
    glm::vec3 Right;     // 右向量，摄像机空间x轴的正方向
    glm::vec3 WorldUp;   // 上向量
    // 有了三个互相垂直的轴，外加一个平移向量，即可创建一个矩阵，可以用这个矩阵乘以任何向量来将其变换到那个空间


    // euler Angles
    float Yaw;
    float Pitch;
    // camera options
    float MovementSpeed;
    float MouseSensitivity;
    float Zoom;  

    // 使用一个向量创建摄像机：
    // 主要参数为：位置，默认为原点;上向量，默认为010；方向向量为00-1, 其他均可以为默认
    Camera(glm::vec3 position = glm::vec3(0.0f, 0.0f, 0.0f), glm::vec3 up = glm::vec3(0.0f, 1.0f, 0.0f), float yaw = YAW, float pitch = PITCH) : Front(glm::vec3(0.0f, 0.0f, -1.0f)), MovementSpeed(SPEED), MouseSensitivity(SENSITIVITY), Zoom(ZOOM)
    {
        Position = position;
        WorldUp = up;
        Yaw = yaw;
        Pitch = pitch;
        updateCameraVectors();
    }
    // 使用标量创建摄像机
    // 主要参数为：位置，默认为原点;上向量，默认为010；方向向量为00-1, 其他均可以为默认
    Camera(float posX, float posY, float posZ, float upX, float upY, float upZ, float yaw, float pitch) : Front(glm::vec3(0.0f, 0.0f, -1.0f)), MovementSpeed(SPEED), MouseSensitivity(SENSITIVITY), Zoom(ZOOM)
    {
        Position = glm::vec3(posX, posY, posZ);
        WorldUp = glm::vec3(upX, upY, upZ);
        Yaw = yaw;
        Pitch = pitch;
        updateCameraVectors();
    }

    // returns the view matrix calculated using Euler Angles and the LookAt Matrix
    glm::mat4 GetViewMatrix() // 生成观察矩阵
    {
        // return glm::lookAt(Position, Position + Front, Up);
        // // lookat函数只需要一个位置，一个目标，和一个上向量，它会自己创建一个观察矩阵，此观察矩阵点乘空间中的物体，即可将物体变换到此观察空间中

        // ------------ 以下为自己的lookat：
        // 1. Position = known
        // 2. Calculate cameraDirection
        glm::vec3 zaxis = glm::normalize(-Front);
        // 3. Get positive right axis vector
        glm::vec3 xaxis = glm::normalize(glm::cross(glm::normalize(WorldUp), zaxis));
        // 4. Calculate camera up vector
        glm::vec3 yaxis = glm::cross(zaxis, xaxis);

        // Create translation and rotation matrix
        // In glm we access elements as mat[col][row] due to column-major layout
        glm::mat4 translation = glm::mat4(1.0f); // Identity matrix by default
        translation[3][0] = -Position.x; // Third column, first row
        translation[3][1] = -Position.y;
        translation[3][2] = -Position.z;
        glm::mat4 rotation = glm::mat4(1.0f);
        rotation[0][0] = xaxis.x; // First column, first row
        rotation[1][0] = xaxis.y;
        rotation[2][0] = xaxis.z;
        rotation[0][1] = yaxis.x; // First column, second row
        rotation[1][1] = yaxis.y;
        rotation[2][1] = yaxis.z;
        rotation[0][2] = zaxis.x; // First column, third row
        rotation[1][2] = zaxis.y;
        rotation[2][2] = zaxis.z; 
        return rotation * translation;
    }

    // processes input received from any keyboard-like input system. Accepts input parameter in the form of camera defined ENUM (to abstract it from windowing systems)
    void ProcessKeyboard(Camera_Movement direction, float deltaTime)
    {
        float velocity = MovementSpeed * deltaTime;  // 设定速度
        // 根据方向调整方向向量
        if (direction == FORWARD)
            Position += Front * velocity;
        if (direction == BACKWARD)
            Position -= Front * velocity;
        if (direction == LEFT)
            Position -= Right * velocity;
        if (direction == RIGHT)
            Position += Right * velocity;
        // Position.y = 0.0f; // 确保不会偏离xz平面
    }

    // processes input received from a mouse input system. Expects the offset value in both the x and y direction.
    void ProcessMouseMovement(float xoffset, float yoffset, GLboolean constrainPitch = true)
    {
        xoffset *= MouseSensitivity;  // x方向的鼠标偏离
        yoffset *= MouseSensitivity;  // y方向的鼠标偏离

        Yaw += xoffset;               // 偏航
        Pitch += yoffset;             // 仰角

        if (constrainPitch)    // 确保仰角足够大时屏幕不会被翻转
        {
            if (Pitch > 89.0f)
                Pitch = 89.0f;
            if (Pitch < -89.0f)
                Pitch = -89.0f;
        }

        // update Front, Right and Up Vectors using the updated Euler angles
        updateCameraVectors();
    }

    // processes input received from a mouse scroll-wheel event. Only requires input on the vertical wheel-axis
    void ProcessMouseScroll(float yoffset)   // 处理缩放
    {
        Zoom -= (float)yoffset;
        if (Zoom < 1.0f)
            Zoom = 1.0f;
        if (Zoom > 45.0f)
            Zoom = 45.0f;
    }

private:
    // 从更新后的相机的欧拉角计算方向向量
    void updateCameraVectors()
    {
        // calculate the new Front vector
        glm::vec3 front;
        front.x = cos(glm::radians(Yaw)) * cos(glm::radians(Pitch));
        front.y = sin(glm::radians(Pitch));
        front.z = sin(glm::radians(Yaw)) * cos(glm::radians(Pitch));
        Front = glm::normalize(front);
        // 同时重新计算了右向量和上向量
        Right = glm::normalize(glm::cross(Front, WorldUp)); 
        // 将向量归一化，因为你向上或向下看的次数越多，它们的长度就越接近0，这会导致移动速度变慢。
        Up = glm::normalize(glm::cross(Right, Front));
    }
};
#endif
