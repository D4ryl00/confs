require("tokyonight").setup({
  -- use the night style
  style = "night",
  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  on_colors = function(colors)
    colors.bg_highlight = colors.bg_search
    colors.comment = "#888fac"
  end
})
