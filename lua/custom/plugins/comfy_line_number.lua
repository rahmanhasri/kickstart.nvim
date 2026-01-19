return {
  'mluders/comfy-line-numbers.nvim',
  config = function()
    require('comfy-line-numbers').setup {
      -- Optional: you can add custom labels or configurations here
      -- Example custom labels (from the plugin's GitHub page)
      labels = {
        '1',
        '2',
        '3',
        '4',
        '5',
        '11',
        '12',
        '13',
        '14',
        '15',
        '21',
        '22',
        '23',
        '24',
        '25',
        '31',
        '32',
        '33',
        '34',
        '35',
        '41',
        '42',
        '43',
        '44',
        '45',
        '51',
        '52',
        '53',
        '54',
        '55',
        -- ... and so on for higher lines
      },
      -- Example key remapping (optional)
      up_key = 'k',
      down_key = 'j',
      -- Example hidden file types (optional)
      hidden_file_types = { 'undotree' },
      hidden_buffer_types = { 'terminal', 'nofile' },
    }
  end,
}
