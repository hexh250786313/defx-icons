const fs = require("fs");

// 读取 Lua 文件
const luaData = fs.readFileSync("input.lua", "utf8");

// 使用正则表达式替换字符串
let vimData = luaData.replace(/\["(.*?)"\]/g, "\\ '$1'");
vimData = vimData.replace(/\ =/g, ":");
vimData = vimData.replace(/(?<=(,|{))\n.* icon/g, " 'icon'");
vimData = vimData.replace(/(?<=(,|{))\n.* cterm_color/g, " 'term_color'");
vimData = vimData.replace(/(?<=(,|{))\n.* color/g, " 'color'");
vimData = vimData.replace(/(?<=(,|{))\n.* name.*\n.*}/g, " }");
vimData = vimData.replace(/"/g, "'");
vimData = vimData.replace(/\u0020'#/g, " '");

// 将结果写入 Vim 文件
fs.writeFileSync("output.vim", vimData);
