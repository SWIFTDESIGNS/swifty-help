# swifty-help

This is a handbook(Help menu) for your server witch provides faq,rules and more!
![shelp-logo](https://github.com/SWIFTDESIGNS/swifty-help/assets/57051852/491953b1-cea0-4fb7-957c-a1e07b375743)

Make sure the folder name is swifty-help after extracting from the .zip

This ia the first version and very basic version of said script.
Join my discord to keep up to date with all my scripts and resources
Discord: https://discord.gg/sjAwVPT2zp

You will want to download the latest version of Swifty-Help and then drag the folder out of the .zip and then add to your resources and from there you can ensure it by doing (ensure swifty-help) in your server.cfg.

use TriggerEvent('swiftyhelp:openmenu') in other scripts to open the menu

Everything you can change will be withing the Menu_config.lua, from there you have a thew options witch are labeled like so.
--Edit below here
HM.discord = 'https://discord.gg/sjAwVPT2zp'     --Discord link                            
HM.tebex = ''       --Tebex link
HM.website = ''     --Website link

HM.mn = 'City Handbook'      --Menu Name
HM.sn = 'server-name'        --Server Name
HM.desc = 'This is the description for the menu, to answer any of your questions'  --Menu Description 

HM.Command = 'Help'          -- command to open Help Menu
HM.Bind = true               -- false will disable the keybind feature
HM.keybind = 'F9'            -- If you would like to change the keybind key this is where you do it

To add more rules or questions to the ui you can do so by going to the (html/index.html) and scroll down and you will find templates withing the html on how to add more to each tab.

#Changing the logo or button images
To change the logo on the menu or the button images you can do so by going to your html folder within the swifty-help folder and open the images folder witch will home the images you can change, with this being said you must keep the names of the png's the same for them to change smoothly.

#Images
![swifty-help-image-1](https://github.com/SWIFTDESIGNS/swifty-help/assets/57051852/d4e9859d-4f1a-405a-814a-ec3871586f5d)

![swifty-help-image-2](https://github.com/SWIFTDESIGNS/swifty-help/assets/57051852/7cba61fa-b68e-4825-9494-913b3dc53d0e)

![swifty-help-image-3](https://github.com/SWIFTDESIGNS/swifty-help/assets/57051852/15b33406-07ae-4819-8e8e-950b05df5d15)
