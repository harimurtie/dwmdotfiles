-- Standard awesome library
local awful = require("awful")

local _M = {}

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function _M.get ()
  local tags = {}

  local tagpairs = {
--  names  = { "term", "net", "edit", "place", 5, 6, 7, 8, 9 },
    names  = {
      "term", "net", "work",
      "mixxx", "plug",
      "misc",  },

    layout = {
      RC.layouts[1], RC.layouts[1], RC.layouts[1],
      RC.layouts[1], RC.layouts[1], RC.layouts[1],
      RC.layouts[1], RC.layouts[1], RC.layouts[1]
    }
  }

  awful.screen.connect_for_each_screen(function(s)
    -- Each screen has its own tag table.
    tags[s] = awful.tag(tagpairs.names, s, tagpairs.layout)
  end)

  return tags
end

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

return setmetatable(
  {},
  { __call = function(_, ...) return _M.get(...) end }
)
