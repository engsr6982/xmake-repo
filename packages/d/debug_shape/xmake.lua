package("debug_shape")
    set_license("LGPL-3.0")
    set_homepage("https://github.com/engsr6982/DebugShape")

    -- <Version, CommitHash>
    add_urls("https://github.com/engsr6982/DebugShape.git")
    add_versions("0.1.0", "5b5e740fa130985bc14c615836e2a0dda9a97e7c")

    on_install(function (package)
        import("package.tools.xmake").install(package)
    end)