add_rules("mode.debug", "mode.release")
add_requires("glm", "glfw","assimp")

target("opengl")
    set_kind("binary")
    add_files("src/*.cpp","Dependencies/glad/glad.c")
    add_includedirs("include", "Dependencies/glad", "Dependencies/include","shaders")
    add_packages("glm","glfw","assimp")