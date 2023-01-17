require("telescope").setup {
  extensions = {
    file_browser = {
      theme = "ivy",
      hidden = true,
      hijack_netrw = true,
      mappings = {
        ["i"] = {
        },
        ["n"] = {
        },
      },
    },
  },
}
require("telescope").load_extension "file_browser"
