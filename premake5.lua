project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
    systemversion "latest"
    staticruntime "Off"

    targetdir ("../../../Binaries/" .. OutputDir .. "/%{prj.name}")
    objdir ("../../../Intermediates/" .. OutputDir .. "/%{prj.name}")

    files
    {
        "imconfig.h",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_tables.cpp",
        "imgui_widgets.cpp",
        "imgui.cpp",
        "imgui.h",
        "imstb_rectpack.h",
        "imstb_text_edit.h",
        "imstb_truetype.h",
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"