local command = require("core.command")

-- Theme management
command.create("Theme", function(opts)
  if opts.args == "" then
    require("core.theme").pick()
    return
  end

  require("core.theme").save(opts.args)
end, {
  nargs = "?",
  complete = "color",
  desc = "Pick or set colorscheme",
})
