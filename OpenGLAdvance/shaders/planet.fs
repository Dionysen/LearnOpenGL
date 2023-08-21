#version 330 core
out vec4 FragColor;

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
uniform DirLight light; // 定向光，模拟太阳光，无衰减
uniform sampler2D texture_diffuse1;

void main()
{    
    vec3 normal = normalize(Normal);
    vec3 viewDir = normalize(viewPos - FragPos);
    

    vec3 lightDir = normalize(-light.direction);
    // diffuse shading
    float diff = max(dot(normal, lightDir), 0.0);
    // specular shading
    vec3 reflectDir = reflect(-lightDir, normal);
    float spec = pow(max(dot(viewDir, reflectDir), 0.0), 32.0);
    // combine results
    vec3 ambient = light.ambient * vec3(texture(texture_diffuse1, TexCoords));
    vec3 diffuse = light.diffuse * diff * vec3(texture(texture_diffuse1, TexCoords));
    vec3 specular = light.specular * spec * vec3(texture(texture_diffuse1, TexCoords));

    vec3 result = ambient + diffuse + specular;
    FragColor = vec4(result, 1.0);
}