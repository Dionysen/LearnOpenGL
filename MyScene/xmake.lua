add_rules("mode.debug", "mode.release")
add_requires("glm","glfw")

target("opengl")
    set_kind("binary")
    add_files("src/*.cpp","src/*.c")
    add_includedirs("include", "Dependencies/include/glad", "Dependencies/include","shaders")
    add_packages("glm","glfw")

    -- add_links是链接库 .lib
    -- add_packages是添加包，一般是头文件和一些其他的