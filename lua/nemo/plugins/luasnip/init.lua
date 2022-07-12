local ls = G.on_require("luasnip")
if not ls then
  return
end

vim.keymap.set({ 'i', 's' }, '<C-k>', function ()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

vim.keymap.set({ 'i', 's' }, '<C-j>', function ()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })

vim.keymap.set({ 'i' }, '<C-l>', function ()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end)

-- Configurations
ls.config.set_config {
  -- history = true,
  updateevents = 'TextChanged,TextChangedI',
}
