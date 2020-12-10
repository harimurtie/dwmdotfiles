-- Standard awesome library
local awful = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup").widget
-- Theme handling library
local beautiful = require("beautiful") -- for awesome.icon

local M = {}  -- menu
local _M = {} -- module

-- reading
-- https://awesomewm.org/apidoc/popups%20and%20bars/awful.menu.html

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- This is used later as the default terminal and editor to run.
-- local terminal = "xfce4-terminal"
local terminal = RC.vars.terminal

-- Variable definitions
-- This is used later as the default terminal and editor to run.
local editor = os.getenv("EDITOR") or "nano"
local editor_cmd = terminal .. " -e " .. editor

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

M.awesome = {
  { "hotkeys", function()
      hotkeys_popup.show_help(nil, awful.screen.focused())
    end },
  { "terminal", "st" },
  { "disabledevice", "/home/damez/Documents/scripts/temporary-disable-device.zsh" },
  { "refresh", awesome.restart },
  { "logout", function() awesome.quit() end },
  { "reboot", "/home/damez/Documents/scripts/reboot" },
  { "shutdown", "/home/damez/Documents/scripts/shutdown" }
}

M.favorite = {
  { "escape", "/home/damez/Documents/scripts/escape" },
  { "file manager", "pcmanfm-qt" },
  { "terminal", "st" },
  { "browser", "brave" },
  { "qutebrowser", "qutebrowser" },
  { "email", "sylpheed" },
  { "libreoffice", "libreoffice" },
  { "olive", "olive-editor" },
  { "telegram", "telegram-desktop" },
  { "drawing", "drawing" },
  { "youtube", "/home/damez/Documents/scripts/youtubes" },
  { "video", "smplayer" },
  { "musik", "audacious" },
  { "audio setting", "pavucontrol" },
  { "task manager", "lxtask" },
  { "power manager", "xfce4-power-manager-settings" },
  { "tentang", "hardinfo" }
}

M.direktori = {
  { "desktop", "pcmanfm-qt /home/damez/Desktop" },
  { "home", "pcmanfm-qt /home/damez/" },
  { "dokumen", "pcmanfm-qt /home/damez/Documents" },
  { "gambar", "pcmanfm-qt /home/damez/Pictures" },
  { "video", "pcmanfm-qt /home/damez/Videos" }
}

M.TUI = {
  { "file manager", "/home/damez/Documents/scripts/rangers" },
  { "terminal", "xfce4-terminal" },
  { "audio settings", "/home/damez/Documents/scripts/pulsemixers" },
  { "connection manager", "/home/damez/Documents/scripts/nmtuis" },
  { "task manager", "/home/damez/Documents/scripts/ytops" },
  { "youtube", "/home/damez/Documents/scripts/youtubes" },
}

M.network_main = {
  { "wicd-curses", "wicd-curses" },
  { "wicd-gtk", "wicd-gtk" }
}

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function _M.get()

  -- Main Menu
  local menu_items = {

    { "   aplikasi", M.favorite, beautiful.awesome_subicon },
    { "   direktori", M.direktori, },
    { "   TUI", M.TUI, },
    { "   awesome", M.awesome, }
  }

  return menu_items
end

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

return setmetatable({}, { __call = function(_, ...) return _M.get(...) end })
