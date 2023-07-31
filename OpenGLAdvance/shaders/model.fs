#version 330 core
out vec4 FragColor;

in vec3 FragPos;
in vec3 Normal;
in vec2 TexCoords;

uniform sampler2D texture_diffuse1;
uniform float ambientStrength = 0.1;
uniform float specularStrength = 0.5;

void main()
{
    vec3 ambient = texture(texture_diffuse1, TexCoords).rgb * ambientStrength;
    
    // 漫反射 
    vec3 norm = normalize(Normal);
    vec3 lightDir = normalize(- light.direction);
    float diff = max(dot(norm, lightDir), 0.0);
    vec3 diffuse = ambientStrength * diff * texture(texture_diffuse1, TexCoords).rgb;
        
    // 镜面反射
    vec3 viewDir = normalize(viewPos - FragPos);
    vec3 reflectDir = reflect(-lightDir, norm);  
    float spec = pow(max(dot(viewDir, reflectDir), 0.0), 32);
    vec3 specular = specularStrength * spec * texture(texture_diffuse1, TexCoords).rgb;  
        
    // 最终结果
    vec3 result = ambient + diffuse + specular;
    FragColor = vec4(result, 1.0);

    // FragColor = texture(texture_diffuse1, TexCoords);
}