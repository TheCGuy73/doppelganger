local M = {}

function M.load()
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.o.termguicolors = true
  vim.g.colors_name = "doppelganger"

  -- Palette Zenburn
  local palette = {
    bg         = "#3f3f3f",
    fg         = "#dcdccc",
    comment    = "#7f9f7f",
    keyword    = "#f0dfaf",
    string     = "#cc9393",
    func       = "#efef8f",
    variable   = "#dfaf8f",
    constant   = "#dca3a3",
    type       = "#dfdfbf",
    cursorline = "#2b2b2b",
    visual     = "#5f5f5f",
    number     = "#8cd0d3",
    error      = "#e37170",
    warning    = "#dc8cc3",
  }

  -- Gruppi principali
  vim.api.nvim_set_hl(0, "Normal",      { fg = palette.fg, bg = palette.bg })
  vim.api.nvim_set_hl(0, "Comment",     { fg = palette.comment, italic = true })
  vim.api.nvim_set_hl(0, "Keyword",     { fg = palette.keyword, bold = true })
  vim.api.nvim_set_hl(0, "String",      { fg = palette.string })
  vim.api.nvim_set_hl(0, "Function",    { fg = palette.func })
  vim.api.nvim_set_hl(0, "Identifier",  { fg = palette.variable })
  vim.api.nvim_set_hl(0, "Constant",    { fg = palette.constant })
  vim.api.nvim_set_hl(0, "Type",        { fg = palette.type })
  vim.api.nvim_set_hl(0, "Number",      { fg = palette.number })
  vim.api.nvim_set_hl(0, "CursorLine",  { bg = palette.cursorline })
  vim.api.nvim_set_hl(0, "Visual",      { bg = palette.visual })
  vim.api.nvim_set_hl(0, "Error",       { fg = palette.error, bold = true })
  vim.api.nvim_set_hl(0, "WarningMsg",  { fg = palette.warning, bold = true })
  vim.api.nvim_set_hl(0, "LineNr",      { fg = "#5f7f5f", bg = palette.bg })
  vim.api.nvim_set_hl(0, "CursorLineNr",{ fg = palette.keyword, bg = palette.cursorline, bold = true })
  vim.api.nvim_set_hl(0, "NonText",     { fg = "#6f6f6f" })
  vim.api.nvim_set_hl(0, "StatusLine",  { fg = palette.fg, bg = palette.cursorline })
  vim.api.nvim_set_hl(0, "StatusLineNC",{ fg = palette.comment, bg = palette.cursorline })
  vim.api.nvim_set_hl(0, "VertSplit",   { fg = palette.cursorline, bg = palette.bg })
  vim.api.nvim_set_hl(0, "Pmenu",       { fg = palette.fg, bg = "#4f4f4f" })
  vim.api.nvim_set_hl(0, "PmenuSel",    { fg = palette.bg, bg = palette.keyword })
  vim.api.nvim_set_hl(0, "Search",      { fg = palette.bg, bg = palette.keyword, bold = true })
  -- Puoi aggiungere altri gruppi secondo necessità

  -- UI Standard Neovim
  vim.api.nvim_set_hl(0, "TabLine",      { fg = palette.fg, bg = palette.cursorline })
  vim.api.nvim_set_hl(0, "TabLineSel",   { fg = palette.bg, bg = palette.keyword, bold = true })
  vim.api.nvim_set_hl(0, "TabLineFill",  { fg = palette.comment, bg = palette.bg })
  vim.api.nvim_set_hl(0, "WinSeparator", { fg = palette.cursorline, bg = palette.bg })
  vim.api.nvim_set_hl(0, "Folded",       { fg = palette.comment, bg = palette.cursorline, italic = true })
  vim.api.nvim_set_hl(0, "FoldColumn",   { fg = palette.comment, bg = palette.bg })
  vim.api.nvim_set_hl(0, "DiffAdd",      { bg = "#5f7f5f" })
  vim.api.nvim_set_hl(0, "DiffChange",   { bg = "#7f9f7f" })
  vim.api.nvim_set_hl(0, "DiffDelete",   { bg = "#8c5353" })
  vim.api.nvim_set_hl(0, "DiffText",     { bg = "#6ca0a3" })
  vim.api.nvim_set_hl(0, "DiagnosticError", { fg = palette.error })
  vim.api.nvim_set_hl(0, "DiagnosticWarn",  { fg = palette.warning })
  vim.api.nvim_set_hl(0, "DiagnosticInfo",  { fg = palette.fg })
  vim.api.nvim_set_hl(0, "DiagnosticHint",  { fg = palette.comment })
  vim.api.nvim_set_hl(0, "MatchParen",   { fg = palette.bg, bg = palette.keyword, bold = true })
  vim.api.nvim_set_hl(0, "Title",        { fg = palette.keyword, bold = true })
  vim.api.nvim_set_hl(0, "Special",      { fg = palette.constant })
  vim.api.nvim_set_hl(0, "Directory",    { fg = palette.keyword, bold = true })

  -- lazy.nvim highlight groups
  vim.api.nvim_set_hl(0, "LazyBold",         { bold = true })
  vim.api.nvim_set_hl(0, "LazyButton",       { fg = palette.fg, bg = palette.cursorline })
  vim.api.nvim_set_hl(0, "LazyButtonActive", { fg = palette.bg, bg = palette.keyword, bold = true })
  vim.api.nvim_set_hl(0, "LazyComment",      { fg = palette.comment, italic = true })
  vim.api.nvim_set_hl(0, "LazyCommit",       { fg = palette.constant })
  vim.api.nvim_set_hl(0, "LazyCommitIssue",  { fg = palette.number })
  vim.api.nvim_set_hl(0, "LazyCommitScope",  { fg = palette.comment, italic = true })
  vim.api.nvim_set_hl(0, "LazyCommitType",   { fg = palette.keyword, bold = true })
  vim.api.nvim_set_hl(0, "LazyDimmed",       { fg = "#6f6f6f" })
  vim.api.nvim_set_hl(0, "LazyDir",          { fg = palette.keyword, underline = true })
  vim.api.nvim_set_hl(0, "LazyError",        { fg = palette.error, bold = true })
  vim.api.nvim_set_hl(0, "LazyH1",           { fg = palette.bg, bg = palette.keyword, bold = true })
  vim.api.nvim_set_hl(0, "LazyH2",           { fg = palette.keyword, bold = true })
  vim.api.nvim_set_hl(0, "LazyInfo",         { fg = palette.fg })
  vim.api.nvim_set_hl(0, "LazyItalic",       { fg = palette.fg, italic = true })
  vim.api.nvim_set_hl(0, "LazyLocal",        { fg = palette.constant })
  vim.api.nvim_set_hl(0, "LazyNoCond",       { fg = palette.warning })
  vim.api.nvim_set_hl(0, "LazyNormal",       { fg = palette.fg, bg = "#4f4f4f" })
  vim.api.nvim_set_hl(0, "LazyProgressDone", { fg = palette.constant })
  vim.api.nvim_set_hl(0, "LazyProgressTodo", { fg = palette.comment })
  vim.api.nvim_set_hl(0, "LazyProp",         { fg = palette.comment })
  vim.api.nvim_set_hl(0, "LazyReasonCmd",    { fg = palette.keyword })
  vim.api.nvim_set_hl(0, "LazyReasonEvent",  { fg = palette.constant })
  vim.api.nvim_set_hl(0, "LazyReasonFt",     { fg = palette.string })
  vim.api.nvim_set_hl(0, "LazyReasonImport", { fg = palette.variable })
  vim.api.nvim_set_hl(0, "LazyReasonKeys",   { fg = palette.keyword })
  vim.api.nvim_set_hl(0, "LazyReasonPlugin", { fg = palette.constant })
  vim.api.nvim_set_hl(0, "LazyReasonRequire",{ fg = palette.variable })
  vim.api.nvim_set_hl(0, "LazyReasonRuntime",{ fg = palette.keyword })
  vim.api.nvim_set_hl(0, "LazyReasonSource", { fg = palette.string })
  vim.api.nvim_set_hl(0, "LazyReasonStart",  { fg = palette.func })
  vim.api.nvim_set_hl(0, "LazySpecial",      { fg = palette.constant })
  vim.api.nvim_set_hl(0, "LazyTaskOutput",   { fg = palette.fg })
  vim.api.nvim_set_hl(0, "LazyUrl",          { fg = palette.keyword, underline = true })
  vim.api.nvim_set_hl(0, "LazyValue",        { fg = palette.string })
  vim.api.nvim_set_hl(0, "LazyWarning",      { fg = palette.warning, bold = true })
end

return M 