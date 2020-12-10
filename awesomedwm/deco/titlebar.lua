-- Standard awesome library
local gears = require("gears")
local awful = require("awful")

-- Widget and layout library
local wibox = require("wibox")

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- Add a titlebar if titlebars_enabled is set to true in the rules.
client.connect_signal("request::titlebars", function(c)
    -- buttons for the titlebar
    local buttons = {
        awful.button({ }, 1, function()
            c:activate { context = "titlebar", action = "mouse_move"  }
        end),
        awful.button({ }, 3, function()
            c:activate { context = "titlebar", action = "mouse_resize"}
        end),
    }
    local top_titlebar = awful.titlebar(c, {
            height    = 20,
            bg_normal = '#000000',
            position = 'left',

    })

    top_titlebar : setup {
         { -- Top
              awful.titlebar.widget.closebutton    (c),
              awful.titlebar.widget.minimizebutton (c),
              awful.titlebar.widget.maximizedbutton(c),
              awful.titlebar.widget.stickybutton   (c),
              awful.titlebar.widget.ontopbutton    (c),
              awful.titlebar.widget.floatingbutton (c),
              layout = wibox.layout.fixed.vertical()
         },
           layout = wibox.layout.flex.vertical
    }
end)
