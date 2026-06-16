local M = {}

function M.get_colors()
  -- Check Neovim's current background option (:h 'background')
  if vim.o.background == "light" then
    return {
      bg          = "#f7f7f7", -- Soft off-white
      fg          = "#000000", -- Pure black text
      sidebar_bg  = "#f0f0f0", -- Slightly darker for sidebar
      comment     = "#aa8800", -- Muted ocher gold
      string      = "#498000", -- Moss green
      number      = "#d03550", -- Deep crimson coral
      func        = "#007777", -- Deep seafoam teal
      ui_muted    = "#e5e5e5", -- Visual selections/hovers
      none        = "NONE",
    }
  else
    return {
      bg          = "#1a1b26", -- Your signature deep canvas
      fg          = "#ffffff", -- Pure white text
      sidebar_bg  = "#131314", -- Subtle sidebar depth
      comment     = "#f4e004", -- Vibrant yellow comment
      string      = "#C3E88D", -- Tokyo night neon green
      number      = "#f7768e", -- Tokyo night pink
      func        = "#b4f9f8", -- Cyan function pop
      ui_muted    = "#222225", -- Visual selections/hovers
      none        = "NONE",
    }
  end
end

return M
