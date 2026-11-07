local M = {}

M.config = nil -- сюда setup() положит конфиг

--- @return boolean
function M.is_setup()
  return M.config ~= nil
end

return M
