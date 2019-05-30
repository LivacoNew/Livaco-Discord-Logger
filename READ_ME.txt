Currently, you need a Webserver to run this. This is due to Discord blocking webhooks that are being sent from Gmod, so you need a php file to "proxy" it.
If you don't already have a website, or have FTP access, you can use 000webhost, which allows you to do it for free.
Go to https://www.000webhost.com/ and make an account, make an website, and take the .php file provided and drag it into your websites files. MAKE SURE ITS IN public_html OR IT WON'T WORK.
Open the .php file up, and configure it. Same with the Lua side (lua/ldl/config/sv_config.lua), and thats it. Easy.

Loggers are called Modules. To add a module requires basic lua knowledge. Simply goto ldl/modules and look at the pre-made stuff to help you.
Basic function syntax:

Ldl.Core.AddModule(ModuleName, Color, HookName, Callback) = Adds a module to use.
ModuleName = The name of the module.
Color = The color of the module. Used for the Rich Embed.
Hookname = The name of the hook you are using for that module.
Callback = The callback function for the hook. Simply use this to log your stuff.

Ldl.Core.SendWebHook(Title, Message, Module, RealModuleName) = Sends a message to Discord.
Title = The title of the Rich Embed.
Message = The message of the Rich Embed.
Module = The module name to put in the footer of the embed.
RealModuleName = The name of the module this web hook uses. This MUST be valid unlike above.

Ldl.Core.FormatPlayer(Player) = Format a player for the Web Hook.
Player = The player to format.


If you need help, view the pre-made modules.