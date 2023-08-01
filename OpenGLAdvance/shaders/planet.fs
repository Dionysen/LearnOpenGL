#version 330 core
out vec4 FragColor;

struct Material {  // 材质结构体
    sampler2D diffuse;
    // sampler2D specular;
    float shininess;
};

struct DirLight { // 定向光
    vec3 direction;
	
    vec3 ambient;
    vec3 diffuse;
    vec3 specular;
};

in vec3 FragPos;
in vec3 Normal;
in vec2 TexCoords;

uniform vec3 viewPos;
uniform DirLight dirLight; // 定向光，模拟太阳光，无衰减
uniform Material material;

void main()
{    
    // properties
    vec3 norm = normalize(Normal);
    vec3 viewDir = normalize(viewPos - FragPos);

    vec3 lightDir = normalize(-dirLight.direction);
    // diffuse shading
    float diff = max(dot(norm, lightDir), 0.0);
    // specular shading
    vec3 reflectDir = reflect(-lightDir, norm);
    float spec = pow(max(dot(viewDir, reflectDir), 0.0), material.shininess);
    //  combine results
    vec3 ambient = dirLight.ambient * vec3(texture(material.diffuse, TexCoords));
    vec3 diffuse = dirLight.diffuse * diff * vec3(texture(material.diffuse, TexCoords));
    vec3 specular = dirLight.specular * spec * vec3(texture(material.diffuse, TexCoords));

    vec3 result = ambient + diffuse + specular;
    FragColor = vec4(result, 1.0);
}
