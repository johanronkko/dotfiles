local M = {}

M.config = function()
  local status_ok, specs = pcall(require, "specs")
  if not status_ok then
    return
  end

  specs.setup {
    show_jumps = true,
    min_jump = 10,
    popup = {
      delay_ms = 0, -- delay before popup displays
      inc_ms = 20, -- time increments used for fade/resize effects
      blend = 10, -- starting blend, between 0-100 (fully transparent), see :h winblend
      width = 20,
      winhl = "PMenu",
      fader = specs.linear_fader,
      resizer = specs.shrink_resizer,
    },
    ignore_filetypes = {},
    ignore_buftypes = { nofile = true },
  }
end

return M