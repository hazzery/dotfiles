local words = {}
for word in io.open(vim.fn.stdpath("config") .. "/spell/en.utf-8.add", "r"):lines() do
  table.insert(words, word)
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ltex = {
          settings = {
            ltex = {
              enabled = { "latex", "tex", "bib" },
              language = "en-nz",
              dictionary = {
                ["en-nz"] = words,
              },
            },
          },
        },
      },
    },
  },
  {
    "icewind/ltex-client.nvim",
    opts = {},
  },
}
