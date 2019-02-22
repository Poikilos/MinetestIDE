# MinetestIDE
This is wintermute's working & wonderful Minetest IDE, based on ZeroBrane Studio!

> Dear Minetest-Community,
> 
> I am happy to announce that the thing nobody waited for, and one may actually use and like, is ready.
> We can hope that this lowers the burden of developing mods and brings fun into programming.
> Minetest lives and dies with its Mods, so for Minetest to survive and to strive for better content, one thing is inevitable: an environment which produces code. While in the past one may have written mods in notepad.exe, Notepad++, Vim or Emacs, we can now strive for unity--one experience across Mac, Linux and Windows. The ZeroBrane Studio, a lightweight, easy-to-learn, highly-customizable piece of Free Software, allows for this [after some modding of the program itself].
> 
> MinetestIDE provides not only keyword highlighting for Lua, but also excellent code completion enriched with the wisest comments from celeron55 and the community.
It unites, in a heroic effort, the dev.minetest.net wiki and the Minetest Lua Modding API Reference. This was possible due to ZeroBrane Studio being highly modable, having many parts written in Lua.
> 
> *-wintermute [edited by poikilos for spelling, grammar, and clarification]*

## Examples
Try to type these examples:
```Lua
minetest.get_worldpath():lower():reverse():upper():len()
minetest.get_meta(minetest.get_player_by_name("wintermute"):get_look_dir():multiply({x = 2, y = -3, z = 4}):get_inventory():get_width()
```

## Installation
(if you are using Linux, run `bash install.sh` instead)
1.  Visit the [Download Site](http://studio.zerobrane.com/download?not-this-time), then download and install the release for your operating system.
2.  Copy all directories & files from MinetestIDE/zbstudio to the ZeroBrane Studio root directory (Linux: `/opt/zbstudio`).
3.  (optional) go in to interpreters and change (line 18) the command line option to run Minetest on your OS. This allows you to start Minetest from inside the IDE. The current configuration assumes global installation on Linux.

## Disclaimer
The information used for auto-completion was written by me--mistakes are not only possible, but highly probable. I have no problem with including fixes from other persons. Based on the feedback of the people and the necessity for improvements, I will decide whether to spend time improving the comments and the descriptions of return values and the arguments, or move my attention to bigger projects. -wintermute

## Authors
* Some content is inspired by or derived from [lua_api.txt.md](https://notabug.org/pgimeno/Gists/src/minetest--lua_api.md/lua_api.md) - celeron55 and others.
* As this is a mod, the Lua files may contain code copied from ZeroBrane Studio and therefore under the [MIT License and Copyright (c) 2011-2017 Paul Kulchenko](https://github.com/pkulchenko/ZeroBraneStudio/blob/master/LICENSE)
* All content not from sources above, but including content derived from sources below, is released under the included fallback license (see included [LICENSE](https://github.com/poikilos/MinetestIDE/blob/master/LICENSE) file in your favorite text editor); and copyright 2015 wintermute (post-2015 changes are copyright poikilos 2019-present, and any other authors listed in the git commit history such as at <https://github.com/poikilos/MinetestIDE/commits/master>).
* The following reference material was used (whether copied verbatim and from where is not known by poikilos nor the original author wintermute, and the content is considered trivial and/or common knowledge):
  * <http://lua-users.org/> - The authors (wiki contributors) are ["unknown, unverifiable parties"](http://lua-users.org/cgi-bin/wiki.pl?action=history&id=HomePage) according to the site maintainer JohnBelmonte; The only mention of terms of use of "content" is in mini charter: *"Any data related to the site content (for example, wiki database) should be backed up and made publicly available at regular intervals. One reason for this is if the individuals controlling the lua-users.org site should go astray (from the community's point of view), it will be possible to install the content at another location and the Lua authors can redirect the domain appropriately."*
  * <http://dev.minetest.net> - Creative Commons Attribution Share Alike 3.0
    (any content found to be from this source should be noted as code comments with the author and license--submit a pull request or [post an issue](https://github.com/poikilos/MinetestIDE/issues) specifying where that is needed)
* [Post an issue](https://github.com/poikilos/MinetestIDE/issues) if there is any dispute regarding use of sources. Any dispute will not be considered valid unless the exact content within this project, proof of authorship such as source or witness predating content within this project, and information making the author identifiable is specified on record via e-mail.

## Project Status
*wintermute* left this to be decided, so I (poikilos) am maintaining it for now. This is a side project, so please submit issues as [pull requests](https://github.com/poikilos/MinetestIDE/pulls) if possible--otherwise use the [Issues](https://github.com/poikilos/MinetestIDE/issues) page. Hopefully wintermute will submit any changes he made after the initial release.
The initial release was version 1.0 (July 27, 2015) on the minetest.net forum post <https://forum.minetest.net/viewtopic.php?f=14&t=12923>.
