# doppelganger

Tema colori per Neovim scritto in Lua.

## Installazione con lazy.nvim

Aggiungi questo al tuo setup di lazy.nvim:

```lua
return {
  "TheCGuy73/doppelganger",
  lazy = false, -- oppure true se vuoi il caricamento lazy
  -- config = function()
  --   require("doppelganger").setup{}
  -- end
}
```

## Utilizzo

Dopo l'installazione, puoi attivare il tema con:

```lua
vim.cmd.colorscheme("doppelganger")
```

## Contribuire

Pull request e suggerimenti sono benvenuti!

---

© 2024 TheCGuy73
