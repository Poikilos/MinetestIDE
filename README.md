Dear Minetest-Community,

I am happy to announce that, the thing nobody waited for and one may actually use and like is ready.
We can hope that this lowers the burden of developing mods and brings fun in to programing.
Minetest lives and dies with its Mods, for Minetest to survive and to strive for better content, one thing is inevitable a environment which produces code. While in the past one may wrote his Mods in notepad.exe or notepad+, Vim or Emacs. We can now strive for unity, one experience across Mac, Linux and Windows. The ZeroBrane Studio IDE, a lightweight, easy-to-learn, highly-customizable piece of Free Software allows for this.

It provides not only keyword highlighting of LUA words, but an excellent autocompletion enriched with the wisest comments from celeron55 and the community.
It unites in a heroic afford the dev.minetest wiki and the Minetest Lua Modding API Reference. This was possible due ZeroBrane Studio is highly modable and has many parts written in Lua.

[i]wintermute[/i]

[b]Examples[/b]
Try to type these examples:
[code]minetest.get_worldpath():lower():reverse():upper():len()[/code]
[code]minetest.get_meta(minetest.get_player_by_name("wintermute"):get_look_dir():multiply({x = 2, y = -3, z = 4}):get_inventory():get_width()[/code]

[b]Installation[/b]
[list=1][*] visit the Download Site [url]http://studio.zerobrane.com/download?not-this-time[/url], download and install the fitting version
[*] Download the attached Zip, and extract it in the ZeroBraine Studio root directory (Linux: /opt/zbstudio).
[*] (optional) go in to interpreters and change (line 18) the command line option to run Minetest on your OS. This allows you to start Minetest from inside the IDE. The current configuration assumes global installation on Linux.[/list]

[b]Disclaimer[/b]
The information used for auto-completion were written by me, mistakes are not only possible, but highly probable. I have no problem with including fixes from other persons. Based on the feedback of the people and the necessity for improvements, i will decide whether to spend time improving the comment texts, the descriptions of return values and the arguments or move my attention to bigger projects.

[b]License[/b]
The informations contained are partly inspired, partly part of the following resources:
[list]lua-users.org/  - License unknown[/list]
[list]dev.minetest.net - Creative Commons Attribution Share Alike[/list]
[list]lua_api.txt.md - celeron55 and others[/list]

[b]Project Status[/b]
left to be decided,
initial version 1.0 was released on 27th of July 2015
[b]Staff[/b]
[i]wintermute[/i]
