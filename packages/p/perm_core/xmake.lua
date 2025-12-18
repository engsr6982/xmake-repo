package("perm_core")
    set_license("LGPL-3.0")
    set_homepage("https://github.com/engsr6982/PermCore")

    -- <Version, CommitHash>
    add_urls("https://github.com/engsr6982/PermCore.git")

    on_install(function (package)
        import("package.tools.xmake").install(package)
    end)