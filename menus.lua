
-- | Menus | -------------------------------------------------------------------

-- TODO: Menus de eletronica
-- TODO: Menus de livros
-- TODO: Menus de Favoritos

-- Declara o menu principal
meuMenuPrincipal = awful.menu.new({
      auto_expand = true,
      items = { --
         { "Terminal", commands.terminal },
	 { "---", commands.nop },
	 { "Firefox", commands.web_browser},
	 { "&Firefox Private", commands.web_browser_private},
	 { "---", commands.nop },
	 { "&Arquivos", commands.file_manager},
	 { "&Emacs (client)", commands.emacs.client},
	 { "---", commands.nop },
         { "&Reiniciar Awesome", awesome.restart },
         { "Sair (&Q)", awesome.quit },
	 { "---", commands.nop },
	 { "Reiniciar", "systemctl reboot" },
	 { "Desligar", "systemctl poweroff" },
      }
})

