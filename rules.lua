
-- Rules

-- {{{
-- Para encontrar a classe de uma janela, basta executar:
-- $ xprop | grep -i CLASS
-- e clicar na janela desejada. (no emacs utilizar o comando M-! 'shell-command')
-- }}}

-- {{{ Rules
awful.rules.rules = {
   -- All clients will match this rule.
   {
      rule = { },
      properties = {
	 border_width = beautiful.border_width,
	 border_color = beautiful.border_normal,
	 focus = true,
	 keys = clientkeys,
	 buttons = clientbuttons }
   },
   { rule = { class = "MPlayer" },
     properties = { floating = true } },
   { rule = { class = "pinentry" },
     properties = { floating = true } },
   { rule = { class = "gimp" },
     properties = { floating = true } },
   -- Set Firefox to always map on tags number 2 of screen 1.
   { rule = { class = "Firefox" },
     properties = { tag = tags[1][2],
		    switchtotag = true,
     }
   },
   -- Set Emacs to open on tag named Emacs
   {
      rule = { class = "Emacs" },
      properties = { tag = tags[1][1],
		     switchtotag = true,
		     maximized_vertical = true,
		     maximized_horizontal = true,
      }
   },
   -- Set Teminals to open o tag 6
   {
      rule = { class = "URxvt"},
      properties = { tag = tags[1][4],
		     switchtotag = true,
      }
   },
}
-- }}}

