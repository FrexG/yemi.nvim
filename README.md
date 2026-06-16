# yemi.nvim

A premium, highly disciplined Neovim colorscheme blending the typographic clarity of **Alabaster** with the cool tones of **Tokyo Night**. 

Designed to maximize deep focus by removing loud syntax colors, hidden scope lines, and rainbow bracket pairs.

## 🌓 Features
* **Monochromatic Foundation:** Variables, punctuation, and structural symbols stay crisp and neutral.
* **Typographic Separation:** Language keywords use fluid italics instead of distracting colors to break up control flow logic.
* **Minimal Accent Pops:** Tokyo Night neon hues are restricted to strings, comments, numbers, and functions for strict, instant scannability.

## 📦 Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
return {
  "fraol/yemi.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- Choose your flavor: "dark" or "light"
    vim.o.background = "dark" 
    vim.cmd([[colorscheme yemi]])
  end,
}
