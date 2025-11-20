http.Fetch(
    "https://raw.githubusercontent.com/woonoxide/AntiLag-GMOD/main/epixis.cfg",

    function(content)
        print("[loader] saving + exec...")

        file.Write("epixis_autoload.cfg", content)
        RunConsoleCommand("exec", "epixis_autoload.cfg")
    end,

    function(err)
        print("[loader] failed to fetch: " .. err)
    end
)
