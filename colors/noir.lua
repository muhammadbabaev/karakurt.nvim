vim.o.background = 'dark'
vim.g.colors_name = 'noir'

package.loaded['lush_theme.noir'] = nil

require('lush')(require('lush_theme.noir'))
