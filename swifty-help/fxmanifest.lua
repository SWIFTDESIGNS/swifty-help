fx_version 'bodacious'
game 'gta5'

author 'Swifty'
description 'A menu in game to help with all your needs'

ui_page "html/index.html"

dependencies {
    'yarn'
}

shared_script {
    'Menu_config.lua',
    '@qb-core/shared/locale.lua'
}

client_script {
    'cl.lua'
}
server_script {
    'sv.lua'
}

files {
    "html/index.html",
    "html/style.css",
    "html/reset.css",
    "html/listener.js",
    'html/res/futurastd-medium.css',
    'html/res/futurastd-medium.eot',
    'html/res/futurastd-medium.woff',
    'html/res/futurastd-medium.ttf',
    'html/res/futurastd-medium.svg',
    'html/images/buttons/discord.png',
    'html/images/buttons/tebex.png',
    'html/images/buttons/website.png',
    'html/images/background.png',
    'html/images/left-logo.png',
    'html/images/buttons/faq.png',
    'html/images/buttons/rules.png',
    'html/images/buttons/gangs.png',
    'html/images/buttons/realestate.png',
    'html/images/buttons/jobs.png',
    'html/images/buttons/phone.png'
}





    
