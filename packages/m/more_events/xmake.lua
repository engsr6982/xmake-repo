package("more_events")
    add_urls("https://github.com/engsr6982/MoreEvents/releases/download/v$(version)/MoreEvents-windows-x64.zip")
    add_versions("0.1.0","c5562979064c74e3b5b81b7feb12c2ecaed8e8deb4aa3be6528c4fc65ff424db")

    on_install(function (package)
        os.cp("include", package:installdir())
        os.cp("lib/*.lib", package:installdir("lib"))
    end)
