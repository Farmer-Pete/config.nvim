return {
  'ninetyfive-gg/ninetyfive.nvim',
  version = '*', -- use stable version, or `false` for dev version
  config = function()
    require('ninetyfive').setup {
      -- Prints useful logs about what events are triggered, and reasons actions are executed
      debug = false,

      -- When `true`, enables the plugin on NeoVim startup
      enable_on_startup = true,

      -- When `true`, disables 'ghost text' suggestions from NinetyFive
      use_cmp = false,

      -- Update server URI, mostly for debugging
      server = 'wss://api.ninetyfive.gg',

      -- Key mappings configuration
      mappings = {
        -- Sets a global mapping to accept a suggestion
        accept = '<Right>',
        -- Sets a global mapping to accept the next word
        accept_word = '<Up>',
        -- Sets a global mapping to accept the next line
        accept_line = '<Down>',
        -- Sets a global mapping to reject a suggestion
        reject = '<Left>',
      },

      -- Code indexing configuration for better completions
      indexing = {
        -- Possible values: "ask" | "on" | "off"
        -- "ask" - prompt user for permission to index code
        -- "on" - automatically index code
        -- "off" - disable code indexing
        mode = 'on',
        -- Whether to cache the user's answer per project
        cache_consent = true,
      },
    }
  end,
}
