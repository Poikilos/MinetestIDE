a = {
  dump = {
    type = "function",
    args = "(obj) or (obj, dumped)",
    description = "Helper function which dumps a human-readable version of a value. If the value is simple and well-formed, this also produces syntax which could be used directly in Lua source code."},
  dump2 = {
    type = "function",
    args = "(obj, name=\"_\", dumped={})",
    description = "\"Return object serialized as a string, handles reference loops.\" However, it currently seems to have no effect and returns nil." },
  math = {
    type = "class", 
    childs = {
      hypot = {
        type = "function",
        args = "(x, y)",
        returns = "Gets the hypotenuse of a triangle with legs x and y."}}},
  minetest = {
    type="class",
    childs={
      add_entity = {
        type = "function",
        args = "(position, name)",
        valuetype = "ObjectRef",
        returns = "Spawns Lua entitiy at pos. Returns ObjectRef or nil if failed.",
        description = "position = {x = 0, y = -10, z = 0}, name = an registered mobname"},
      add_item = {
        type = "function",
        args = "(pos, name)",
        returns = "Spawns item in the world at pos. name is ItemStack, itemstring or table. Returns ObjectRef or nil if failed.",
        description = "position = {x = 0, y = -10, z = 0}, name =  ItemStack, itemstring or table"},
      add_node_level = {
        type = "function",
        args = "(pos, level)",
        returns = "increases the Level by level of an block at pos. Level is the snow height and the water depth inside a block",
        description = "position = {x = 0, y = -10, z = 0}, name =  ItemStack, itemstring or table"},
      add_particle = {
        type = "function",
        args = "(particle definition)",
        returns = "spawns particles",
        description = [[pos |	{x,y,z} |	starting position of the particle
vel |	{x,y,z} |	particle velocity
acc |	{x,y,z} |	particle acceleration expirationtime | number |	particle disappears after <expirationtime> seconds
size |	number |	particle size
collisiondetection |	boolean |	true if should collide with solid blocks, false if not
vertical |	boolean |	limit to vertical axis (useful for rain)
texture |	string |	particle texture
playername | optional string |	spawns the particle only for the client ]]},
      add_particlespawner = {
        type = "function",
        args = "(particlespawner_definition)",
        returns = "places a particle spawner returns an id"},
      after = {
        type = "function",
        args = "(time, function, optional param (table for multiple))",
        returns = "calls function after time"},
      auth_reload = {
        type = "function",
        args = "()",
        returns = "calls minetest.get_auth_handler().reload()"},
      ban_player = {
        type = "function",
        args = "(player name, reason)",
        returns = "Ban a player, with reason and thereby prevent future logins until player is unbanned"},
      chat_send_all = {
        type = "function",
        args = "(message)",
        returns = "Send message to all players."},
      chat_send_player = {
        type = "function",
        args = "(name, message)",
        returns = "Send message to name."},
      check_player_privs = {
        type = "function",
        args = "(name, {privs})",
        returns = "Check if player has privs. Returns boolean and list of missing priveleges"},
      clear_objects = {
        type = "function",
        args = "()",
        returns = "Takes a long time and deletes all entities."},
      compress={
        args="(data, method, level)",
        type = "function",
        returns = "compressed data, deflate supports compression level 0-9"},
      create_detached_inventory = {
        type = "function",
        args = "(name, {callbacks})",
        returns = "inventory reference",
        valuetype = "InvRef"
      },
      create_schematics = {
        type = "function",
        args = "(p1, p2, probability_list, filename, slice_prob_list)",
        returns = "schematic"},
      debug = {
        type = "function",
        args= "(line)",
        returns = "prints an debug message to stderr and the logfile"},
      decompress = {
        type = "function",
        args = "(compressed_data, method, ...)",
        returns = "Decompress a string of data"},
      delete_area = {
        type = "function",
        args = "pos1, pos2",
        returns = "deletes all mapblocks from pos1 to pos2 inclusive"},
      delete_particlespwaner = {
        type = "function",
        args = "(id, player)",
        returns = "deletes particle spawner id for player or all players"      },
      deserialize = {
        type = "function",
        args = "(serialized table)",
        returns = "unserialized string (table)"},
      dig_node = {
        type = "function",
        args = "(pos)",
        returns = "Dig a node a player would"},
      dir_to_facedir = {
        type = "function",
        args = "({dir}, bool)",
        returns = "Convert a vector to a facedir value, used in param2 for paramtype2 = \"facedir\". It also takes an optional parameter that, when present and not nil/false, will make it take the y component of dir into account. "},
      dir_to_wallmounted = {
        type = "function",
        args = "({dir})",
        returns = "Convert a vector to a wallmounted value, used for paramtype2"},
      explode_scrollbar_event = {
        type = "function",
        args = "(string)",
        returns = "{type = \"CHG\", value = number} if change succesfull, \"INV\" something failed, invalid , \"VAL\" nothing changed, but valid "},
      explode_table_event = {
        type = "function",
        args = "(string)",
        returns = "{type = \"CHG\", row = number, column = number} if change succesfull, \"INV\" something failed \"VAL\" nothing changed and \"DCL\" for double click"},
      explode_textlist_event = { 
        type= "function",
        args = "(string)",
        returns = "{type = \"CHG\", index = number} if change succesfull, \"INV\" something failed, \"VAL\" nothing changed and \"DCL\" for double click"},
      facedir_to_dir = {
        type = "function",
        args =  "(facedir)",
        returns = "Convert a facedir value to a vector, which points out of the back of a node.",
        valuetype = "vector"
      },
      find_node_near = {
        type = "function",
        args = "(pos, radius, nodenames)",
        returns = "Finds a node near pos. radius is a integer value. nodenames is either a string or a table of strings, direct nodenames and \"group:groupname\" are supported. Returns position or nil. "},
      find_path = {
        type = "function",
        args = "(pos1, pos2, searchdistance, max_jump, max_drop, algorithm)",
        returns = "Returns table of positions containing path or nil. | algorithm: A*_noprefetch(default), A*, Dijkstra "},
      forceload_block = {
        type = "function",
        args = "{pos}",
        returns = "updates position, even no player is there. Returns true if succesfull. Forceloaded areas are saved when the server restarts"},
      forceload_free_block = {
        type = "function",
        args = "{pos}",
        returns = "Stops forceloading the position pos."},
      formspec_escape = {
        type = "function",
        args = "(string)",
        returns = "Encodes characters like [[ used in form spec definitions in a way that they can be shown inside a formspec"},
      get_all_craft_recipes = {
        type = "function", 
        args = "(query item)",
        returns = "indexed table with all registered crafting/cooking recipes for the query item or nil",
        description = "return value for default:gold_ingot { 1={type = \"cooking\", width = 3, output = \"default:gold_ingot\", items = {1 = \"default:gold_lump\"}}, 2={type = \"normal\", width = 1, output = \"default:gold_ingot 9\", items = {1 = \"default:goldblock\"}} }"},
      get_ban_description = {
        type = "funtion",
        args = "(ip or name)",
        returns = "Gets the text explaining why a player was banned. empty sting results in all banned users. See get_ban_list()"},
      get_ban_list = {
        type = "function",
        args = "()",
        returns = "Returns ban list (same as minetest.get_ban_description(\"\"))"},
      get_connected_players = {
        type = "function",
        args = "()",
        returns = "List of player objects."
      },
      get_content_id = {
        type = "function",
        args = "(block name)",
        returns = "Block id for blockname"
      },
      get_craft_recipe = {
        type = "function",
        args = "(item)",
        returns = "First item crapt recipe for item. See get_all_craft_recipes for more details"},
      get_craft_result={
        type = "function",
        args = "({ method=string, width=int, items={}})",
        returns = "Returns two output tables, output and decremented_input. output has the item and the time field"
      },
      get_current_modname = {
        returns = "returns the currently loading mod's name, when a mod is loading now",
        args = "()",
        type = "function"},
      get_gametime = {
        type = "function",
        args = "()",
        returns = "the time, in seconds, since the world was created"},
      get_inventory = {
        type = "function",
        args = "(location)",
        description = [[ {type="player", name="foobar"}
         {type="node", pos={x=, y=, z=}}
         {type="detached", name="creative"}]],
        returns = "a Inventar object",
        valuetype = "InvRef"},
      get_item_group = { --Stub
        type = "function",
        args = "(name, group)",
        returns = "Get rating of a group of an item. (0 = not in group)"},
      get_mapgen_object = { --TODO
        type = "function",
        valuetype = "mapgen",
        args = "(objectname)",
        returns = "Returns requested mapgen object if available"},
      get_meta = {
        type = "function",
        valuetype = "NodeMetaRef",
        returns = "Returns NodeMetaRef for node at pos. ",
        args = "(pos)"},
      get_modnames = {
        type = "function",
        args = "()",
        returns = "a list of installed mods, sorted alphabetically."},
      get_modpath = {
        type = "function",
        args = "(name)",
        valuetype = "string",
        returns = "Returns root mod directory location. Useful for loading additional .lua modules or static data from mod."
      },
      get_name_from_content_id = {
        type = "function",
        args = "(contentid)",
        valuetype = "string",
        returns = "a string: the name of the content with that content ID"},
      get_node = {
        type = "function",
        args = "(pos)",
        valuetype="Node",
        returns = "Gets the node at a specific location; returns {name=\"ignore\", ...} for unloaded area."},
      get_node_drops = {
        type = "function",
        args = "(node name, tool name)",
        returns = "list of item names. toolname should be either string or nil (bare hand).",},
      get_node_group = {
        type = "function",
        args = "(name, group)",
        description = " Returns rating"},
      get_node_level = {
        type = "function",
        args = "(pos)",
        returns = "level of a leveled node (height of snow and water)"},
      get_node_light = {
        args = "({pos}, timeofday)",
        type = "function",
        returns = "the node light level (0...15) at the bottom side of the block at the given position at timeofday. If timeofday is nil then the current time is used."},
      get_node_max_level = {
        args = "(pos)",
        type = "function",
        returns = "max available level for leveled node  at pos"},
      get_node_or_nil= {
        args = "({pos})",
        valuetype = "NodeRef",
        type = "function",
        returns = "block object or nil"
      },
      get_node_timer = {
        args = "({pos})",
        returns = "NodeTimerRef object for the node at pos.",
        type = "function"},
      get_objects_inside_radius = {
        type = "function",
        args = "({pos}, radius)",
        returns = "list of ObjectRefs for objects found within radius distance of position pos, including Players and LuaEntitySAOs."},
      get_password_hash = {
        type = "function",
        args= "(name , passwrod)",
        returns = "Convert a name-password pair to a password hash that minetest can use."},
      get_perlin = {
        type = "function",
        args = "(seeddiff, octaves, persistence, scale)",
        returns = "PerlinNoiseMap",
        description = "object with seed derived from the world's seed value. This function must not be called until after the world is finished initializing, so it must be called during some kind of callback rather than at the top level mod initialization code. The PerlinNoise constructor, on the other hand, may be called at any time since it does not depend on the world's seed. " 
      },
      get_perlin_noisemap = {
        type = "function",
        valuetype = "PerlinNoiseMap",
        args = "({noiseparams}, {size})",
        description = "A fast, bulk perlin noise generator."
      },
      get_player_by_name = {
        args = "(playername)",
        type = "function",
        valuetype = "Player",
        returns = "PlayerObject for the named player."
      },
      get_player_information = {
        args= "(playername)",
        type = "function",
        valuetype = "table",
        returns = "table containing information about player peer",
        discription = [[address = "127.0.0.1", -- IP address of client
  ip_version = 4, -- IPv4 / IPv6
  min_rtt = 0.01, -- minimum round trip time
  max_rtt = 0.2, -- maximum round trip time
  avg_rtt = 0.02, -- average round trip time
  min_jitter = 0.01, -- minimum packet time jitter
  max_jitter = 0.5, -- maximum packet time jitter
  avg_jitter = 0.03, -- average packet time jitter
  connection_uptime = 200, -- seconds since client connected]]},
      get_player_ip = {
        args = "(name)",
        type = "function",
        valuetype = "string",
        returns = "the IP address string of the name of a player"},
      get_player_privs = {
        args = "(name)",
        type = "function",
        returns = "table {priv1=true, …}"
      },
      get_pointed_thing_position = {
        args = "(pointed_thing, above)",
        type = "function",
        returns = "position of a pointed_thing",
        discription = [[If pointing at a node & above -> return pointed_thing.above
    If pointing at a node & not above -> return pointed_thing.under
    If pointing at a objec & object exists -> return object position
    If pointing at a objec & object does not exists -> return nil
    If none of the above -> return nil]],},
      get_position_from_hash = {
        args = "(hash)",
        type = "function",
        valuetype = "vector",
        returns = "a positition {x,y,z}"
      },
      get_server_status = { --TODO: find one example
        args = "()",
        type = "function",
        valuetype = "string",
        returns = "server status string."
      },
      get_timeofday = {
        args = "()",
        type = "function",
        returns = "time of day as a float between 0. and 1.",
        description = "multiply with 24000 to get the right format for //time",
      },
      get_us_time = {
        type = "function",
        args = "()",
        returns = "serverside time in microseconds",
        description = "Does not relate to game time in any meaningful way, but should be useful for serverside benchmarks and profiling mod performance."
      },
      get_voxel_manip = { ---TODO add Voxel interface information
        args = "({p1}, {p2}) or ()",
        type = "function",
        valuetype = "Voxelmanip",
        returns = "interface to Lua MapVoxelManipulator",
        description = "if point1 and point2 are given, the specified map chunk is already preloaded in to the MapVoxelManipulator instance"
      }, --TODO MODEXAMPLE
      get_worldpath = {
        args = "()",
        type = "function",
        valuetype = "string",
        returns = "returns filesystem location of the world currently in use"
      },
      global_exists = {
        args = "(name)",
        type = "function",
        returns = "boolean",
        description = "Without triggering a warning, it checks if a global variable named name has been set."
      },
      handle_node_drops = {
        args = "(pos, drops, digger)",
        type = "function",
        description = [[Allows programmer to change the behavior of droping from digged blocks. ObjectRef is the player, pos, is the position of the destroyed block, drops a enumerated table of item strings, if this function is undefined, the default action is to put all items in to the diggers inventar]]
      },
      has_feature = {
        args = "({arg}) or (\"arg\")",
        type = "function",
        returns = "boolean and table of missing features set to true"},
      hash_node_position = {
        args = "({pos})",
        type = "function",
        returns = "turns a table with .x .y .z properties in to an 48 bit Integer used inside the MySql database for identifying an position. .x .y .z have to be smaller than 65536"
      },
      hud_replace_builtin = {
        args = "(\"breath\", hud definition) or (\"health\", hud definition)",
        type = "function",
        description = "replaces the breath or health bar with a custom provided definition"
      },
      inventorycube = {
        args = "(\"img1\", \"img2\", \"img3\")",
        returns = "a inventory texture modiefer string",
        type = "function"
      },
      is_protected = {
        args = "(pos, playername)",
        type = "function",
        description = "Checks if the position is protected. Protection mods should override this. Mods that pacle blogs should respect this,"
      },
      is_singleplayer = {
        args = "()",  
        type = "function",
        returns = "Boolean"
      },
      is_yes = {
        args = "(arg)",
        type = "function",
        returns = "boolean if string can be interpreted as yes"
      },
      item_drop = {
        args = "(itemstack, dropper, pos)",
        type = "function",
        description = "Creates an item stack at pos, with movement in the direction the player is viewing. This is the default function for droping items"
      },
      item_eat = {
        args = "(hp_change, replace_with_item)",
        type = "function",
        description = "Increases health by hp_change and replaces item with replace_with_item or nothing"
      },
      item_place = {
        args = "(itemstack, placer, pointed_thing, param2)",
        type = "function",
      description = "places itemstack at pointed_thing by placer with facedir parameter param2. Chooses either minetest.item_place_node() or minetest.item_place_object()"
      }, 
      item_place_node = {
        args = "(itemstack, placer, pointed_thing, param2)",
        type = "function",
      description = "places itemstack at pointed_thing by placer with facedir parameter param2."
      },
      item_place_object = {
        args = "(itemstack, placer, pointed_thing2)",
        type = "function",
      description = "places itemstack at pointed_thing by placer."
      },
      kick_player = {
        args ="(name) or (name, reason)",
        type = "function",
        returns = "Disconnect a player with an optional reason"
      },
      line_of_sight = { --TODO find out if plural wroks too
        args = "({pos1}, {pos2}, stepsize)",
        type = "function",
        returns ="boolean wether there are blocks in the line of sight between pos1 and pos2 and the position of the blocking node"
      },
      log = {
        args = "(\"loglevel\", \"line\") or (\" line \")",
        type = "function",
        returns = "Depending on the debuglevel the content is written in the chat console, to the Minetest server's stderr/stdout streams (typically visible in the operating system command terminal where minetest was started, if any), and in the debug.txt log file.",
      },
      node_dig = {
        args = "(pos, node, digger)",
        type = "function",
        returns = "default on_dig() callback, checks if player(digger) can dig at position"
      },
      node_punch = { --TODO how?
        args = "(pos, node, puncher, pointed_thing)",
        type = "function",
        returns = "callback can be registered by minetest.register_on_punchnode(), handles punching"
      },
      notify_authentication_modified = {
        args = "(\"name\")",
        type = "function",
        returns = "report changes in privieleges to player \"name\" or all players"
      },
      override_item = {
        args = "(name, {changes})",
        type = "function",
        description  = "Overwrites properties of an already registerd item, allows changes of blocks and items after they were created by another block"},
      parse_json= {
        args ="(string, nullvalue)",
        type = "function",
        returns = "the LUA eqivalent of the JSON Data with nullvalue or nill instead of the JSON null."
      },
      place_node = { -- TODO research the claim 
        args = "({pos}, {node})",
        type = "function",
        returns = "places the node at pos as a player would"
      },
      place_schematic = { --TODO clearify  
        args = "({pos}, {schematic}, rotation, {replacements}, force_placement)",
        type = "function",
        returns = "places a schemetic around pos, rotate it rotation degree around the z-axis (if not provided 0 is assumed, if \"random\" is provided a random rotation is choosen) If force_replacement is true then every block is replaced, even when the position is occupied. replacements allows a finer controll what changes."
      },
      pos_to_string = {
        args = "({pos})",
        type = "function",
        returns = "\"(.x .y .z)\"",
      },
      privs_to_string = {
        args = "({privs})",
        type = "function",
        returns = "a string of all privileges inside privs",
      },
      punch_node = { --TODO claim
        args = "({pos})",
        type = "function",
        returns = "Punch node at pos with the same effects that a player would cause."
      },
      record_protection_violation = { --TODO what
        args = "({pos}, name)",
        type = "function",
        returns = "callbacks registering with minetest.register_on_protection_violation()"
      },
      register_abm = {
        args = "({{nodemnames}, {neighbors}, interval, 1/chance})",
        type = "function",
        returns = "performs a function on all {nodenames} and there {neighbors} every interval seconds with a chance of 1/chance, when the block is in an active/loaded chunk, the loading of an chunk triggers all abms once."
      },
      register_alias = {
        args = "(\"name\", \"convert_to\")",
        type = "function",
        returns = "every time the core loads a block of type name it is replaced by a block convert_to"
      },
      register_authentication_handler = {
        args = "({get_auth, create_auth, set_password, set_privileges, reload})",
        type = "function",
        description = "allows change of the authentication, get_auth, create_auth, set_password, set_privileges, reload must be provided."
      },
      register_biome = {
        type = "function",
        args = "(biome definition)",
        returns = "returns an integer uniquely identifying the registered biome | added to `minetest.registered_biome` with the key of `biome.name` | if `biome.name` is nil, the key is the returned ID"
      },
      register_chatcommand = {
        args = "(\"name\", { /help parameter info, /help function description, needed privs : {priv1 = true, priv2 = true}, function (player_name, parameters )})",
        type = "function",
        returns = "function is called when player types /function in the chat"
      },
      register_craft= {
        args = "({craft_recipe})",
        type = "function",
        returns = "registers a craft recipe"
      },
      register_craft_predict= {
        args = "(func(itemstack, player, old_craft_grid, craft_inv))",
        type = "function",
        returns = "Input is called when the server is going to make an prediction, what the craft results are"},
      register_craftitem = {
        type = "function",
        args = "(name, {item definition})",
        returns = "added to `minetest.registered_items[name]`",
        description = "Registers a craftitem."},
      register_decoration = {
        type = "function",
        args = "({decoration definition})",
        returns = [[* returns an integer uniquely identifying the registered decoration
    * added to `minetest.registered_decorations` with the key of `decoration.name`
    * if `decoration.name` is nil, the key is the returned ID]]},
      register_entity = {
        type = "function",
        returns = "added to `minetest.registered_entities[name]`",
        description = "     entity_name — The registered name of the entity, used as the hash key for minetest.regsitered_entities and as the name property of each instantiated LuaEntity | entity_definition — A table of LuaEntity properties.",
        args = "(entity_name, entity_definition)"},
      register_globalstep = {
        args = "(function(dtime))",
        type = "function",
        returns = "function is called every server step, dtime is the number of second passed after the last call, time expensive code slows down the server a lot."
      },        
      register_node={
        type = "function",
        args = "(name, node definition)",
        returns = "added to `minetest.registered_items[name]` and minetest.registered_nodes[name]`",
        description = "Registers a new node named \"name\". The node properties are specified in the Node definition"
      },
      register_nodes = {
          valuetype = "block",
          args = "block_name",
          description = "table containing all registered blocks accessable by block name"
      },
      register_on_chat_message = {
        args = "(function(name, message))",
        type = "function",
        returns = "Called when a player says something, with a copy of the message as Input(Can not change message)."
      },
      register_on_cheat = {
        args = "(func({ObjectRef for player}, cheat description))",
        type = "function",
        returns = "Called when a player for example: moved_too_fast, interacted_too_far, finished_unknown_dig, dug_unbreakable or dug_too_fast"
      },
      register_on_craft = {
        args="(func(itemstack, player, old_craft_grid, craft_inv))",
        type = "function",
        returns = "Returns either an (modified) ItemStack, to replace the output, or nil, to not modify it",
        description = " Called when player crafts something, itemstack is the output, old_craft_grid contains the recipe (Note: the one in the inventory is cleared) and craft_inv is the inventory with the crafting grid "
      },
      register_on_dieplayer = {
        args = "(function({ObjectRef player}))",
        type = "function",
        returns = "Called when a player dies. Make sure to return true if respawning a player or it will not work."
      },
      register_on_dignode = {
        args = "(function({x y z}, oldnode, {objectref digger}))",
        type = "function",
        returns = "Called when a node is dug",
      },
      register_on_generated = {
        args = "(function(min{ x y z }, max{x y z}, blockseed))",
        type = "function",
        returns = "Called after generating 80×80×80 nodes. Use Voxel manipulation for speed improvements"
      },
      register_on_player_hpchange = {
        args = "(func(player{ObjectRef, hp_change)}, modifier)", --TEST it
        type = "function",
        returns = "Input is called when player heals or get damage"
      },
      register_on_item_eat = {
        args = "(func(hp_change, replace_with_item / nil, {itemstack}, player {ObjectRef}, {pointed_thing}))",
        type = "function",
        returns = "Input is called when an item is eaten by minetest.eat(). Return true or an ItemStack to prevent HP increase"
      },
      register_on_joinplayer = {
        args = "(function(player {ObjectRef}))",
        type = "function",
        returns = "Input is called when player is joining. Note that some functions may are only available after joining is complete. For example for minetest.chat_send_player, calling with minetest.after and a choosen delay is needed."
      },
      register_on_leaveplayer = {
        args = "(function(player {ObjectRef}))",
        type = "function",
        returns = "Input is called when a player leaves the game."
      },
      register_on_mapgen_init = {
        args = "(func(mapgen_params {mgname, seed, water_level, flags}))",
        type= "function",
        returns = "Is called at a certain time on server startup, when all mods are loaded, but before the wrold generator is started. If the parameters need to be changed this can only be performed by  minetest.set_mapgen_params"
      },
      register_on_newplayer = {
        args = "(function(player {ObjecRef}))",
        returns = "function is called after the new player is created",
        type = "function"
      },
      register_on_placenode = {
        args = "(function(pos { x , y , z }, new{node}, placer {ObjectRef}, old{node}, {itemstack}, {pointed_thing}))",
        returns = "Called when a node has been placed. Return a true value to indicate modification of itemstack (if any) has been handled by the callback. Otherwise (return nothing, false, or nil) the caller will remove one item from itemstack. Note that it is not generally possible for one on_placenode callback to know what values were returned by others, or by a node's after_place_node callback (one should thus be careful to avoid double-removal of items).",
        type = "function"
      },
      register_on_player_receive_fields = { -- TODO Clearify
        args = "(function(player {ObjectRef}, \"formname\", {fields}))",
        type = "function",
        returns = "Called when a button is pressed in player's inventory form, as always newest functions are called first. If function returns true the others are ignored. If a player uses ESC to exit a formspec, this will return {\"quit\" = \"true\"}."
      },
      register_on_prejoinplayer = {
        args = "(func(name, ip))",
        type = "function",
        returns = "Called when player tries to connect. If it returns a string, the player is disconnected with that string as reason"
      },
      register_on_protection_violation =  {
        args = "(function(pos { x y z }, playername))",
        type = "function",
        returns = "Registers a function to be called when a player violates protection."
      },
      register_on_punchnod = {
        args = "(function(pos {x y z}, {node}, puncher {ObjectRef}, pointed_thing))",
        type = "function",
        returns = "Called when a node is punched."   
      },
      register_on_respawnplayer = {
        args = "(function(player {ObjectRef}))",
        type = "function",
        returns = "Called when player is to be respawned. Called before repositioning of player occurs. return true in function to disable regular player placement."
      },
      register_on_shutdown = {
        args = "(function())",
        type = "function",
        returns = "Called before server shutdown. Must not be used for data backups, since on server crashes call backs are often not called"
      },
      register_ore = {
        type = "function",
        args = "({ore definition})",
        returns = "returns an integer uniquely identifying the registered ore | added to `minetest.registered_ores` with the key of `ore.name` | if `ore.name` is nil, the key is the returned ID",},
      register_privilege = {
        args = "(\"name\", privilege definition {description text, give_to_singleplayer (assumed true unless otherwise specified)})",
        type = "function",
        returns = "Registers privilege."
      },      
      register_schematics = {
          type = "function",
          args = "({schematic definition})",
          returns = [[* returns an integer uniquely identifying the registered schematic
    * added to `minetest.registered_schematic` with the key of `schematic.name`
    * if `schematic.name` is nil, the key is the returned ID
    * if the schematic is loaded from a file, schematic.name is set to the filename
    * if the function is called when loading the mod, and schematic.name is a relative path,
    * then the current mod path will be prepended to the schematic filename]]},
      register_tool= {
        type = "function",
        args = "(name, node definition)",
        returns = "added to `minetest.registered_items[name]`",
        description = "Registers a tool, examples are picks, axes, swords, and shovels. "},
      remove_node = {
        args = "(pos { x y z })",
        type = "function",
        returns = "Set Block at pos to air",
      },
      request_shutdown = { args = "()" , type = "function", returns = "Request for server shutdown. "
      },
      rollback_get_node_actions = {
        args = "(pos { x y z }, range, seconds, limit)",
        type = "function",
        returns = "Find who has done something to a node, or near a node in the passed number of seconds.",
        description  = [[Returns a list of actions, limited in size by limit, each containing the fields:
    actor — string, like "player:<name>" or "liquid".
    pos — position
    time — integer
    oldnode — node
    newnode — node ]]
      },
      rollback_revert_actions_by = { --TODO Claim
        args = "(actor, seconds)",
        returns = "Revert latest actions of someone. Returns boolean if succesfull and {log messages}.",
        type = "function",
      },
      rotate_and_place = {
        args = "({itemstack}, placer {ObjectRef}, pointed_thing, infinitestacks, orient_flags)",
        type = "function",
        returns = [[Attempts to predict the desired orientation of the facedir-capable node defined by itemstack, and places it accordingly (on-wall, on the floor, or hanging from the ceiling). Stacks are handled normally if the infinitestacks field is false or omitted (else, the itemstack is not changed). orient_flags is an optional table containing extra tweaks to the placement code:
    - invert_wall: if true, place wall-orientation on the ground and ground-orientation on the wall.
    - force_wall: if true, always place the node in wall orientation.
    - force_ceiling: if true, always place on the ceiling.
    - force_floor: if true, always place the node on the floor. 
    The above four options are mutually-exclusive; the last in the list takes precedence over the first.
    - force_facedir: if true, forcefully reset the facedir to north when placing on the floor or ceiling ]]
        },
      rotate_node = {
        args = "({itemstack}, placer {ObjectRef}, pointed_thing)",
        type = "function",
        returns = "calls minetest.rotate_and_place() with infinitestacks set according to the state of the creative mode setting, and checks for \"sneak\" to set the invert_wall parameter. "
      },
      serialize = {
        args = "({data})",
        type = "function",
        returns = "Converts a table and its content recrusivly into the string form readable by minetest.deserialize()"
      },
      set_gen_notify = {
        args = "(flag1, flag2, ...)",
        type = "function",
        returns = "Once a type of structure is generated and has a set flag admin in notified. Mostly for debug usage."
      },
      set_mapgen_params = { 
        args = "({ mgname , seed, water_level = , flags (formated as \"mg_flags\" in minetest.conf) })",
        type = "function",
        returns = "Sets map generation parameters. Calling is only possible in on_mapgen_init. mgname is one of the following \"singlenode\", \"v6\", \"v7\""
      },
      set_node = {
        args = "(pos { x y z}, node {name , ...})",
        type = "function",
        returns = "set_node(pos, node)"
      },
      set_node_level = {
        args = "(pos { x y z }, level)",
        type = "function",
        returns = "Set level of leveled node, default level = 1, if totallevel > maxlevel returns rest (total-max)."
      },
      set_noiseparam_defaults = {
        args = "({ np1 = NoiseParams, np2 = NoiseParams, ... })",
        type = "function",
        returns = "Sets the default value of a noiseparam setting. The argument maps one or more setting names to NoiseParams structures. Possible setting names consist of any NoiseParams setting exposed through the global settings."
      },
      set_player_password = {
        args = "(\"name\", \"password_hash\")",
        type = "function",
        returns = "Sets the password of the player. PLEASE STORE HASHES (generate them with get_password_hash(\"name\", \"raw password\")) AND NOT THE PASSWORD, EVEN WHEN PASSWORD FILE IS STOLEN THE ATTACKER HAS TO DE-HASH THE PASSWORDS TO LOGIN WHICH IS VERY, VERY EXPENSIVE IN TERMS OF CALCULATION."
      },
      set_player_privs = {
        args = "(playername, {privsallowed = true, privsforbidden = false, privsnotmentioned = false})",
        type = "function",
        returns = "Sets privs of a player, when you want to just change the privs make sure to get the player privs by calling minetest.get_player_privs(playername) first"
      },
      set_timeofday = {
        args = "(timeofday)",
        type = "function",
        returns = "Sets time of day"
      },
      setting_get = {
      args = "(option_name)",
      type = "function",
      returns = "value for option stored in Minetest.conf"
      },
      setting_get_pos = {
        args = "(position_name)",
        type = "function",
        returns = "Returns the position that is stored in minetest.conf under the variable name, or nil if the value is not found."
      },
      setting_getbool = {
        args = "(settings_name)",
        type = "function",
        returns = "Returns either the boolean that is stored in minetest.conf under name, or nil if the variable is not found. If this function reads a string and the string equals any of y, yes, true, or 1, then it is considered true; else, it is considered false."
      },
      setting_save = {
        args = "()",
        type = "function",
        returns = "Writes all settings to the config file"
      },
      setting_set = { --TODO find out if setting_save must be called 
        args = "(setting_name, value)",
        type = "function",
        returns = "Stores value as a simple string under name in minetest.conf."
      },
      setting_setbool = { 
        args = "(setting_name, value)",
        type = "function",
        returns = "Sets setting_name to value in the minetest configuration."
      },
      show_formspec = {
        args = "(playername, formname, formspecstring)",
        type = "function",
        returns = "Shows formspec to player. Keep formname for .on_player_receive_fields callbacks if it has buttons."
      },
      sound_play = {
        args = "(filename or {name = filename, gain }, {gain , max_hear_distance, loop, pos {x y z }, to_player playername, object (needed for looping) {ObjectRef}})",
        type = "function",
        returns = "Plays sound where specified, gain is float value. Returns handle necesassry to stop looped sounds"
      },
      sound_stop = {
        args = "(handle)",
        type = "function",
        returns = "Stop sound with the passed handle"
      },
      spawn_item = { 
        args = "(pos { x y z }, item_name)",
        type = "function",
        returns = "This function spawns a __builtin:item at pos and returns its object."
      },
      spawn_tree = {
        args = "(pos { x y z }, tree)",
        type = "function",
        returns = "Spawns an L-system tree at position pos, using the tree definition tree."
      },
      splittext = {
        args = "(text, charlimit)",
        type = "function",
        returns = "Returns a table of strings. Usefull to break lines of a text for a fixed with"
      },
      string_to_pos = {
        args = "(string)",
        type = "function",
        returns = "Converts a position string back to a position."
      },
      string_to_privs = {
        args = "(string)",
        type = "function",
        returns = "Returns a list of privileges {priv1=true, …}",
      },
      swap_node = {
        args = "(pos { x y z}, node{ name })",
        type = "function",
        returns = "Sets node at pos, without touching metadata or calling callbacks"
      },
      transforming_liquid_add = {
        args = "(pos)",
        type = "function",
        returns = "Add pos at node to the update queue for liquids, needed when low-lovel interaction with lava or water took place."
      },
      unban_player_or_ip = {
        args = "(name_or_ip)",
        type = "function",
        returns = "Unban player or IP address."
      },
      write_json = {
        args = "(data , optimized_for_human_readabilty?)",
        valuetype = "JSON",
        returns = "Converts a Lua table into a JSON string, functions and userdata are treated as null. You can not mix sting and integer keys, since JSON has no LUA tables, just arrays(positiv nummeric keys) and objects (string like keys)",
        type = "function"
      },
    }
  },
  string = {
    type = "class",
    childs = {
      split = {
        args = "(string , separator)",
        type = "function",
        valuetype = "table",
        returns = "table of substrings without seperators"
      },
      trim = {
        args = "trim(string)",
        type = "function",
        valuetype = "string",
        returns = "Removes whitespace from the beginning and end of the given string."
      },
      find = {
        args = "(s, pattern [, index [, plain]])",
        type = "function",
        returns = "Find the first occurrence of the pattern in the string passed. If an instance of the pattern is found a pair of values representing the start and end of the string is returned. If the pattern cannot be found nil is returned. "
      },
      len = {
        type = "function",
        returns = "Lenght of the string",
        args = "(string)"
      },
      gsub = {--TODO
        type = "function",
        args = "(s, pattern, replace [, n])",
        returns = "This is a very powerful function and can be used in multiple ways. Used simply it can replace all instances of the pattern provided with the replacement. A pair of values is returned, the modified string and the number of substitutions made. The optional fourth argument n can be used to limit the number of substitutions made."
      },
      upper = {
        type = "function",
        args = "(string)",
        returns = "String in upercase",
        valuetype = "String"
      },
      sub = { --TODO
        type = "function",
        args = "(string , string) ?",
        returns = "String",
        valuetype = "string",
      },
      char = {
        type = "function",
        args = "(numner, ....)",
        returns = "Returns String for charcodes"
      },
      rep = {
        returns = " Generate a string which is n copies of the string passed concatenated together. ",
        args = "(string, number)",
        valuetype = "String",
        type = "function"
      },
      lower = {
        type = "function",
        args = "(string)",
        valuetype = "string",
        returns = "String in lower case"
      },
      dump = {
        type = "function",
        args = "(function)",
        returns = "Returns a binary representation of the given function, so that a later loadstring on that string returns a copy of the function. Function must be a Lua function without upvalues."
      },
      gmatch = {
        args = "gmatch(s, pattern)",
        type = "function",
        returns = "Boolean if pattern is fullfilled"
      },
      reverse = {
        args = "(string)",
        valuetype = "string",
        type = "function",
        returns = "Reversed string"
      },
      byte = {
        args ="(string, index_1 index_2)",
        type = "function",
        returns = "Return the numerical code the i-th through j-th character of the string passed. If no index given first character is assumed"
      },
      match  = {
        args = "(s, pattern [, index])",
        type = "function",
        returns = "Extract substrings by matching patterns."
      },
      gfind = {
        type = "function"},
      format = {
        args = "(format, Input1, Input2, ...)",
        type = "function",
        returns = "Create a formatted string from the format and arguments provided. An additional option %q puts quotes around a string argument's value.",
        description = "c, d, E, e, f, g, G, i, o, u, X, and x all expect a number as argument. q and s expect a string."
      },
    
      
      
    }
  },
  vector = {
    type = "class",
    childs = {
      new = {
        args = "(x , y , z)",
        type = "function",
        valuetype = "vector",
        returns = "Returns a new Vector, if z , y or x are not provided 0 is assumed" --TODO
      },
      direction = {
        args = "(pos { x y z }, pos {x y z })",
        type = "function",
        valuetype = "vector",
        returns = "Returns a vector, describing the path connecting both point"
      },
      distance = {
        args = "(p1 { x y z }, p2 { x y z })",
        type = "function",
        returns = "Distance of two nodes"
      },
      length= {
        args = "(v { x y z })",
        type = "function",
        returns = "Lenght of the Vector (Distance between {0,0,0} and Vector))"
      },
      normalize = {
        args = "(v { x y z })",
        type = "function",
        valuetype = "vector",
        returns = "Returns vector where every value is divided by the vector lenght"
      },
      round = {
        returns = "Applies round to x y and returns the resulting vector",
        args = "(v { x y z })",
        valuetype = "vector",
        type = "function",
      },
      equals = {
        args = "( v1 { x y z }, v2 { x y z })",
        returns = "Boolean",
        type = "function"
      },
      add = {
        args = "(v { x y z }, x { x y z } or number)",
        type = "function",
        valuetype = "vector",
        returns = "Returns vector sum"
      },
      subtract = {
        args = "(v { x y z }, x { x y z } or number)",
        type = "function",
        valuetype = "vector",
        returns = "Returns vector differnce"
      },
      multiply = {
        args = "(v { x y z }, x { x y z } or number)",
        type = "function",
        valuetype = "vector",
        returns = "Returns vektor product"
      },
      divide = {
        args = "(v { x y z }, x { x y z } or number)",
        type = "function",
        valuetype = "vector",
        returns = "Returns vertor quotient. DO NOT DIVIDE BY 0"
      },
    }
  },
  node = {type = "keyword", description = "{node_name, param1 num, param2 num}" },
  pointed_thing = { type = "class", description = "{type = …, under = …, above = …, ref = …}",
  },
  NodeMetaRef = {
    type = "class",
    childs = {
      from_table = {
        args = "(nil or {inventory})",
        type = "method",
      },
      get_float = {
        args = "(name)",
        type = "method",
        returns = "Returns name"
      },
      get_int = {
        args = "(name)",
        type = "method",
        returns = "Returns name"
      },
      get_string = {
        args = "(name)",
        type = "method",
        valuetype = "string",
        returns = "Returns name"
      },
      get_inventory = {
        args = "(name)",
        type = "method",
        valuetype = "InvRef",
        returns = "Returns name"
      },
      set_float = {
         args = "(name, value)",
         type = "method",
         returns = "Sets name to value"
      },
      set_int = {
         args = "(name, value)",
         type = "method",
         returns = "Sets name to value"
      },
      set_string = {
         args = "(name, value)",
         type = "method",
         returns = "Sets name to value"
      },
      to_table = {
        args = "()",
        type = "method",
        returns = " {fields = {...}, inventory = {list1 = {}, ...}}"
      },
    },
  },
  VoxelManip = {
    type = "class",
    childs = {
      read_from_map = {
        args = "(p1 { x y z }, p2 { x y z})",
        type = "method",
        returns = "Reads a chunk of map from the map containing the region formed by p1 and p2.",
        description = "returns actual emerged pmin, actual emerged pmax"
      },
      write_to_map = {
        args = "()",
        type = "method",
        returns = "Writes the data loaded from the VoxelManip back to the map. ",
        description = "important: data must be set using VoxelManip:set_data before calling this"
      },
      get_data  = {
        args = "()",
        type = "method",
        returns = "Gets the data read into the VoxelManip object ",
        descrition = "returns raw node data is in the form of an array of node content ids"
      },
      set_data = {
        args = "(dada)",
        type = "method",
        returns = "Sets the data content of the VoxelManip object",
      },
      update_map = {
        args = "()",
        type = "method",
        returns = "Update map after writing chunk back to map. ",
        description = "To be used only by VoxelManip objects created by the mod itself "
      },
      read_from_map = {
        args = "({day <0...15>, night <0...15>}, p1 { x y z }, p2 { x y z})",
        type = "method",
        returns = "Reads a chunk of map from the map containing the region formed by p1 and p2.",
        description = "returns actual emerged pmin, actual emerged pmax"
      },
    }
  },
  ActiveObject = {type = "keyword"},
  InvRef = {
    type = "class",
    childs = {
      is_empty = {
        args = "(listname)",
        type = "method",
        returns = "return true if list is empty "
      },
      get_size = {
        args = "(listname)",
        type = "method",
        returns = "get size of a list "
      },
      get_width = { 
        args = "(listname)",
        type = "method",
        returns = "get width of a list"
      },
      get_list = {
        args = "(listname)",
        type = "method",
        returns = "return full list"
      },
      get_stack = {
        args = "(listname, i)",
        type = "method",
        returns = "get a copy of stack index i in list",
      },
      set_size = {
        args = "(listname, size)",
        type = "method",
        returns = "set size of a list"
      },
      set_width = { 
        args = "(listname, width)",
        type = "method",
        returns = "get width of a list"
      },
      set_list = {
        args = "(listname, list)",
        type = "method",
        returns = "return full list"
      },
      set_stack = {
        args = "(listname, i, stack)",
        type = "method",
        returns = "copy stack to index i in list"
      },
      room_for_item = {
        args = "(listname, stack)",
        type = "method",
        returns = "returns true if the stack of items can be fully added to the list",
      },
      contains_item = {
        args = "(listname, stack)",
        type = "method",
        returns = "returns true if the stack of items can be fully taken from the list"
      },
      remove_item = {
        args = "(listname, stack)",
        type = "method",
        returns = "take as many items as specified from the list, returns the items that were actually removed (as an ItemStack)"
      },
    },
  },
  ObjectRef = {
    type = "class",
    childs = {
      getpos = {
        args = "()",
        type = "method",
        returns = "Vektor",
        valuetype = "vector"
      },
      get_armor_groups = {
        args = "()",
        type = "method",
        returns = "{group1=rating, group2=rating, ...}"
      },
      get_hp = {
        args = "()",
        type = "method",
        returns = "returns number of hitpoints (2 * number of hearts)."
      },
      get_inventory = {
        args = "()",
        type = "method",
        returns = "returns the InvRef of the object.",
        valuetype = "InvRef"
      },
      get_wielded_item = {
        args = "()",
        type = "method",
        returns = [[returns the wielded item (ItemStack). This is essentially just a pseudonym for object:get_inventory():get_stack(object:get_wield_list(), object:get_wield_index()) so please note the caveats for inventory manipulation (changes will need to be /"committed/" by calling object:set_wielded_item(modifiedStack) after modifying the stack unless they are done in the context of a callback that implicitly modifies the stack; see minetest.register_node#on_use).]],
      },
      get_wield_index = {
        args = "()",
        type = "method",
        returns = "returns the index of the wielded item"
      },
      get_wield_list = {
        args = "()",
        type = "method",
        returns = "returns the name of the inventory list the wielded item is in",
      },
      moveto = {
        args = "(pos, continuous=false)",
        type = "method",
        returns = "interpolated move"
      },
      punch = {
        args = "(puncher {ObjectRef}, time_from_last_punch, tool_capabilities, direction)",
        type = "method",
        returns = "Does a punch"
      },
      remove = {
        args = "()",
        type = "method",
        returns = "remove object (after returning from Lua)",
      },
      right_click = { 
        args = "(clicker {ObjectRef})",
        type = "method",
        returns = "Performs a right clock"
      },
      setpos = {
        args = "(pos)",
        type = "method",
        returns = "Sets a position"
      },
      set_armor_groups = {
        args = "({group1=rating, group2=rating, ...})",
        type = "method",
        returns = "Set armor groups"
      },
      set_hp = {
        args = "(hp)",
        type = "method",
        returns = "set number of half harts"
      },
      set_properties = {
        args = "({object property table})",
        type = "method",
        returns = "Set Object Properties",
      },
      set_wielded_item = {
        args = "(item)",
        returns = "replaces the wielded item, returns true if successful",
        type = "method"
      },
      set_animation  = {
        args = "({x=1,y=1}, frame_speed=15, frame_blend=0)",
        returns = "sets animation",
        type = "method"
      },
      set_attach = {
        args = "(parent, \"\", {x=0,y=0,z=0}, {x=0,y=0,z=0})",
        type = "method",
        returns = "set attachment of nodes"
      },
      set_detach = {
        args = "()",
        type = "method",
        returns = "Detaches node"
      },
      set_bone_position = {
        args = "(\"\", {x=0,y=0,z=0}, {x=0,y=0,z=0})",
        type = "method",
      },
    },
  },
   
  LuaEntitySAO = {
    type = "class",
    inherits = "ObjectRef",
    childs = {
      getacceleration = {
        args = "()",
        type = "method",
        returns = "acceleration {x=num, y=num, z=num}",
        valuetype = "vector"
      },
      getvelocity = {
        args = "()",
        type = "method",
        returns = "velocity {x=num, y=num, z=num}",
        valuetype = "vector"
      },
      getyaw = {
        args = "()",
        type = "method",
        returns =  "yaw in radians",
      },
      get_luaentity = {
        args = "()",
        type = "method",
        returns = "returns luaentity"
      },
      setacceleration = {
        args = "({x=num, y=num, z=num})",
        type = "method",
        returns = "Sets acceleration"
      },
      setsprite = {
        args = "(p={x=0,y=0}, num_frames=1, framelength=0.2, select_horiz_by_yawpitch=false)",
        returns = "Select sprite from spritesheet with optional animation and DM-style texture selection based on yaw relative to camera",
        type = "method"
      },
      settexturemod = { --TODO
        args = "(mod)",
        type = "method",
      },
      setvelocity = {
        args = "({x=num, y=num, z=num})",
        type = "method",
        returns = "Set velocity"
      },
      setyaw = {
        args = "(radians)",
        type = "method",
        returns = "set yaw"
      },
    },
  },
  player = {
    type = "class",
    inherits = "ObjectRef",
    childs = {
      get_inventory_formspec = {
        args = "()",
        type = "method",
        returns = "returns formspec string",
        valuetype = "string"
      },
      get_look_dir = {
        args = "()",
        type = "method",
        returns = "get camera direction as a unit vector",
        valuetype = "vector"
      },
      get_look_pitch = {
        args = "()",
        type = "method",
        returns = "pitch in radians"
      },
      get_look_yaw = {
        args = "()",
        type = "method",
        returns = "yaw in radians (wraps around pretty randomly as of now)"
      },
      set_look_yaw = {
        args = "(yaw)",
        type = "method",
        returns = "changes player yaw. Parameter has the same meaning as the return value of get_look_yaw, but it has an offset against get_look_yaw of math.pi/2",
      },
      get_player_control = {
        args = "()",
        type = "method",
        returns = "Returns table with player's pressed keys.",
        description = [[{jump=bool, right=bool, left=bool, LMB=bool, RMB=bool, sneak=bool, aux1=bool, down=bool, up=bool}]]
      },
      get_player_control_bits = {
        args = "()",
        type = "method",
        returns = "Returns an integer bitfield with player's pressed keys.",
        description = "Bits: 0/up, 1/down, 2/left, 3/right, 4/jump, 5/aux1, 6/sneak, 7/LMB, 8/RMB"
      },
      get_player_name = {
        args = "()",
        type = "method",
        returns = "returns \"\" if is not a player"
      },
      is_player = {
        args = "()",
        type = "method",
        returns = "true for players, false for others"
      },
      set_inventory_formspec = {
        args = "(string)",
        type = "method",
        returns = "redefine player's inventory form. Should usually be called by using minetest.register_on_joinplayer()."
      },
      set_sky = {
        args = "(bgcolor {r=0...255, g=0...255, b=0...255},  \"regular\", \"skybox\", \"plain\", {texture names})",
        type = "method",
        returns = "sets sky colour for player"
      },
      get_breath = {
        args = "()",
        type = "method",
        returns = "returns players breath"
      },
      set_breath = {
        args = "(value)",
        type = "method",
        returns = "returns 0 when player is drowing, 1-10 for bubble number, 11 bubblle bar is not shown",
      },
      set_physics_override = {
        args = "({speed-mulitplayer, jump-mulitplayer, gravity-mulitplayer, sneak boolean, sneak_glicht boolean})",
        type = "method",
        returns = "set physics for player"
      },
      hud_add = {
        args = "(hud definition)",
        type = "method",
        returns = "Shows a HUD element to the player"
      },
      hud_change = {
        args = "(id, stat, value)",
        type = "method",
        returns = "Changes a HUD element shown to the player"
      },
      hud_remove = {
        args = "(id)",
        type = "method",
        returns = "Removes a HUD element shown to the player"
      },
      hud_get = {
        args = "(id)",
        type = "method",
        returns = "Gets a HUD element definition",
        valuetype = "HUD",
      },
      hud_set_flags = {
        args = "(flags)",
        type = "method",
        returns = "Sets specified HUD flags to true/false",
        description = "flags: (is visible) hotbar, healthbar, crosshair, wielditem. Pass a table containing a true/false value of each flag to be set or unset. if a flag is nil, the flag is not modified"
      },
      hud_get_flags = {
        args = "()",
        type = "method",
        returns = "Returns a table containing the status of HUD flags"
      },
      hud_set_hotbar_itemcount = {
        args = "(count)",
        type = "method",
        returns = "Set number of items in builtin hotbar which has at maximum 23 slots",
      },
      hud_set_hotbar_image = {
        args  = "(texturename)",
        type = "method",
        returns = "Sets background image for hotbar"
      },
      hud_set_hotbar_selected_image = {
        args = "(texturename)",
        type = "method",
        returns = "Sets image for hotbar selected item"
      },
      hud_replace_builtin = {
        args = "(name, hud definition)",
        type = "method",
        returns = "Replace the definition of a builtin HUD element"
      },
      override_day_night_ratio = {
        args = "(ratio)",
        type = "method",
        returns = "Overrides day/night ratio, controlling sunlight to a specific amount. Nil to reset value is float from 0. to 1"
      },
      set_eye_offset = {
        args = "(pos1p {vector}, pos3p {vector})",
        returns = [[Defines camera offset value for player. Offsets are relative to the default camera position for the given view, not relative to the player's position as returned by getpos() and not relative to previous calls (so using {x=0,y=0,z=0} resets to the default position for the view). Offset vectors are in a left-handed coordinate system where x is toward the player's right, y is up, and z is toward the player's front.]],
        type = "method",
      },
      set_local_animation = {
        args = "({x=0, y=79}, {x=168, y=187}, {x=189, y=198}, {x=200, y=219}, frame_speed=30)",
        type = "method",
        returns = "Sets animation for player model in third person view."
      },
    },
  },
  HUD = {
    type = "class",
    childs = {
      hud_add = {
        args = "(hud definition)",
        type = "method",
        returns = "Shows a HUD element to the player"
      },
      hud_change = {
        args = "(id, stat, value)",
        type = "method",
        returns = "Changes a HUD element shown to the player"
      },
      hud_remove = {
        args = "(id)",
        type = "method",
        returns = "Removes a HUD element shown to the player"
      },
      hud_get = {
        args = "(id)",
        type = "method",
        returns = "Gets a HUD element definition",
        valuetype = "HUD",
      },
      hud_set_flags = {
        args = "(flags)",
        type = "method",
        returns = "Sets specified HUD flags to true/false",
        description = "flags: (is visible) hotbar, healthbar, crosshair, wielditem. Pass a table containing a true/false value of each flag to be set or unset. if a flag is nil, the flag is not modified"
      },
      hud_get_flags = {
        args = "()",
        type = "method",
        returns = "Returns a table containing the status of HUD flags"
      },
      hud_set_hotbar_itemcount = {
        args = "(count)",
        type = "method",
        returns = "Set number of items in builtin hotbar which has at maximum 23 slots",
      },
      hud_set_hotbar_image = {
        args  = "(texturename)",
        type = "method",
        returns = "Sets background image for hotbar"
      },
      hud_set_hotbar_selected_image = {
        args = "(texturename)",
        type = "method",
        returns = "Sets image for hotbar selected item"
      },
      hud_replace_builtin = {
        args = "(name, hud definition)",
        type = "method",
        returns = "Replace the definition of a builtin HUD element"
      },
    },
  },
  PerlinNoiseMap = {
    type = "class",
    childs = {
      get2dMap = {
        args = "(pos)",
        type = "method",
        returns = "size.x x size.y 2d array of 2d noise values starting at pos={x=,y=}}}",
      },
      get3dMap = {
        args = "(pos)",
        type = "method",
        returns = "size.x x size.y x size.z 3d array of 3d noise values starting at pos={x=,y=,z=}",
      },
      get2dMap_flat = {
        args = "(pos)",
        type = "method",
        returns = "Flat size.x * size.y element array of 2d noise values starting at pos={x=,y=}"
      },
      get3dMap_flat = {
        args = "(pos)",
        type = "method",
        returns = "Same as get2dMap_flat, but 3d noise"
      },
    },
  },
}
return a