--
-- Meu theme do Awesome
--
-- Autor: Pedro Maione (pedromaionee [at] gmail [dot] com)
--

-- local config_dir = os.getenv("HOME") .. "/.config/awesome"

theme = {}
theme.icons = config_dir .. "/themes/current/icons"
theme.wallpaper_cmd = { "awsetbg " .. config_dir .. "/themes/current/wallpaper.jpg"}


theme.font          = "Droid Sans 10"

theme.fg_normal     = "#bbbbbb"
theme.fg_focus      = "#66cdaa"
theme.fg_urgent     = "#00ffff"
-- theme.bg_minimize   = "#444444"

theme.bg_normal     = "#222222"
theme.bg_focus      = "#222222"
theme.bg_urgent     = "#Ba55d3"
theme.bg_minimize   = "#000000"

theme.border_width  = 2
theme.border_normal = "#000000"
theme.border_focus  = "#40e0d0"
theme.border_marked = "#Ff00ff"

theme.menu_height = 20
theme.menu_width = 200

-- | Layout | --
theme.layout_floating = "[float]"
theme.layout_tile = "[ |=]"
-- theme.layout_floating   = theme.icons .. "/panel/layouts/floating.png"
-- theme.layout_tile       = theme.icons .. "/panel/layouts/tile.png"
-- theme.layout_tileleft   = theme.icons .. "/panel/layouts/tileleft.png"
-- theme.layout_tilebottom = theme.icons .. "/panel/layouts/tilebottom.png"
-- theme.layout_tiletop    = theme.icons .. "/panel/layouts/tiletop.png"
-- theme.layout_max        = theme.icons .. "/panel/layouts/max.png"
-- theme.layout_fullscreen = theme.icons .. "/panel/layouts/maxfullscreen.png"
-- theme.layout_magnifier  = theme.icons .. "/panel/layouts/magnifier.png"
                                                    
-- | Taglist | --

-- theme.taglist_bg_empty    = theme.icons .. "/panel/taglist/empty.png"
-- theme.taglist_bg_occupied = theme.icons .. "/panel/taglist/occupied.png"
-- theme.taglist_bg_urgent   = theme.icons .. "/panel/taglist/urgent.png"
-- theme.taglist_bg_focus    = theme.icons .. "/panel/taglist/focus.png"
-- theme.taglist_font        = theme.font

-- | Tasklist | --

-- theme.tasklist_font                 = theme.font
-- theme.tasklist_disable_icon         = false
-- theme.tasklist_bg_normal            = theme.icons .. "/panel/tasklist/normal.png"
-- theme.tasklist_bg_focus             = theme.icons .. "/panel/tasklist/focus.png"
-- theme.tasklist_bg_urgent            = theme.icons .. "/panel/tasklist/urgent.png"
-- theme.tasklist_fg_focus             = "#7fffd4"
-- theme.tasklist_fg_urgent            = "#00ffff"
-- theme.tasklist_fg_normal            = "#cccccc"
-- theme.tasklist_floating             = ""
-- theme.tasklist_sticky               = ""
-- theme.tasklist_ontop                = ""
-- theme.tasklist_maximized_horizontal = ""
-- theme.tasklist_maximized_vertical   = ""

-- theme.spr    = theme.icons .. "/panel/separators/spr.png"
-- theme.sprtr  = theme.icons .. "/panel/separators/sprtr.png"
-- theme.spr4px = theme.icons .. "/panel/separators/spr4px.png"
-- theme.spr5px = theme.icons .. "/panel/separators/spr5px.png"

return theme

