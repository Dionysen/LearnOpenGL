#version 330 core
out vec4 FragColor;

in vec3 Normal; // 法线
in vec3 FragPos; // 传入片段位置
in vec2 TexCoords;

struct Material {
    sampler2D diffuse;
    sampler2D specular;
    float shininess;
};

struct Light {
    vec3 position;
    vec3 ambient;
    vec3 diffuse;
    vec3 specular;
};

uniform sampler2D texture1;
uniform vec3 viewPos;   // 观察者坐标，由摄像机的位置传来
uniform Material material;
uniform Light light;

void main()
{
     // ambient，氛围光
    float ambientStrength = 0.1; // 设置强度
    vec3 ambient = light.ambient * vec3(texture(material.diffuse, TexCoords)); // 用氛围光的强度乘以光的颜色
  	
    // diffuse，漫反射
    vec3 norm = normalize(Normal);  // 向量标准化
    vec3 lightDir = normalize(light.position - FragPos); // 光的方向是光的出发点（光源）减去目的地（物体片段）
    float diff = max(dot(norm, lightDir), 0.0);
    vec3 diffuse = light.diffuse * diff * texture(material.diffuse, TexCoords).rgb; // 点乘法向量和光的方向向量，结果值乘以光的颜色，两个角度越大，漫反射分量diffuse就越小，小于零时用零代替

    // 当计算光照时我们通常不关心一个向量的模长或它的位置，我们只关心它们的方向。所以，几乎所有的计算都使用单位向量完成，因为这简化了大部分的计算（比如点乘）。所以当进行光照计算时，确保你总是对相关向量进行标准化，来保证它们是真正地单位向量。忘记对向量进行标准化是一个十分常见的错误。            

    // specular，镜面反射
    float specularStrength = 0.5; // 镜面强度
    vec3 viewDir = normalize(viewPos - FragPos); // 标准化光线方向
    vec3 reflectDir = reflect(-lightDir, norm);   // 计算反向方向，第一个参数是片段指向光源，所以取反
    float spec = pow(max(dot(viewDir, reflectDir), 0.0), material.shininess);  // 32次幂是反光度，越大高光点越小
    vec3 specular = light.specular * spec *texture(material.specular,TexCoords).rgb;
        
    vec3 result = ambient + diffuse + specular;  // 将各个分量相加，乘以物体的颜色，最终得到光照射到物体上反射的颜色
    FragColor = vec4(result, 1.0);

}