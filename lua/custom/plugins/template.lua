return {
  'glepnir/template.nvim',
  cmd = { 'Template', 'TemProject' },
  config = function()
    require('template').setup {
      -- config in there
      temp_dir = '~/Dropbox/markdown/999-templates', -- template directory
      author = 'rahmanhasri', -- your name
      email = 'rahman.hasri@gmail.com', -- email address
    }
  end,
}
