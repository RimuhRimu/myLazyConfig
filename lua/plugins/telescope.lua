return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    version = false,
    config = function()
      require("telescope").load_extension("file_browser")
    end,
  },
}
