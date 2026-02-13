return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        haskell = { "ormolu" },
        cabal = {},
      },
      formatters = {
        ormolu = {
          command = vim.fn.expand("~/.cabal/bin/ormolu"),
        },
      },
    },
  },
}
