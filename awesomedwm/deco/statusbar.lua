-- Standard awesome library
local gears = require("gears")
local awful     = require("awful")

-- Wibox handling library
local wibox = require("wibox")

-- Custom Local Library: Common Functional Decoration
local deco = {
  wallpaper = require("deco.wallpaper"),
  taglist   = require("deco.taglist"),
  tasklist  = require("deco.tasklist")
}

local taglist_buttons  = deco.taglist()
local tasklist_buttons = deco.tasklist()

local _M = {}

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- {{{ Wibar
-- Create a textclock widget
mytextclock = wibox.widget.textclock()
mytextclock:connect_signal("button::press",
    function(_, _, _, button)
       if button == 1 then cw.toggle() end
    end)

-- Spacer
   spacer = wibox.widget.textbox()
   spacer:set_text(' ')
--
--
awful.screen.connect_for_each_screen(function(s)
  -- Wallpaper
  set_wallpaper(s)

  -- Create a promptbox for each screen
  s.mypromptbox = awful.widget.prompt()

  -- Create an imagebox widget which will contain an icon indicating which layout we're using.
  -- We need one layoutbox per screen.
  s.mylayoutbox = awful.widget.layoutbox(s)
  s.mylayoutbox:buttons(gears.table.join(
    awful.button({ }, 1, function () awful.layout.inc( 1) end),
    awful.button({ }, 3, function () awful.layout.inc(-1) end),
    awful.button({ }, 4, function () awful.layout.inc( 1) end),
    awful.button({ }, 5, function () awful.layout.inc(-1) end)
  ))

  -- Create a taglist widget
  s.mytaglist = awful.widget.taglist {
    screen  = s,
    filter  = awful.widget.taglist.filter.all,
    buttons = taglist_buttons
  }

  -- Create a tasklist widget
  s.mytasklist = awful.widget.tasklist {
    screen  = s,
    filter  = awful.widget.tasklist.filter.currenttags,
    buttons = tasklist_buttons
  }
-- user widget
  local battery_widget = require("awesome-wm-widgets.bat-widget.battery-widget")
  local BAT0 = battery_widget { adapter = "BAT0", ac = "AC"  }
  local calendar_widget = require("awesome-wm-widgets.calendar-widget.calendar")
  local cw = calendar_widget ({theme = 'light', placement = 'top_right'})
-- Create the wibox
  s.mywibox = awful.wibar({ position = "top", screen = s })

  -- Add widgets to the wibox
  s.mywibox:setup {
      layout = wibox.layout.align.horizontal,
    { -- Left widgets
      layout = wibox.layout.fixed.horizontal,
      spacer,
      RC.launcher,
      spacer,
      s.mytaglist,
      spacer,
--    s.mypromptbox,
    },
    s.mytasklist, -- Middle widget
    { -- Right widgets
      layout = wibox.layout.fixed.horizontal,
      spacer,
      BAT0,
      mytextclock,
      wibox.widget.systray(),
      spacer,
--      s.mylayoutbox,
      spacer,
    },
  }
end)
-- }}}
