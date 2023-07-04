#ifndef _OPENGL_H_
#define _OPENGL_H_

#pragma once

#include <glad.h>
#include <iostream>
#include <GLFW/glfw3.h>

#include <GL/gl.h>

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

#define STB_IMAGE_IMPLEMENTATION
#include "shader.h"
#include "stb_image.h"
#include "camera.h"

// settings
const unsigned int SCR_WIDTH = 1100;
const unsigned int SCR_HEIGHT = 800;

// shader
Shader ourShader;

// buffer
unsigned int VAO, VBO, EBO;
// texture
unsigned int texture1, texture2;

// mix and rotate
float mixValue = 0.0f;
float rotation = 1.0f;

// camera
Camera camera(glm::vec3(0.0f, 0.0f, 3.0f));
float lastX = SCR_WIDTH / 2.0f;
float lastY = SCR_HEIGHT / 2.0f;
bool firstMouse = true;

// timing
float deltaTime = 0.0f;
float lastFrame = 0.0f;

// cube
glm::vec3 cubePositions[] = {
    glm::vec3(0.0f, 0.0f, 0.0f),
    glm::vec3(2.0f, 5.0f, -15.0f),
    glm::vec3(-1.5f, -2.2f, -2.5f),
    glm::vec3(-3.8f, -2.0f, -12.3f),
    glm::vec3(2.4f, -0.4f, -3.5f),
    glm::vec3(-1.7f, 3.0f, -7.5f),
    glm::vec3(1.3f, -2.0f, -2.5f),
    glm::vec3(1.5f, 2.0f, -2.5f),
    glm::vec3(1.5f, 0.2f, -1.5f),
    glm::vec3(-1.3f, 1.0f, -1.5f)};

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

      -0.5f, -0.5f, 0.5f, 0.0f, 0.0f,
      0.5f, -0.5f, 0.5f, 1.0f, 0.0f,
      0.5f, 0.5f, 0.5f, 1.0f, 1.0f,
      0.5f, 0.5f, 0.5f, 1.0f, 1.0f,
      -0.5f, 0.5f, 0.5f, 0.0f, 1.0f,
      -0.5f, -0.5f, 0.5f, 0.0f, 0.0f,

      -0.5f, 0.5f, 0.5f, 1.0f, 0.0f,
      -0.5f, 0.5f, -0.5f, 1.0f, 1.0f,
      -0.5f, -0.5f, -0.5f, 0.0f, 1.0f,
      -0.5f, -0.5f, -0.5f, 0.0f, 1.0f,
      -0.5f, -0.5f, 0.5f, 0.0f, 0.0f,
      -0.5f, 0.5f, 0.5f, 1.0f, 0.0f,

      0.5f, 0.5f, 0.5f, 1.0f, 0.0f,
      0.5f, 0.5f, -0.5f, 1.0f, 1.0f,
      0.5f, -0.5f, -0.5f, 0.0f, 1.0f,
      0.5f, -0.5f, -0.5f, 0.0f, 1.0f,
      0.5f, -0.5f, 0.5f, 0.0f, 0.0f,
      0.5f, 0.5f, 0.5f, 1.0f, 0.0f,

      -0.5f, -0.5f, -0.5f, 0.0f, 1.0f,
      0.5f, -0.5f, -0.5f, 1.0f, 1.0f,
      0.5f, -0.5f, 0.5f, 1.0f, 0.0f,
      0.5f, -0.5f, 0.5f, 1.0f, 0.0f,
      -0.5f, -0.5f, 0.5f, 0.0f, 0.0f,
      -0.5f, -0.5f, -0.5f, 0.0f, 1.0f,

      -0.5f, 0.5f, -0.5f, 0.0f, 1.0f,
      0.5f, 0.5f, -0.5f, 1.0f, 1.0f,
      0.5f, 0.5f, 0.5f, 1.0f, 0.0f,
      0.5f, 0.5f, 0.5f, 1.0f, 0.0f,
      -0.5f, 0.5f, 0.5f, 0.0f, 0.0f,
      -0.5f, 0.5f, -0.5f, 0.0f, 1.0f};

  unsigned int indices[] = {
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
  glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices,
               GL_STATIC_DRAW);

  glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void *)0);
  // 函数参数：（顶点属性的位置layout， 顶点数据的维数如vec3，
  // 顶点数据类型都是FLOAT， 是否标准化一部FALSE，
  // 步长即两个顶点之间的间隔，位置数据在缓冲中的偏移量
  glEnableVertexAttribArray(0);
  // 启用顶点属性，以顶点属性的位置作为参数

  glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float),
                        (void *)(3 * sizeof(float)));
  glEnableVertexAttribArray(1);

  // 创建纹理-----------------------------------------------

  glGenTextures(1, &texture1);
  glBindTexture(GL_TEXTURE_2D, texture1);
  // set the texture wrapping parameters
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
  // set texture filtering parameters
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
  // load image, create texture and generate mipmaps
  int width, height, nrChannels;
  stbi_set_flip_vertically_on_load(true); // tell stb_image.h to flip loaded texture's on the y-axis.
  unsigned char *data = stbi_load("assets/wall.jpg", &width, &height, &nrChannels, 0);
  if (data)
  {
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, data);
    glGenerateMipmap(GL_TEXTURE_2D);
  }
  else
  {
    std::cout << "Failed to load texture" << std::endl;
  }
  stbi_image_free(data);

  glGenTextures(1, &texture2);
  glBindTexture(GL_TEXTURE_2D, texture2); // 将纹理对象绑定到GL_TEXTURE_2D

  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
  // 对横纵坐标单独设置环绕方式为“重复”

  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER,
                  GL_LINEAR); // 缩小的纹理过滤方
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER,
                  GL_LINEAR); // 放大时的纹理过滤方式
  // 加载纹理
  // stbi_set_flip_vertically_on_load(true);
  data = stbi_load("assets/awesomeface.png", &width, &height, &nrChannels, 0);
  if (data)
  {
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGBA,
                 GL_UNSIGNED_BYTE, data);
    // 参数为：纹理目标，多级渐变级别0为基本级别，纹理颜色种类，宽，高，0，图源颜色种类，图源数据类型，数据
    glGenerateMipmap(GL_TEXTURE_2D); // 自动生成全部多级渐变纹理
  }
  else
  {
    std::cout << "Failed to load texture2\n";
  }
  stbi_image_free(data); // 释放图像内存

  ourShader.use();
  ourShader.setInt("texture1", 0);
  ourShader.setInt("texture2", 1);
}

void render()
{

  glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
  glClear(GL_COLOR_BUFFER_BIT |
          GL_DEPTH_BUFFER_BIT); // also clear the depth buffer now!

  // bind textures on corresponding texture units
  glActiveTexture(GL_TEXTURE0);
  glBindTexture(GL_TEXTURE_2D, texture1);
  glActiveTexture(GL_TEXTURE1);
  glBindTexture(GL_TEXTURE_2D, texture2);

  ourShader.use();

  ourShader.setFloat("mixValue", mixValue);
  // view
  glm::mat4 view = glm::mat4(1.0f);
  view = camera.GetViewMatrix();
  ourShader.setMat4("view", view);

  // camera
  glm::mat4 projection = glm::mat4(1.0f);
  projection = glm::perspective(glm::radians(camera.Zoom), (float)SCR_WIDTH / (float)SCR_HEIGHT, 0.1f, 100.0f);
  ourShader.setMat4("projection", projection);

  // model
  glBindVertexArray(VAO);
  for (unsigned int i = 0; i < 10; i++)
  {
    glm::mat4 model = glm::mat4(1.0f);
    model = glm::translate(model, cubePositions[i]);
    float angle = 20.0f * i;
    model = glm::rotate(model, glm::radians(angle), glm::vec3(1.0f, 0.3f, 0.5f));
    if (i % 3 == 0)
      angle = glfwGetTime() * 25.0f;
    // model = glm::rotate(model, (float)glfwGetTime() * glm::radians(50.0f), glm::vec3(0.5f, 1.0f, 0.0f));
    model = glm::rotate(model, glm::radians(angle), glm::vec3(0.5f, 1.0f, 0.0f));
    ourShader.setMat4("model", model);

    glDrawArrays(GL_TRIANGLES, 0, 36);
  }

  // glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
  // glDrawArrays(GL_TRIANGLES, 0, 36);
}

#endif // _OPENGL_H_