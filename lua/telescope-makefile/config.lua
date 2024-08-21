---@class TMake.Config.Spec
---@field makefile_priority? string[]
---@field default_target? nil|string|"[DEFAULT]"
---@field make_bin? "make"|string

---@class TMake.Config
---@field defaults TMake.Config.Spec

---@type TMake.Config
---@diagnostic disable-next-line:missing-fields
local config = {}

config.defaults = {
	-- The path where to search the makefile in the priority order
	makefile_priority = { ".", "build/" },
    -- Name of the default target | nil will disable the default_target
	default_target = "[DEFAULT]",
	-- Custom makefile binary path, uses system `make` by default
	make_bin = "make",
}

setmetatable(config, { __index = config.defaults })

return config
