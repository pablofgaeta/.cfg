return {
  { 'tidalcycles/vim-tidal' },
  {
    'davidgranstrom/scnvim',
    opts = {
      editor = {
        highlight = {
          color = 'IncSearch',
        },
      },
      postwin = {
        float = {
          enabled = true,
        },
      },
    },
  },
}
