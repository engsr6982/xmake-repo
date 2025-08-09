package("v8wrap")
    set_license("Apache-2.0")
    set_homepage("https://github.com/engsr6982/v8wrap")

    -- <Version, CommitHash>
    add_urls("https://github.com/engsr6982/v8wrap.git")
    add_versions("0.1.0", "0e1e780c7df72a55fd3619653a99cfe230d67c41")

    on_install(function (package)
        import("package.tools.xmake").install(package)
    end)