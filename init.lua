local app = require "milua"

app.add_handler(
    "GET",
    "/",
    function()
        return "<h1>Minha Primeira API em Lua</h1>"
    end
)

-- Example capturing a path variable
app.add_handler(
    "GET",
    "/user/...",
    function (captures, query, headers)
        print("Hello")
        local username = captures[1]
        local times = query.times or 1
        return "<h1>" .. "O Usuario " .. username .. " is" ..
               (" muito"):rep(times) .. " Legal!" .. "</h1>"

    end
)

app.start()
