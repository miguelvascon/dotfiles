return {
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    event = 'BufReadPost',
    opts = {
      scope = { enabled = true },
      indent = { char = "┃" },
    },
  }
}
