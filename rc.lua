-- {{{
-- Meu arquivo de configuração awesome.rc
-- }}}

-- Standard awesome library
require("awful")
require("awful.autofocus")
require("awful.rules")
-- Theme handling library
require("beautiful")
-- Notification library
require("naughty")
-- Biblioteca de widgets
require("vicious")


-- {{{ Minhas variáveis
config_dir = os.getenv("HOME") .. "/.config/awesome"
hostname = io.popen("uname -n"):read()
-- }}}

local mouseIsVisible = true

-- {{{ Error handling
-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)

-- Verifica se houve algum erro durante a inicialização
if awesome.startup_errors then
   naughty.notify({ preset = naughty.config.presets.critical,
                    title = "Opa, houve erros durante a inicialização!",
                    text = awesome.startup_errors })
end

-- Handle runtime errors after startup
do
   local in_error = false
   awesome.add_signal(
      "debug::error",
      function (err)
	 -- Make sure we don't go into an endless error loop
	 if in_error then return end
	 in_error = true
	 naughty.notify(
	    { preset = naughty.config.presets.critical,
	      title = "Erro!",
	      text = err }
	 )
	 in_error = false
      end
   )
end
-- }}}

-- {{{ Variable definitions
-- Themes define colours, icons, and wallpapers
-- beautiful.init("/usr/share/awesome/themes/default/theme.lua")
-- beautiful.init(awful.util.getdir("config") .. "/themes/default/theme.lua")
beautiful.init(os.getenv("HOME") .. "/.config/awesome/themes/current/theme.lua")

-- Coloca wallpaper em todas as telas
if beautiful.wallpaper then
   for s = 1, screen.count() do
      gears.wallpaper.maximized(beautiful.wallpaper, s, true)
   end
end


commands = {
   terminal = "/usr/bin/urxvt",
   web_browser = "firefox",
   emacs = {
      server = "emacs --daemon",
      client = "emacsclient -c",
      client_cmd = "emacsclient -c -nw"
   },
   file_manager = "nautilus",
   nop = "",
}

-- Define as variaveis específicas de cada máquina
naughty.notify({ text = "On host>: " .. hostname, })
if hostname == "lothlorien" then
   commands.file_manager = "nautilus"
   
elseif hostname == "death-star" then
   commands.file_manager = "pcmanfm"
end

-- -- This is used later as the default terminal and commands.editor to run.
-- terminal = "x-terminal-emulator"
-- commands.editor = "emacs"
-- commands.editor_cmd = terminal .. " -e " .. commands.editor .. " -nw" --

-- Modkey padrão (aka Super, ou do logotipo, ou a tecla entre control e alt, etc...)
modkey = "Mod4"

-- Tabela de layouts. Utilizada com 'awful.layout.inc' (a ordem importa)
layouts = {
   ["tile"] = awful.layout.suit.tile,
   ["tile-left"] = awful.layout.suit.tile.left,
   -- awful.layout.suit.tile.bottom,
   -- awful.layout.suit.tile.top,
   ["fair"] = awful.layout.suit.fair,
   -- awful.layout.suit.fair.horizontal,
   -- awful.layout.suit.spiral,
   -- awful.layout.suit.spiral.dwindle,
   ["max"] = awful.layout.suit.max,
   -- awful.layout.suit.max.fullscreen,
   -- awful.layout.suit.magnifier
   ["float"] = awful.layout.suit.floating,
}
-- }}}

-- {{{ Tags
-- Define uma tabela de tags para armazenar todas as "screen tags"
tags = {
   -- Define o nome das tags
   names = {
      "Emacs",
      "Term",
      "Web",
      "Multimedia",
      "Misc",
   },
   -- Define os layouts de cada tag
   layout = {
      layouts["max"],
      layouts["fair"],
      layouts["max"],
      layouts["float"],
      layouts["float"],
   }
}

for s = 1, screen.count() do
   -- Cada tela possui sua propria tabela de tags
   tags[s] = awful.tag(tags.names, s, tags.layout)
end
 -- }}}

-- Menus
dofile(config_dir .. "/menus.lua")

-- {{{ Wibox

dofile(config_dir .. "/widgets/textclock.lua")

blank_space = widget({ type = "textbox" })
blank_space.textbox = " "

separator = widget({ type  = "textbox" })
separator.textbox = '<span color="' .. beautiful.fg_focus .. '">' .. " | " .. '<\span>'

host_widget = widget({ type = "textbox" })
host_widget.text = '<span color="' .. beautiful.fg_normal .. '"> [ </span>' ..
   '<span color="' .. beautiful.fg_focus .. '">' .. hostname .. '</span>' ..
   '<span color="' .. beautiful.fg_normal .. '"> ] </span>'


-- Create a systray
mysystray = widget({ type = "systray" })

-- Create a wibox for each screen and add it
wibox_sup = {}			-- Minha wibox Superior
wibox_inf = {}

mypromptbox = {}
mylayoutbox = {}
mytaglist = {}
-- mytaglist.buttons = awful.util.table.join(
--    awful.button({ }, 1, awful.tag.viewonly),
--    awful.button({ modkey }, 1, awful.client.movetotag),
--    awful.button({ }, 3, awful.tag.viewtoggle),
--    awful.button({ modkey }, 3, awful.client.toggletag),
--    awful.button({ }, 4, awful.tag.viewnext),
--    awful.button({ }, 5, awful.tag.viewprev)
-- )
mytasklist = {}
mytasklist.buttons = awful.util.table.join(
   awful.button({ }, 1, function (c)
         if c == client.focus then
            c.minimized = true
         else
            if not c:isvisible() then
               awful.tag.viewonly(c:tags()[1])
            end
            -- This will also un-minimize
            -- the client, if needed
            client.focus = c
            c:raise()
         end
   end),
   awful.button({ }, 3, function ()
         if instance then
            instance:hide()
            instance = nil
         else
            instance = awful.menu.clients({ width=250 })
         end
   end),
   awful.button({ }, 4, function ()
         awful.client.focus.byidx(1)
         if client.focus then client.focus:raise() end
   end),
   awful.button({ }, 5, function ()
         awful.client.focus.byidx(-1)
         if client.focus then client.focus:raise() end
end))



for s = 1, screen.count() do

   -- Create a promptbox for each screen
   mypromptbox[s] = awful.widget.prompt(
      { layout = awful.widget.layout.horizontal.leftright }
   )
   -- Create an imagebox widget which will contains an icon indicating which layout we're using.
   -- We need one layoutbox per screen.
   mylayoutbox[s] = awful.widget.layoutbox(s)
   mylayoutbox[s]:buttons(awful.util.table.join(
                             awful.button({ }, 1, function () awful.layout.inc(layouts, 1) end),
                             awful.button({ }, 3, function () awful.layout.inc(layouts, -1) end),
                             awful.button({ }, 4, function () awful.layout.inc(layouts, 1) end),
                             awful.button({ }, 5, function () awful.layout.inc(layouts, -1) end)))
   -- Create a taglist widget
   mytaglist[s] = awful.widget.taglist(
      s,
      awful.widget.taglist.label.all,
      mytaglist.buttons
   )

   -- Create a tasklist widget
   mytasklist[s] = awful.widget.tasklist(
      function(c)
         return awful.widget.tasklist.label.currenttags(c, s)
      end
      , mytasklist.buttons
   )

   -- Create the wibox
   wibox_sup[s] = awful.wibox({ position = "top", height=25, screen = s })

   -- Add widgets to the wibox - order matters
   wibox_sup[s].widgets = {
      {
         -- mylauncher,
         mytaglist[s],
	 mypromptbox[s],
         layout = awful.widget.layout.horizontal.leftright
      },
      -- mylayoutbox[s],
      textclock,
      -- s == 1 and mysystray or nil,
      layout = awful.widget.layout.horizontal.rightleft
   }

   -- Create the wibox
   wibox_inf[s] = awful.wibox({ position = "bottom", height=20, screen = s })

   wibox_inf[s].widgets = {
      {
	 host_widget,
	 layout = awful.widget.layout.horizontal.leftright
      },
      separator,
      mylayoutbox[s],
      s == 1 and mysystray,
      separator or nil,
      mytasklist[s],
      layout = awful.widget.layout.horizontal.rightleft
   }


end
-- }}}

-- {{{ Mouse bindings
root.buttons(
   awful.util.table.join(
      awful.button({ }, 3, function () meuMenuPrincipal:toggle() end)
      -- Desabilita o scroll na tag list
      -- awful.button({ }, 4, awful.tag.viewnext),
      -- awful.button({ }, 5, awful.tag.viewprev)
   )
)
-- }}}

-- Key Bindings
dofile(config_dir .. "/key-bidings.lua")

-- Rules
dofile(config_dir .. "/rules.lua")

-- Signals
dofile(config_dir .. "/signals.lua")
