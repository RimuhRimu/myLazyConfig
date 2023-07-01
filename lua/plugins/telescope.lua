return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    version = false,
    opts = {
      defaults = {
        file_ignore_patterns = {
          "node_modules",
        },
      },
    },
    config = function()
      require("telescope").load_extension("file_browser")
    end,
  },
}
