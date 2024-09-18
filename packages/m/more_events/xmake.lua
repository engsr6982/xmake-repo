package("more_events")
    add_urls("https://github.com/engsr6982/MoreEvents/releases/download/v$(version)/MoreEvents-windows-x64.zip")
    add_versions("0.1.0","912db8cefb1eb72f1dffe8a807ef7dd06427231db3fe2d2513d4748b9471f4c0")

    on_install(function (package)
        os.cp("include", package:installdir())
        os.cp("lib/*.lib", package:installdir("lib"))
    end)
