package("imgui_color_text_edit_r")
    set_homepage("https://github.com/goossens/ImGuiColorTextEdit")
    set_description("Colorizing text editor for ImGui")
    set_license("MIT")

    add_urls("https://github.com/goossens/ImGuiColorTextEdit.git")
    add_versions("2025.3.27", "81afc72cbe1b18384c0fe09711956d52e0c49fd4")

    add_deps("imgui")

    on_install("linux", "windows", "mingw", function (package)
        io.writefile("xmake.lua", [[
            add_rules("mode.debug", "mode.release")
            set_languages("cxx17")
            add_requires("imgui")
            add_packages("imgui")
            target("imgui_color_text_edit_r")
                set_kind("$(kind)")
                add_files("*.cpp")
                add_headerfiles("*.h")
                if is_plat("windows") and is_kind("shared") then
                    add_rules("utils.symbols.export_all", {export_classes = true})
                end
        ]])
        import("package.tools.xmake").install(package)
    end)
