--
-- Meu theme do Awesome
--
-- Autor: Pedro Maione (pedromaionee [at] gmail [dot] com)
--

-- local config_dir = os.getenv("HOME") .. "/.config/awesome"

theme = {}
theme.icons = config_dir .. "/themes/default/icons"
theme.wallpaper_cmd = { "awsetbg " .. config_dir .. "/themes/wallpapers/debian-02.png"}



theme.font          = "Inconsolata 10"

theme.fg_normal     = "#cccccc"
theme.fg_focus      = "#7fffd4"
theme.fg_urgent     = "#00ffff"
-- theme.bg_minimize   = "#444444"

theme.bg_normal     = "#000000"
theme.bg_focus      = "#000000"
theme.bg_urgent     = "#000000"
theme.bg_minimize   = "#000000"

theme.border_width  = 2
theme.border_normal = "#000000"
theme.border_focus  = "#Add8e6"
theme.border_marked = "#000000"


theme.menu_height = 16
theme.menu_width = 160

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"


-- | Layout | --

theme.layout_floating   = theme.icons .. "/panel/layouts/floating.png"
theme.layout_tile       = theme.icons .. "/panel/layouts/tile.png"
theme.layout_tileleft   = theme.icons .. "/panel/layouts/tileleft.png"
theme.layout_tilebottom = theme.icons .. "/panel/layouts/tilebottom.png"
theme.layout_tiletop    = theme.icons .. "/panel/layouts/tiletop.png"
theme.layout_max        = theme.icons .. "/panel/layouts/max.png"
theme.layout_fullscreen        = theme.icons .. "/panel/layouts/maxfullscreen.png"
theme.layout_magnifier  = theme.icons .. "/panel/layouts/magnifier.png"

-- | Taglist | --

theme.taglist_bg_empty    = "png:" .. theme.icons .. "/panel/taglist/empty.png"
theme.taglist_bg_occupied = "png:" .. theme.icons .. "/panel/taglist/occupied.png"
theme.taglist_bg_urgent   = "png:" .. theme.icons .. "/panel/taglist/urgent.png"
theme.taglist_bg_focus    = "png:" .. theme.icons .. "/panel/taglist/focus.png"
theme.taglist_font        = "Inconsolata Bold 10"

-- | Tasklist | --

theme.tasklist_font                 = "Inconsolata 10"
theme.tasklist_disable_icon         = false
theme.tasklist_bg_normal            = "png:" .. theme.icons .. "/panel/tasklist/normal.png"
theme.tasklist_bg_focus             = "png:" .. theme.icons .. "/panel/tasklist/focus.png"
theme.tasklist_bg_urgent            = "png:" .. theme.icons .. "/panel/tasklist/urgent.png"
theme.tasklist_fg_focus             = "#7fffd4"
theme.tasklist_fg_urgent            = "#00ffff"
theme.tasklist_fg_normal            = "#cccccc"
theme.tasklist_floating             = ""
theme.tasklist_sticky               = ""
theme.tasklist_ontop                = ""
theme.tasklist_maximized_horizontal = ""
theme.tasklist_maximized_vertical   = ""

-- -- | Widget | --

-- theme.widget_display   = theme.icons .. "/panel/widgets/display/widget_display.png"
-- theme.widget_display_r = theme.icons .. "/panel/widgets/display/widget_display_r.png"
-- theme.widget_display_c = theme.icons .. "/panel/widgets/display/widget_display_c.png"
-- theme.widget_display_l = theme.icons .. "/panel/widgets/display/widget_display_l.png"

-- -- | MPD | --

-- theme.mpd_prev  = theme.icons .. "/panel/widgets/mpd/mpd_prev.png"
-- theme.mpd_nex   = theme.icons .. "/panel/widgets/mpd/mpd_next.png"
-- theme.mpd_stop  = theme.icons .. "/panel/widgets/mpd/mpd_stop.png"
-- theme.mpd_pause = theme.icons .. "/panel/widgets/mpd/mpd_pause.png"
-- theme.mpd_play  = theme.icons .. "/panel/widgets/mpd/mpd_play.png"
-- theme.mpd_sepr  = theme.icons .. "/panel/widgets/mpd/mpd_sepr.png"
-- theme.mpd_sepl  = theme.icons .. "/panel/widgets/mpd/mpd_sepl.png"

-- | Separators | --

theme.spr    = theme.icons .. "/panel/separators/spr.png"
theme.sprtr  = theme.icons .. "/panel/separators/sprtr.png"
theme.spr4px = theme.icons .. "/panel/separators/spr4px.png"
theme.spr5px = theme.icons .. "/panel/separators/spr5px.png"

-- -- | Clock / Calendar | --

-- theme.widget_clock = theme.icons .. "/panel/widgets/widget_clock.png"
-- theme.widget_cal   = theme.icons .. "/panel/widgets/widget_cal.png"

-- -- | CPU / TMP | --

-- theme.widget_cpu    = theme.icons .. "/panel/widgets/widget_cpu.png"
-- -- theme.widget_tmp = theme.icons .. "/panel/widgets/widget_tmp.png"

-- -- | MEM | --

-- theme.widget_mem = theme.icons .. "/panel/widgets/widget_mem.png"

-- -- | FS | --

-- theme.widget_fs     = theme.icons .. "/panel/widgets/widget_fs.png"
-- theme.widget_fs_hdd = theme.icons .. "/panel/widgets/widget_fs_hdd.png"

-- -- | Mail | --

-- theme.widget_mail = theme.icons .. "/panel/widgets/widget_mail.png"

-- -- | NET | --

-- theme.widget_netdl = theme.icons .. "/panel/widgets/widget_netdl.png"
-- theme.widget_netul = theme.icons .. "/panel/widgets/widget_netul.png"

-- | Misc | --

theme.menu_submenu_icon = theme.icons .. "submenu.png"

return theme




-- -- Display the taglist squares
-- theme.taglist_squares_sel   = "/usr/share/awesome/themes/default/taglist/squarefw.png"
-- theme.taglist_squares_unsel = "/usr/share/awesome/themes/default/taglist/squarew.png"

-- theme.tasklist_floating_icon = "/usr/share/awesome/themes/default/tasklist/floatingw.png"

-- -- Variables set for theming the menu:
-- -- menu_[bg|fg]_[normal|focus]
-- -- menu_[border_color|border_width]
-- theme.menu_submenu_icon = "/usr/share/awesome/themes/default/submenu.png"
-- theme.menu_height = "15"
-- theme.menu_width  = "100"

-- -- You can add as many variables as
-- -- you wish and access them by using
-- -- beautiful.variable in your rc.lua
-- --theme.bg_widget = "#cc0000"

-- -- Define the image to load
-- theme.titlebar_close_button_normal = "/usr/share/awesome/themes/default/titlebar/close_normal.png"
-- theme.titlebar_close_button_focus  = "/usr/share/awesome/themes/default/titlebar/close_focus.png"

-- theme.titlebar_ontop_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/ontop_normal_inactive.png"
-- theme.titlebar_ontop_button_focus_inactive  = "/usr/share/awesome/themes/default/titlebar/ontop_focus_inactive.png"
-- theme.titlebar_ontop_button_normal_active = "/usr/share/awesome/themes/default/titlebar/ontop_normal_active.png"
-- theme.titlebar_ontop_button_focus_active  = "/usr/share/awesome/themes/default/titlebar/ontop_focus_active.png"

-- theme.titlebar_sticky_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/sticky_normal_inactive.png"
-- theme.titlebar_sticky_button_focus_inactive  = "/usr/share/awesome/themes/default/titlebar/sticky_focus_inactive.png"
-- theme.titlebar_sticky_button_normal_active = "/usr/share/awesome/themes/default/titlebar/sticky_normal_active.png"
-- theme.titlebar_sticky_button_focus_active  = "/usr/share/awesome/themes/default/titlebar/sticky_focus_active.png"

-- theme.titlebar_floating_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/floating_normal_inactive.png"
-- theme.titlebar_floating_button_focus_inactive  = "/usr/share/awesome/themes/default/titlebar/floating_focus_inactive.png"
-- theme.titlebar_floating_button_normal_active = "/usr/share/awesome/themes/default/titlebar/floating_normal_active.png"
-- theme.titlebar_floating_button_focus_active  = "/usr/share/awesome/themes/default/titlebar/floating_focus_active.png"

-- theme.titlebar_maximized_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/maximized_normal_inactive.png"
-- theme.titlebar_maximized_button_focus_inactive  = "/usr/share/awesome/themes/default/titlebar/maximized_focus_inactive.png"
-- theme.titlebar_maximized_button_normal_active = "/usr/share/awesome/themes/default/titlebar/maximized_normal_active.png"
-- theme.titlebar_maximized_button_focus_active  = "/usr/share/awesome/themes/default/titlebar/maximized_focus_active.png"

-- -- You can use your own command to set your wallpaper
-- -- theme.wallpaper_cmd = { "awsetbg
-- -- /usr/share/awesome/themes/default/background.png" }
-- theme.wallpaper_cmd = { "awsetbg /home/vader/.config/awesome/themes/wallpapers/debian-02.png" }

-- -- You can use your own layout icons like this:
-- theme.layout_fairh = "/usr/share/awesome/themes/default/layouts/fairhw.png"
-- theme.layout_fairv = "/usr/share/awesome/themes/default/layouts/fairvw.png"
-- theme.layout_floating  = "/usr/share/awesome/themes/default/layouts/floatingw.png"
-- theme.layout_magnifier = "/usr/share/awesome/themes/default/layouts/magnifierw.png"
-- theme.layout_max = "/usr/share/awesome/themes/default/layouts/maxw.png"
-- theme.layout_fullscreen = "/usr/share/awesome/themes/default/layouts/fullscreenw.png"
-- theme.layout_tilebottom = "/usr/share/awesome/themes/default/layouts/tilebottomw.png"
-- theme.layout_tileleft   = "/usr/share/awesome/themes/default/layouts/tileleftw.png"
-- theme.layout_tile = "/usr/share/awesome/themes/default/layouts/tilew.png"
-- theme.layout_tiletop = "/usr/share/awesome/themes/default/layouts/tiletopw.png"
-- theme.layout_spiral  = "/usr/share/awesome/themes/default/layouts/spiralw.png"
-- theme.layout_dwindle = "/usr/share/awesome/themes/default/layouts/dwindlew.png"

-- theme.awesome_icon = "/usr/share/awesome/icons/awesome16.png"

-- return theme
-- -- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
