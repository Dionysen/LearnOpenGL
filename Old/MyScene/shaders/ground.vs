#version 330 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal; 

out vec3 FragPos;    // 片段位置
out vec3 Normal;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
uniform mat3 normalMatrix; //法线矩阵，在着色器之外用cpu计算

void main()
{
    gl_Position = projection * view * model * vec4(aPos, 1.0);
    Normal = normalMatrix * aNormal;
    FragPos = vec3(model * vec4(aPos, 1.0)); 
}