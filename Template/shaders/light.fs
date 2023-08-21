#version 330 core
out vec4 FragColor;

void main()
{
    FragColor = vec4(1.0); // set all 4 vector values to 1.0
    // 光源颜色为白色
    // 光源颜色与物体的颜色相乘，得到反射的颜色，也即能看到的颜色
}