#version 330 core
out vec4 FragColor;

in vec3 Normal; // 法线
in vec3 FragPos; // 传入片段位置
in vec2 TexCoords; // 纹理坐标

struct Material {
    sampler2D diffuse;
    sampler2D specular;
    float shininess;
};

struct Light {
    vec3 position;
    // vec3 direction;
    
    vec3 ambient;       
    vec3 diffuse;
    vec3 specular;
    
    float constant;     // 常数项
    float linear;       // 一次项
    float quadratic;    // 二次项
};

uniform sampler2D texture1;
uniform vec3 viewPos;   // 观察者坐标，由摄像机的位置传来
uniform Material material;
uniform Light light;

void main()
{
     // ambient，氛围光
    float ambientStrength = 0.1; // 设置强度
    vec3 ambient = light.ambient * texture(material.diffuse, TexCoords).rgb; // 用氛围光的强度乘以光的颜色
  	
    // diffuse，漫反射
    vec3 norm = normalize(Normal);  // 向量标准化
    // vec3 lightDir = normalize(light.position - FragPos); 
    vec3 lightDir = normalize(light.position - FragPos);
    float diff = max(dot(norm, lightDir), 0.0);
    vec3 diffuse = light.diffuse * diff * texture(material.diffuse, TexCoords).rgb;

    // specular，镜面反射
    float specularStrength = 0.5; // 镜面强度
    vec3 viewDir           = normalize(viewPos - FragPos); // 标准化光线方向
    vec3 reflectDir        = reflect(-lightDir, norm);   // 计算反向方向，第一个参数是片段指向光源，所以取反
    float spec             = pow(max(dot(viewDir, reflectDir), 0.0), material.shininess);  // 32次幂是反光度，越大高光点越小
    vec3 specular          = light.specular * spec * texture(material.specular, TexCoords).rgb;

    float distance    = length(light.position - FragPos);  // 计算光源到物体表面的距离
    float attenuation = 1.0 / (light.constant + light.linear * distance + 
                light.quadratic * (distance * distance));  // 计算衰减的比例

    // 然后让所有的光都乘以这个比例
    ambient  *= attenuation; 
    diffuse  *= attenuation;
    specular *= attenuation;
    
    vec3 result = ambient + diffuse + specular;  // 将各个分量相加，乘以物体的颜色，最终得到光照射到物体上反射的颜色
    FragColor   = vec4(result, 1.0);

}