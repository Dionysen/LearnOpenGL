#version 330 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal; //法线
layout (location = 2) in vec2 aTexCoord;

// 顶点着色器主要负责物体形状，大小，位置，视角，透视等，以及参数的传递
// 因此直接输出结果只有gl_Position
// 其他属性都要传到片段着色器中，如下
out vec3 FragPos;    // 片段位置
out vec3 Normal;
out vec2 TexCoords;

uniform mat4 model;  //模型大小位置的变换
uniform mat4 view; // 摄像机视角
uniform mat4 projection; // 透视和截取
uniform mat3 normalMatrix; //法线矩阵，在着色器之外用cpu计算

void main()
{
    gl_Position = projection * view * model * vec4(aPos, 1.0);
    // Normal = mat3(transpose(inverse(model))) * aNormal;  // 为保证物体的不等比缩放不会影响到法向量，必须使用法线矩阵处理，法线矩阵是模型矩阵左上角3x3部分的逆矩阵的转置矩阵，矩阵求逆开销大，最好又cpu完成，如下
    Normal = normalMatrix * aNormal;
    FragPos = vec3(model * vec4(aPos, 1.0)); // 顶点属性乘以模型矩阵可得片段在世界空间中的位置，实际上观察空间就是在此基础上乘以观察矩阵得到的，裁剪空间又是在观察空间的基础上乘以裁剪矩阵得到的
    // 不得不说，学习线性代数时全然没料到会有这么大的作用
    TexCoords = aTexCoord;
}
