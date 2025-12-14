return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        require("none-ls.diagnostics.cpplint"),
        null_ls.builtins.formatting.stylua,
        --null_ls.builtins.formatting.black,
        --null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.clang_format.with({
          extra_args = {
            "--style=file",
            -- .clang_format has "AccessModifierOffset: -1" to match cpplint
            "--assume-filename=~/.clang-format",
          },
        }),
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
