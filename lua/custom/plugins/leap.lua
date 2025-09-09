return {
  'ggandor/leap.nvim',
  opts = {
    -- Highly recommended: define a preview filter to reduce visual noise and the blinking effect after the first keypress (:h leap.opts.preview_filter). You can still target any visible positions if needed, but you can define what is considered an exceptional case.
    -- Exclude whitespace and the middle of alphabetic words from preview:
    --   foobar[baaz] = quux
    --   ^----^^^--^^-^-^--^
    preview_filter = function(ch0, ch1, ch2)
      return not (ch1:match '%s' or ch0:match '%a' and ch1:match '%a' and ch2:match '%a')
    end,

    -- Define equivalence classes for brackets and quotes, in addition to the default whitespace group:
    equivalence_classes = { ' \t\r\n', '([{', ')]}', '\'"`' },
  },
  -- The config function is called after the plugin is loaded, and it:
  -- 1. Sets up leap with your existing options using require('leap').setup(opts)
  -- 2. Configures the repeat keys using require('leap.user').set_repeat_keys('<enter>', '<backspace>')
  config = function(_, opts)
    local leap = require 'leap'
    for k, v in pairs(opts) do
      leap.opts[k] = v
    end
    leap.set_default_mappings(true)
    require('leap.user').set_repeat_keys('<enter>', '<backspace>')
  end,
}
