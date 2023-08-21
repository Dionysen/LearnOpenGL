#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal;
layout (location = 2) in vec2 aTexCoords;

out vec3 FragPos;    // 片段位置
out vec3 Normal;
out vec2 TexCoords;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
uniform mat3 normalMatrix; //法线矩阵，在着色器之外用cpu计算

void main()
{
    Normal = normalMatrix * aNormal;
    FragPos = vec3(model * vec4(aPos, 1.0)); 
    TexCoords = aTexCoords;     
    gl_Position = projection * view * model * vec4(aPos, 1.0);
}