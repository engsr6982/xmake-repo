package("more_events")
    add_urls("https://github.com/engsr6982/MoreEvents/releases/download/v$(version)/MoreEvents-windows-x64.zip")
    add_versions("0.1.0","447f365cc22688148ba623b1d46306b29a5c4de4cd244045f23ea1e57fd56731")

    on_install(function (package)
        os.cp("MoreEvents/include", package:installdir())
        os.cp("MoreEvents/lib/*.lib", package:installdir("lib"))
    end)
