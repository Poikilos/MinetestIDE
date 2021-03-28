#!/bin/bash
echo
zs_dest=/opt/zbstudio
if [ "$1" == "uninstall" ]; then
  bad_file="$zs_dest/zbstudio/interpreters/minetest.lua"
  dest_file="$zs_dest/interpreters/minetest.lua"
  if [ -f "$bad_file" ]; then
    echo "WARNING: found incorrectly installed file $bad_file, so removing..."
    sudo rm -f "$bad_file"
    sudo rmdir "$zs_dest/zbstudio/interpreters"
    if [ -f "$bad_file" ]; then
      echo "ERROR: Failed to remove $bad_file"
      end_msg="Uninstall FAILED."
      end_ret=1
    fi
  fi
  if [ -f "$dest_file" ]; then
    sudo rm -f "$dest_file"
    sudo rmdir "$zs_dest/interpreters"
  fi
  end_msg="Uninstalled successfully"
  end_ret=0
  if [ -f "$dest_file" ]; then
    echo "ERROR: could not remove $dest_file"
    echo
    echo
    end_ret=1
    end_msg="Uninstall FAILED."
  fi

  bad_file="$zs_dest/zbstudio/api/lua/minetest.lua"
  dest_file="$zs_dest/api/lua/minetest.lua"
  if [ -f "$bad_file" ]; then
    echo "WARNING: found incorrectly installed file $bad_file, so removing..."
    sudo rm -f "$bad_file"
    sudo rmdir "$zs_dest/api/lua"
    sudo rmdir "$zs_dest/api"
    if [ -f "$bad_file" ]; then
      echo "ERROR: Failed to remove $bad_file"
      end_msg="Uninstall FAILED."
      end_ret=1
    fi
  fi
  if [ -f "$dest_file" ]; then
    sudo rm -f "$dest_file"
    sudo rmdir "$zs_dest/zbstudio/api/lua"
    sudo rmdir "$zs_dest/zbstudio/api"
  fi
  if [ -f "$dest_file" ]; then
    echo "ERROR: could not remove $dest_file"
    echo
    echo
    end_msg="Uninstall FAILED."
    end_ret=1
  fi
  echo "$end_msg"
  echo
  echo
  exit $end_ret
fi
printf "* checking installer..."
good_src_flag="zbstudio/interpreters/minetest.lua"
#if [ ! -d zbstudio ]; then
#  cd "${0%/*}"
#  if [ -f "$good_src_flag" ]; then
#      echo "WARNING: had to change directory to `pwd` since zbstudio patch directory was not found..."
#  fi
#fi
if [ ! -f "$good_src_flag" ]; then
  echo "ERROR: Nothing done since missing zbstudio patch--you must run this installer from the MinetestIDE directory containing \"$good_src_flag\"."
  echo
  echo
  exit 1
fi
echo "OK (found \"$good_src_flag\" in \"`pwd`\")"
mi_path="`pwd`"
end_msg=""
if [ ! -d "$zs_dest" ]; then
  echo "* installing zbstudio to $zs_dest..."
  if [ ! -d "$HOME/Downloads" ]; then
    mkdir -p "$HOME/Downloads"
    if [ $? -ne 0 ]; then
      echo "Error: 'mkdir -p \"$HOME/Downloads\"' failed"
      exit 1
    fi
  fi
  cd "$HOME/Downloads"
  dl_name=ZeroBraneStudioEduPack-1.80-linux.sh
  URL=https://download.zerobrane.com/$dl_name
  if [ ! -f "$dl_name" ]; then
    if [ ! -f "`command -v wget`" ]; then
      echo "Error: This script requires wget unless \"$dl_name\" is in \"`pwd`\"."
      exit 1
    fi
    echo "* downloading $URL..."
    wget -O $dl_name $URL
    if [ $? -ne 0 ]; then
      echo "Error: 'wget -O $dl_name $URL' failed in \"`pwd`\""
      exit 1
    fi
    echo "* running '$dl_name' in \"`pwd`\"..."
    sh $dl_name
    if [ $? -ne 0 ]; then
      echo "Error: 'sh $dl_name' failed in \"`pwd`\""
      exit 1
    fi
    if [ ! -d "$zs_dest" ]; then
      echo "ERROR: MinetestIDE not installed since failed to install $zs_dest"
      echo
      echo
      exit 2
    fi
    end_msg="If you paid for ZeroBrane Studio, thank you for your contribution. If you have not, please consider supporting the project <https://studio.zerobrane.com/support>."
  fi
else
  echo "* detected $zs_dest"
fi
if [ ! -d "$zs_dest" ]; then
  echo "ERROR: nothing done since missing $zs_dest."
  echo "You first must install ZeroBrane studio (See readme)."
  exit 3
fi
cd "$mi_path"
if [ $? -ne 0 ]; then
  echo "Error: 'cd \"$mi_path\"' failed in \"`pwd`\""
  exit 1
fi
if [ ! -f "`command -v rsync`" ]; then
  #echo "ERROR: Nothing done since rsync is required."
  #exit 5
  echo "WARNING: no rsync, so trying cp -R..."
  api_lua_dest="$zs_dest/api/lua"
  interpreters_dest="$zs_dest/interpreters"
  # if [ ! -d "$api_lua_dest" ]; then sudo mkdir -p "$api_lua_dest"; fi
  # if [ ! -d "$interpreters_dest" ]; then sudo mkdir -p "$interpreters_dest"; fi
  sudo cp -R zbstudio/* "$zs_dest"
  if [ ! -f "$api_lua_dest/minetest.lua" ]; then
    echo "ERROR: failed to install $api_lua_dest/minetest.lua"
    find "$zs_dest" -iname minetest.lua
    exit 4
  fi
  if [ ! -f "$interpreters_dest/minetest.lua" ]; then
    echo "ERROR: failed to install $interpreters_dest/minetest.lua"
    find "$zs_dest" -iname minetest.lua
    exit 4
  fi
  echo "Successfully installed. See README for manual steps needed in GUI."
else
  printf "* installing patches to \"$zs_dest\"..."
  sudo rsync -rt zbstudio/ $zs_dest
  if [ $? -ne 0 ]; then
    echo "FAILED"
    exit 1
  else
    echo "OK"
  fi
fi
echo "$end_msg"
echo
echo
