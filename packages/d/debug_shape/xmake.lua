package("debug_shape")
    set_license("LGPL-3.0")
    set_homepage("https://github.com/engsr6982/DebugShape")

    -- <Version, CommitHash>
    add_urls("https://github.com/engsr6982/DebugShape.git")
    add_versions("0.1.0", "5eb94404f0d8307bf698ae23e9a9d77415aff87e")

    on_install(function (package)
        import("package.tools.xmake").install(package)
    end)