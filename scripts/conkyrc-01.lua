-- Author url = http://dobbie03.deviantart.com/art/My-First-Conky-Config-327206399
-- Modified by Akza

-- vim: ts=4 sw=4 noet ai cindent syntax=lua

--[[
Conky, a system monitor, based on torsmo
]]

conky.config = {
-- common
  alignment = 'bottom_right',
  background = false,
  double_buffer = true,
  total_run_times = 0,
  update_interval = 1,

-- border
  border_inner_margin = 5,
  border_outer_margin = 5,
  border_width = 5,

-- color
  -- #413536 # grey 5f5f5f 3F3F3F 183149 3B3B3B 26211F
  default_color = '#000000',

-- draw options
  draw_borders = false,
  draw_outline = false,
  draw_shades = false,

-- positioning
  gap_x = 10,
  gap_y = 30,
  maximum_width = 2000,
  minimum_height = 0,
  minimum_width = 0,

  no_buffers = true,
  override_utf8_locale = true,

-- window
  own_window = false,
  own_window_title = 'conky',
  own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
  own_window_transparent = false,

-- 'normal', 'dock', 'panel', 'desktop', 'override'
  own_window_type = 'desktop',

  own_window_argb_value = 0,
  own_window_argb_visual = true,
  own_window_colour = '#000000',

-- text
  text_buffer_size = 8000,
  uppercase = false,

-- font
  use_xft = true,
  xftalpha = 1,
--  xftfont = 'TerminessTTF Nerd Font Mono:pixelsize=9',

--				fonts
--	Blue Highway
--	Zegoe Light - U
--	Zekton
--	Calibri
--	Engebrechtre
--	Opeln2001
--	Pricedown
}

datetime = ''
.. '${font BankGothic Md BT:pixelsize=15}'
.. '${alignr}'
.. '${time [ %A, %I:%M:%S ]}'
.. '\n'
.. '${alignr}'
.. '${time %d %B, %Y}'
.. '\n'

message = ''
.. "${font BankGothic Md BT:pixelsize=30}"
.. "${alignr}"
.. "${exec lsb_release -sirc}"
.. "\n"

cpu_usage = 'CPU Usage: ${cpu}% - RAM Usage: ${mem}'

root = 'Root: ${fs_free /} / ${fs_size /}'

battery = 'Battery: ${battery_percent BAT0}% -'
.. ' Remaining Time: ${battery_time BAT0} '

user = 'User: ${exec whoami} - System Uptime: ${uptime_short}'

wlan = 'wlp1s0'

net_up = 'Net Up: '
.. '${if_existing /proc/net/route ' .. wlan .. '}'
.. '${upspeed ' .. wlan .. '}'
.. '${else}'
.. '${if_existing /proc/net/route eth0}'
.. '${upspeed ' .. wlan .. '}'
.. '${endif}'

net_down = 'Net Down: '
.. '${if_existing /proc/net/route ' .. wlan .. '}'
.. '${downspeed ' .. wlan .. '}'
.. '${else}'
.. '${if_existing /proc/net/route eth0}'
.. '${downspeed ' .. wlan .. '}'
.. '${endif}'

kernel = 'Kernel: ${exec uname -r}'
hostname = 'User: ${exec whoami}@${exec hostname}'
model = 'Model:  ${cat /sys/devices/virtual/dmi/id/product_name}'
uptime = 'Uptime:  ${uptime_short}'
cpu = 'CPU:  Intel Celeron N3050'
gpu = 'GPU:  Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx'
swap = 'Swap:  ${exec swaps}'
install = 'Install Date: 3 April 2019'

monitor = ''
.. '${font BankGothic Md BT:pixelsize=14}'
.. '${alignr}[ ' .. hostname .. ' ]\n'
.. '${alignr}[ ' .. model .. ' ]\n'
.. '${alignr}[ ' .. kernel .. ' ]\n'
.. '${alignr}[ ' .. uptime .. ' ]\n'
.. '${alignr}[ ' .. cpu .. ' ]\n'
.. '${alignr}[ ' .. gpu .. ' ]\n'
.. '${alignr}[ ' .. swap .. ' ]\n'
.. '${alignr}[ ' .. install .. ' ]\n'
-- .. '${alignr}[ ' .. root .. ' ]\n'
-- .. '${alignr}[ ' .. cpu_usage .. ' ]\n'
-- .. '${alignr}[ ' .. battery .. ' ]\n'



conky.text = ''
-- .. datetime
.. message
.. monitor


