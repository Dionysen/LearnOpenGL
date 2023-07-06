{
    files = {
        [[src\main.cpp]]
    },
    values = {
        [[C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.36.32532\bin\HostX64\x64\cl.exe]],
        {
            "-nologo",
            "-Zi",
            "-FS",
            [[-Fdbuild\windows\x64\debug\compile.opengl.pdb]],
            "-Od",
            "-Iinclude",
            [[-IDependencies\include\glad]],
            [[-IDependencies\include]],
            "-Ishaders",
            "-DGLFW_INCLUDE_NONE",
            "/EHsc",
            "-external:W0",
            [[-external:IC:\Users\zhaoys-c\AppData\Local\.xmake\packages\g\glm\0.9.9+8\8335bab7c0314ab9921440de58961aac\include]],
            "-external:W0",
            [[-external:IC:\Users\zhaoys-c\AppData\Local\.xmake\packages\g\glfw\3.3.8\d12e591897c9472fb7d3725fa5811388\include]]
        }
    },
    depfiles_cl_json = "{\
    \"Version\": \"1.2\",\
    \"Data\": {\
        \"Source\": \"c:\\\\users\\\\zhaoys-c\\\\documents\\\\learnopengl\\\\myscene\\\\src\\\\main.cpp\",\
        \"ProvidedModule\": \"\",\
        \"Includes\": [\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\iostream\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\yvals_core.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\vcruntime.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\sal.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\concurrencysal.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\vadefs.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\xkeycheck.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\istream\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\ostream\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\ios\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\xlocnum\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\climits\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\limits.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\cmath\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\yvals.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\crtdbg.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\vcruntime_new_debug.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\vcruntime_new.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\crtdefs.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\use_ansi.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\cstdlib\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\math.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_math.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\stdlib.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_malloc.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_search.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\stddef.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wstdlib.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\xtr1common\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\intrin0.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\intrin0.inl.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\cstdio\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\stdio.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wstdio.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_stdio_config.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\iterator\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\iosfwd\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\cstring\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\string.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_memory.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_memcpy_s.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\errno.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\vcruntime_string.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wstring.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\cwchar\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\wchar.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wconio.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wctype.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wdirect.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wio.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_share.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wprocess.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wtime.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\sys\\\\stat.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\sys\\\\types.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\xstddef\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\cstddef\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\initializer_list\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\xutility\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\__msvc_iter_core.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\utility\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\type_traits\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\cstdint\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\stdint.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\streambuf\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\xiosbase\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\share.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\system_error\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\__msvc_system_error_abi.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\cerrno\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\stdexcept\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\exception\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\malloc.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\vcruntime_exception.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\eh.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_terminate.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\xstring\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\xmemory\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\limits\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\cfloat\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\float.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\isa_availability.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\new\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\xatomic.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\__msvc_sanitizer_annotate_container.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\xcall_once.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\xerrc.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\atomic\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\xthreads.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\xtimec.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\ctime\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\time.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\xlocale\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\memory\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\typeinfo\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\vcruntime_typeinfo.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\xfacet\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\xlocinfo\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\__msvc_xlocinfo_types.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\cctype\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\ctype.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\clocale\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\locale.h\",\
            \"c:\\\\users\\\\zhaoys-c\\\\documents\\\\learnopengl\\\\myscene\\\\dependencies\\\\include\\\\glad\\\\glad.h\",\
            \"c:\\\\users\\\\zhaoys-c\\\\documents\\\\learnopengl\\\\myscene\\\\dependencies\\\\include\\\\khr\\\\khrplatform.h\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glfw\\\\3.3.8\\\\d12e591897c9472fb7d3725fa5811388\\\\include\\\\glfw\\\\glfw3.h\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\glm.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\_fixes.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\setup.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\cassert\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\assert.h\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\simd\\\\platform.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\cassert\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\assert.h\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\fwd.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\qualifier.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\setup.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\vec2.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_bool2.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_vec2.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_vec2.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\compute_vector_relational.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\setup.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_bool2_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_float2.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_float2_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_double2.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_double2_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_int2.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_int2_sized.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\scalar_int_sized.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\setup.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_uint2.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_uint2_sized.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\scalar_uint_sized.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\setup.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\vec3.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_bool3.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_vec3.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_vec3.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_bool3_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_float3.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_float3_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_double3.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_double3_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_int3.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_int3_sized.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_uint3.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_uint3_sized.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\vec4.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_bool4.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_vec4.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_vec4.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_bool4_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_float4.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_float4_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_double4.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_double4_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\setup.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_int4.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_int4_sized.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_uint4.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_uint4_sized.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\mat2x2.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_double2x2.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_mat2x2.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_mat2x2.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\matrix.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\setup.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\mat2x3.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_double2x3.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_mat2x3.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_mat2x3.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_double2x3_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_float2x3.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_float2x3_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\mat2x4.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_double2x4.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_mat2x4.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_mat2x4.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_double2x4_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_float2x4.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_float2x4_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\mat3x2.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_double3x2.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_mat3x2.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_mat3x2.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_double3x2_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_float3x2.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_float3x2_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\mat3x3.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_double3x3.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_mat3x3.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_mat3x3.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_double3x3_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_float3x3.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_float3x3_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\mat3x4.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_double3x4.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_mat3x4.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_mat3x4.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_double3x4_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_float3x4.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_float3x4_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\mat4x2.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_double4x2.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_mat4x2.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_mat4x2.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_double4x2_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_float4x2.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_float4x2_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\mat4x3.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_double4x3.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_mat4x3.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_mat4x3.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_double4x3_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_float4x3.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_float4x3_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\mat4x4.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_double4x4.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_mat4x4.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_mat4x4.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_double4x4_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_float4x4.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_float4x4_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\func_matrix.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\geometric.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\func_geometric.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\exponential.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_vec1.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_vec1.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\func_exponential.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\vector_relational.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\setup.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\func_vector_relational.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\_vectorize.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\cassert\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\assert.h\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\common.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\_fixes.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\func_common.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\compute_common.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\setup.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_double2x2_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_float2x2.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_float2x2_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\trigonometric.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\setup.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\func_trigonometric.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\packing.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\func_packing.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_half.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\setup.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_half.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\integer.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\func_integer.inl\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\intrin.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\setjmp.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\immintrin.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\wmmintrin.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\nmmintrin.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\smmintrin.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\tmmintrin.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\pmmintrin.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\emmintrin.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\xmmintrin.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\mmintrin.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\zmmintrin.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\ammintrin.h\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\gtc\\\\matrix_transform.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_projection.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\gtc\\\\constants.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\scalar_constants.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\setup.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\scalar_constants.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\gtc\\\\constants.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_projection.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_clip_space.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_clip_space.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_transform.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\matrix_transform.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\gtc\\\\matrix_transform.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\gtc\\\\type_ptr.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\gtc\\\\quaternion.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_relational.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_relational.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_float.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\setup.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\quaternion_common.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\quaternion_geometric.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\quaternion_geometric.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\quaternion_common.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\quaternion_float.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_quat.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\quaternion_relational.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\quaternion_relational.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\type_quat.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\quaternion_float_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\quaternion_double.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\quaternion_double_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\quaternion_trigonometric.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\quaternion_trigonometric.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\quaternion_transform.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\quaternion_transform.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\gtc\\\\quaternion.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\gtc\\\\epsilon.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\detail\\\\setup.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\gtc\\\\epsilon.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\gtc\\\\vec1.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_bool1.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_bool1_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_float1.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_float1_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_double1.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_double1_precision.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_int1.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_int1_sized.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_uint1.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\ext\\\\vector_uint1_sized.hpp\",\
            \"c:\\\\users\\\\zhaoys-c\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\g\\\\glm\\\\0.9.9+8\\\\8335bab7c0314ab9921440de58961aac\\\\include\\\\glm\\\\gtc\\\\type_ptr.inl\",\
            \"c:\\\\users\\\\zhaoys-c\\\\documents\\\\learnopengl\\\\myscene\\\\dependencies\\\\include\\\\stb_image.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\stdarg.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\math.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\assert.h\",\
            \"c:\\\\users\\\\zhaoys-c\\\\documents\\\\learnopengl\\\\myscene\\\\include\\\\camera.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\vector\",\
            \"c:\\\\users\\\\zhaoys-c\\\\documents\\\\learnopengl\\\\myscene\\\\include\\\\shader.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\string\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\fstream\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\sstream\"\
        ],\
        \"ImportedModules\": [],\
        \"ImportedHeaderUnits\": []\
    }\
}"
}