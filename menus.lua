

-- {{{ Menu

-- Cria um "launcher widget" e um menu principal
meuMenuPrincipal = awful.menu.new({
      auto_expand = true,
      items = { --
         { "Terminal", commands.terminal },
	 { "&Firefox", commands.web_browser},
	 { "&Nautilus", commands.file_manager},
	 { "&Emacs (client)", commands.emacs.client},
	 { "---", commands.nop },
         { "&Reiniciar Awesome", awesome.restart },
         { "Sair (&Q)", awesome.quit },
	 { "---", commands.nop },
	 { "Reiniciar", "systemctl reboot" },
	 { "Desligar", "systemctl poweroff" },
      }
})

mylauncher = awful.widget.launcher({ image = image(beautiful.awesome_icon),
                                     menu = meuMenuPrincipal })
-- }}}
