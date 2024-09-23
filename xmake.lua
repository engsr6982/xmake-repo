package("pland")
    set_homepage("https://github.com/engsr6982/PLand")

    add_urls("https://github.com/engsr6982/PLand/releases/download/v$(version)/SDK-PLand.zip", "https://github.com/engsr6982/PLand.git")
    add_versions("0.0.3","0e63d412242e61f20194fb3a47541e39bf42c0a04ee38edc135c868cf9d8c13d")

    on_install(function (package)
        os.cp("include", package:installdir())
        os.cp("lib/*.lib", package:installdir("lib"))
    end)
