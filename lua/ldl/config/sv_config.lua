--[[
--    Livaco's Discord Logger Config
--    If you need help, drop a ticket at livaco.dev.
]]--


--[[
--    General Config
]]--

-- The URL to your lds_logger.php file on your webserver.
-- Ldl.Config.Url = "https://www.example.com/ldl_logger.php"
Ldl.Config.Url = "http://localhost/ldl_logger.php"

-- The password you set. This NEEDS to be the same as whats on the php file.
Ldl.Config.Password = "super_secret_password"

-- If false, the addon won't spam the console with "Log Successfully Sent" every time it sends something. If you find some logs arrent being sent, set this to true to debug it.
Ldl.Config.LogCallback = false