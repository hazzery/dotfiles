return {
  { -- NeoGen, allows automatic documentation/annotations (docstring/javadoc)
    "danymat/neogen",
    config = function()
      require("neogen").setup({
        enabled = true,
        input_after_comment = true,
        languages = {
          python = {
            template = {
              annotation_convention = "reST",
            },
          },
        },
      })
      -- vim.api.nvim_set_keymap("n", "<leader>vd", ":Neogen<cr>", { noremap = true, silent = true })
    end,
  },
}
