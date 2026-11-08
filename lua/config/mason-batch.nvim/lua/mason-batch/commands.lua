local function BS() end

local registry = require("mason-registry")
local state = require("mason-batch.state")

---@enum BASE_ARGUMENT
local BASE_ARGUMENT = { all = "all", lsp = "lsp", dap = "dap", linter = "linter", formatter = "formatter" }

---@type string[]
local LIST_BASE_ARGUMENT = {}
for _, value in pairs(BASE_ARGUMENT) do
	table.insert(LIST_BASE_ARGUMENT, value)
end

local function install_package(payload)
	local current_plugin = state.config[payload]

	if current_plugin == nil or #current_plugin == 0 then
		vim.notify(string.format("No packages found for payload: %s", tostring(payload)), vim.log.levels.WARN)
		return false
	end

	for _, value in ipairs(current_plugin) do
		if registry.has_package(value) then
			--local check_install = registry.is_installed(value)
			local p = registry.get_package(value)
			if p:is_installing() then
				vim.notify(string.format("Package is already installing: %s", value), vim.log.levels.INFO)
			elseif not p:is_installing() then
				--	if not check_install then
				--local p = registry.get_package(value)
				p:install()
				vim.notify(string.format("Installing package: %s", value), vim.log.levels.INFO)
			else
				vim.notify(string.format("Package already installed: %s", value), vim.log.levels.DEBUG)
			end
		else
			vim.notify(string.format("Failed to find package '%s' in the registry", value), vim.log.levels.ERROR)
		end
	end
end

---@type table<string, fun(payload:string)>
local actions = {
	[BASE_ARGUMENT.all] = function(payload)
		install_package(BASE_ARGUMENT.lsp)
		install_package(BASE_ARGUMENT.dap)
		install_package(BASE_ARGUMENT.linter)
		install_package(BASE_ARGUMENT.formatter)
	end,

	[BASE_ARGUMENT.lsp] = function(payload)
		install_package(payload)
	end,

	[BASE_ARGUMENT.dap] = function(payload)
		install_package(payload)
	end,

	[BASE_ARGUMENT.linter] = function(payload)
		install_package(payload)
	end,

	[BASE_ARGUMENT.formatter] = function(payload)
		install_package(payload)
	end,
}

---@param fargs string[]
---@return boolean
local function check_for_zero(fargs)
	return #fargs == 0
end

---@param args string[]
---@return string[]
---@return string
local function valid_args(args)
	local word = ""
	---@type string[]
	local parsed_args = {}
	for _, pars_arg in ipairs(args) do
		if BASE_ARGUMENT.all == pars_arg then
			parsed_args = { pars_arg }
			break
		end
		if not BASE_ARGUMENT[pars_arg] then
			word = pars_arg
			break
		end
		table.insert(parsed_args, pars_arg)
	end
	return parsed_args, word
end

---@param opts {fargs:string[]}
---@return  boolean
local function BSInstall(opts)
	local fargs = opts.fargs or {}
	if check_for_zero(fargs) then
		vim.notify(
			"Missing required argument. Please provide one of: " .. table.concat(LIST_BASE_ARGUMENT, ", "),
			vim.log.levels.ERROR
		)
		return false
	end
	---@type string[], string
	local args, word = valid_args(fargs)
	if word ~= "" then
		vim.notify(
			"Invalid argument: '" .. word .. "'. Expected one of: " .. table.concat(LIST_BASE_ARGUMENT, ", "),
			vim.log.levels.ERROR
		)
		return false
	end
	for _, value in ipairs(args) do
		local checking_action = actions[value]
		checking_action(value)
	end
	return true
end

---@param command string[]
---@param arg_lead string
---@return string[]
local function filter_complete(command, arg_lead)
	local completion_command = {}
	for _, c_command in pairs(command) do
		if c_command:sub(1, #arg_lead):lower() == arg_lead:lower() then
			completion_command[#completion_command + 1] = c_command
		end
	end
	return completion_command
end

vim.api.nvim_create_user_command("BSInstall", function(opts)
	BSInstall(opts)
end, {
	desc = "Install more packages.",
	complete = function(arg_lead)
		local completion_command = filter_complete(LIST_BASE_ARGUMENT, arg_lead)
		return completion_command
	end,
	nargs = "*",
})

local function BSLog() end

return {
	BS = BS,
	BSInstall = BSInstall,
	BSLog = BSLog,
}
