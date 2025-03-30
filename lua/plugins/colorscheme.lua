return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "huyvohcmc/atlas.vim" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "atlas",
    },
  },
}
