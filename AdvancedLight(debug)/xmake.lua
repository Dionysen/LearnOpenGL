add_rules("mode.debug")
add_requires("glm", "glfw","assimp", "glew")

target("opengl")
    set_kind("binary")
    add_files("src/*.cpp","../Public/Dependencies/glad/src/glad.c", "../Public/Dependencies/imgui/src/*.cpp")

    add_includedirs("../Public/include", 
                    "../Public/Dependencies/glad/include",
                    "../Public/Dependencies/stb_image/include",
                    "../Public/Dependencies/imgui/include")

    add_packages("glm","glfw","assimp", "glew")