
-- | Menus | -------------------------------------------------------------------

-- TODO: Menus de eletronica
-- TODO: Menus de livros
-- TODO: Menus de Favoritos

-- Declara o menu principal
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

