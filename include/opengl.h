#ifndef _OPENGL_H_
#define _OPENGL_H_

#pragma once

#include <glad.h>
#include <iostream>
#include <GL/gl.h>

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#include "shader.h"

Shader ourShader;
unsigned int VAO, VBO, EBO;
unsigned int texture1, texture2;

float maxValue = 0.9f;
float rotation = 1.0f;

void initOpenGL()
{
    glEnable(GL_DEPTH_TEST);
    ourShader = Shader("shaders/shader.vs", "shaders/shader.fs");

    float vertices[] = {
        // vertex-3, texture-2
        -0.5f, -0.5f, -0.5f, 0.0f, 0.0f,
        0.5f, -0.5f, -0.5f, 1.0f, 0.0f,
        0.5f, 0.5f, -0.5f, 1.0f, 1.0f,
        0.5f, 0.5f, -0.5f, 1.0f, 1.0f,
        -0.5f, 0.5f, -0.5f, 0.0f, 1.0f,
        -0.5f, -0.5f, -0.5f, 0.0f, 0.0f,

        // -0.5f, -0.5f, 0.5f, 0.0f, 0.0f,
        // 0.5f, -0.5f, 0.5f, 1.0f, 0.0f,
        // 0.5f, 0.5f, 0.5f, 1.0f, 1.0f,
        // 0.5f, 0.5f, 0.5f, 1.0f, 1.0f,
        // -0.5f, 0.5f, 0.5f, 0.0f, 1.0f,
        // -0.5f, -0.5f, 0.5f, 0.0f, 0.0f,

        // -0.5f, 0.5f, 0.5f, 1.0f, 0.0f,
        // -0.5f, 0.5f, -0.5f, 1.0f, 1.0f,
        // -0.5f, -0.5f, -0.5f, 0.0f, 1.0f,
        // -0.5f, -0.5f, -0.5f, 0.0f, 1.0f,
        // -0.5f, -0.5f, 0.5f, 0.0f, 0.0f,
        // -0.5f, 0.5f, 0.5f, 1.0f, 0.0f,

        // 0.5f, 0.5f, 0.5f, 1.0f, 0.0f,
        // 0.5f, 0.5f, -0.5f, 1.0f, 1.0f,
        // 0.5f, -0.5f, -0.5f, 0.0f, 1.0f,
        // 0.5f, -0.5f, -0.5f, 0.0f, 1.0f,
        // 0.5f, -0.5f, 0.5f, 0.0f, 0.0f,
        // 0.5f, 0.5f, 0.5f, 1.0f, 0.0f,

        // -0.5f, -0.5f, -0.5f, 0.0f, 1.0f,
        // 0.5f, -0.5f, -0.5f, 1.0f, 1.0f,
        // 0.5f, -0.5f, 0.5f, 1.0f, 0.0f,
        // 0.5f, -0.5f, 0.5f, 1.0f, 0.0f,
        // -0.5f, -0.5f, 0.5f, 0.0f, 0.0f,
        // -0.5f, -0.5f, -0.5f, 0.0f, 1.0f,

        // -0.5f, 0.5f, -0.5f, 0.0f, 1.0f,
        // 0.5f, 0.5f, -0.5f, 1.0f, 1.0f,
        // 0.5f, 0.5f, 0.5f, 1.0f, 0.0f,
        // 0.5f, 0.5f, 0.5f, 1.0f, 0.0f,
        // -0.5f, 0.5f, 0.5f, 0.0f, 0.0f,
        // -0.5f, 0.5f, -0.5f, 0.0f, 1.0f
    };

    unsigned int indices[] =
        {
            0, 1, 3, // first triangle
            1, 2, 3  // second triangle
        };

    // 创建顶点缓冲-----------------------------------------------
    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    glGenBuffers(1, &EBO);

    glBindVertexArray(VAO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void *)0);
    // 函数参数：（顶点属性的位置layout， 顶点数据的维数如vec3， 顶点数据类型都是FLOAT， 是否标准化一部FALSE， 步长即两个顶点之间的间隔，位置数据在缓冲中的偏移量
    glEnableVertexAttribArray(0);
    // 启用顶点属性，以顶点属性的位置作为参数

    glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void *)(3 * sizeof(float)));
    glEnableVertexAttribArray(1);

    // 创建纹理-----------------------------------------------

    glGenTextures(1, &texture1);
    glBindTexture(GL_TEXTURE_2D, texture1); // 将纹理对象绑定到GL_TEXTURE_2D

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_MIRRORED_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_MIRRORED_REPEAT);
    // 对横纵坐标单独设置环绕方式为“重复”

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST); // 缩小的纹理过滤方式
    // 可以设置为多级渐变纹理过滤：
    // glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST_MIPMAP_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST); // 放大时的纹理过滤方式

    // 加载纹理

    int width, height, nrChannels;

    stbi_set_flip_vertically_on_load(true);
    unsigned char *data = stbi_load("assets/wall.jpg", &width, &height, &nrChannels, 0);

    if (data)
    {
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, data);
        // 参数为：纹理目标，多级渐变级别0为基本级别，纹理颜色种类，宽，高，0，图源颜色种类，图源数据类型，数据
        glGenerateMipmap(GL_TEXTURE_2D); // 自动生成全部多级渐变纹理
    }
    else
    {
        std::cout << "Failed to load texture1\n";
    }
    stbi_image_free(data); // 释放图像内存

    glGenTextures(1, &texture2);
    glBindTexture(GL_TEXTURE_2D, texture2); // 将纹理对象绑定到GL_TEXTURE_2D

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_MIRRORED_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_MIRRORED_REPEAT);
    // 对横纵坐标单独设置环绕方式为“重复”

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST); // 缩小的纹理过滤方式
    // 可以设置为多级渐变纹理过滤：
    // glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST_MIPMAP_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST); // 放大时的纹理过滤方式

    // 加载纹理

    stbi_set_flip_vertically_on_load(true);
    data = stbi_load("assets/awesomeface.jpg", &width, &height, &nrChannels, 0);

    if (data)
    {
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, data);
        // 参数为：纹理目标，多级渐变级别0为基本级别，纹理颜色种类，宽，高，0，图源颜色种类，图源数据类型，数据
        glGenerateMipmap(GL_TEXTURE_2D); // 自动生成全部多级渐变纹理
    }
    else
    {
        std::cout << "Failed to load texture1\n";
    }
    stbi_image_free(data); // 释放图像内存

    ourShader.setInt("texture1", 0);
    ourShader.setInt("texture2", 1);

    ourShader.use();
}

void render()
{
    glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT); // also clear the depth buffer now!

    // bind textures on corresponding texture units
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, texture1);
    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, texture2);

    // create transformations
    glm::mat4 model = glm::mat4(1.0f); // make sure to initialize matrix to identity matrix first
    glm::mat4 view = glm::mat4(1.0f);
    glm::mat4 projection = glm::mat4(1.0f);
    model = glm::rotate(model, rotation, glm::vec3(0.5f, 1.0f, 0.0f));
    view = glm::translate(view, glm::vec3(0.0f, 0.0f, -3.0f));
    projection = glm::perspective(glm::radians(45.0f), (float)800 / (float)600, 0.1f, 100.0f);
    // retrieve the matrix uniform locations
    unsigned int modelLoc = glGetUniformLocation(ourShader.ID, "model");
    unsigned int viewLoc = glGetUniformLocation(ourShader.ID, "view");
    // pass them to the shaders (3 different ways)
    glUniformMatrix4fv(modelLoc, 1, GL_FALSE, glm::value_ptr(model));
    glUniformMatrix4fv(viewLoc, 1, GL_FALSE, &view[0][0]);
    // note: currently we set the projection matrix each frame, but since the projection matrix rarely changes it's often best practice to set it outside the main loop only once.
    ourShader.setMat4("projection", projection);

    // render box
    glBindVertexArray(VAO);
    glDrawArrays(GL_TRIANGLES, 0, 36);
}

#endif // _OPENGL_H_