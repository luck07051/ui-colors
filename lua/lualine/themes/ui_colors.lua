-- Copyright (c) 2020-2021 shadmansaleh
-- MIT license, see LICENSE for more details.
-- stylua: ignore
local colors = {
    none = 'NONE',
    black = '#1c1c1c',
    white = '#d0d0d0',
    gray = '#444444',
    blue = '#87afaf',
    green = '#87af87',
    red = '#e67e80',
    magenta = '#ffb9dc',
    yellow = '#ebcb8b',
}

return {
  normal = {
    a = { bg = colors.blue, fg = colors.black, gui = 'bold' },
    b = { bg = colors.gray, fg = colors.white },
    c = { bg = colors.none, fg = colors.white },
  },
  insert = {
    a = { bg = colors.green, fg = colors.black, gui = 'bold' },
  },
  visual = {
    a = { bg = colors.yellow, fg = colors.black, gui = 'bold' },
  },
  replace = {
    a = { bg = colors.red, fg = colors.black, gui = 'bold' },
  },
  command = {
    a = { bg = colors.magenta, fg = colors.black, gui = 'bold' },
  },
  inactive = {
    a = { bg = colors.gray, fg = colors.white, gui = 'bold' },
  },
}
