package("more_events")
    set_homepage("https://github.com/engsr6982/MoreEvents")
    set_license("GPL-3.0")

    add_urls("https://github.com/engsr6982/MoreEvents/releases/download/v$(version)/MoreEvents-windows-x64.zip", "https://github.com/engsr6982/MoreEvents.git")
    add_versions("0.1.0","912db8cefb1eb72f1dffe8a807ef7dd06427231db3fe2d2513d4748b9471f4c0")
    -- add_versions("0.1.1","a699f1bec06947e9431494fd3ec9c23f6a3c1358f27f71fa8e3daaa328629e34")
    add_versions("0.1.2","37deb0c6036bbf363c21673f9a9ed2be5d17c8d76362c794f3c931e6550bbfda")
    add_versions("0.2.0","89d71fbbf82a5c1ee369be7b3d45b71e6bd1b67e5d60fb5105032e541d819138")
    add_versions("0.2.1", "8a87d11315394fa40acbf1a518dce2424842492d0b2c7fc51d280f7e929fd660")

    on_install(function (package)
        os.cp("include", package:installdir())
        os.cp("lib/*.lib", package:installdir("lib"))
    end)
