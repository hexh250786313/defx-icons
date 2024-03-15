scriptencoding utf-8
if exists('g:loaded_defx_icons')
  finish
endif
let g:loaded_defx_icons = 1

let s:enable_syntax_highlight = get(g:, 'defx_icons_enable_syntax_highlight', 1)
let s:column_length = get(g:, 'defx_icons_column_length', 1)
let s:parent_icon = get(g:, 'defx_icons_parent_icon', '')
let s:directory_icon = get(g:, 'defx_icons_directory_icon', '')
let s:mark_icon = get(g: , 'defx_icons_mark_icon', '*')
let s:default_icon = get(g:, 'defx_icons_default_icon', '')
let s:directory_symlink_icon = get(g:, 'defx_icons_directory_symlink_icon', '')
let s:root_opened_tree_icon = get(g:, 'defx_icons_root_opened_tree_icon', '')
let s:nested_closed_tree_icon = get(g: ,'defx_icons_nested_closed_tree_icon', '')
let s:nested_opened_tree_icon = get(g: ,'defx_icons_nested_opened_tree_icon', '')
let s:copy_icon = get(g:, 'defx_icons_copy_icon', '󰆏')
let s:link_icon = get(g:, 'defx_icons_link_icon', '')
let s:move_icon = get(g:, 'defx_icons_move_icon', '󰆐')

let s:extensions = extend({
      \ 'Dockerfile': { 'icon': '󰡨', 'color': '458ee6', 'term_color': '68', },
      \ 'R': { 'icon': '󰟔', 'color': '2266ba', 'term_color': '25', },
      \ 'aac': { 'icon': '', 'color': '66D8EF', 'term_color': '45', },
      \ 'ai': { 'icon': '', 'color': 'cbcb41', 'term_color': '185', },
      \ 'app': { 'icon': '', 'color': '9F0500', 'term_color': '124', },
      \ 'applescript': { 'icon': '', 'color': '6d8085', 'term_color': '66', },
      \ 'awk': { 'icon': '', 'color': '4d5a5e', 'term_color': '240', },
      \ 'azcli': { 'icon': '', 'color': '0078d4', 'term_color': '32', },
      \ 'bak': { 'icon': '󰁯', 'color': '6d8086', 'term_color': '66', },
      \ 'bash': { 'icon': '', 'color': '89e051', 'term_color': '113', },
      \ 'bat': { 'icon': '', 'color': 'C1F12E', 'term_color': '191', },
      \ 'bazel': { 'icon': '', 'color': '89e051', 'term_color': '113', },
      \ 'bib': { 'icon': '󱉟', 'color': 'cbcb41', 'term_color': '185', },
      \ 'bmp': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'bzl': { 'icon': '', 'color': '89e051', 'term_color': '113', },
      \ 'c': { 'icon': '', 'color': '599eff', 'term_color': '111', },
      \ 'c++': { 'icon': '', 'color': 'f34b7d', 'term_color': '204', },
      \ 'cbl': { 'icon': '⚙', 'color': '005ca5', 'term_color': '25', },
      \ 'cc': { 'icon': '', 'color': 'f34b7d', 'term_color': '204', },
      \ 'ccm': { 'icon': '', 'color': 'f34b7d', 'term_color': '204', },
      \ 'cfg': { 'icon': '', 'color': 'ECECEC', 'term_color': '255', },
      \ 'cjs': { 'icon': '󰌞', 'color': 'F1F134', 'term_color': '227', },
      \ 'clj': { 'icon': '', 'color': '8dc149', 'term_color': '113', },
      \ 'cljc': { 'icon': '', 'color': '8dc149', 'term_color': '113', },
      \ 'cljs': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'cljd': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'cmake': { 'icon': '', 'color': '6d8086', 'term_color': '66', },
      \ 'cob': { 'icon': '⚙', 'color': '005ca5', 'term_color': '25', },
      \ 'cobol': { 'icon': '⚙', 'color': '005ca5', 'term_color': '25', },
      \ 'coffee': { 'icon': '', 'color': 'cbcb41', 'term_color': '185', },
      \ 'conf': { 'icon': '', 'color': '6d8086', 'term_color': '66', },
      \ 'config.ru': { 'icon': '', 'color': '701516', 'term_color': '52', },
      \ 'cp': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'cpp': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'cppm': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'cpy': { 'icon': '⚙', 'color': '005ca5', 'term_color': '25', },
      \ 'cr': { 'icon': '', 'color': 'c8c8c8', 'term_color': '251', },
      \ 'cs': { 'icon': '󰌛', 'color': '596706', 'term_color': '58', },
      \ 'csh': { 'icon': '', 'color': '4d5a5e', 'term_color': '240', },
      \ 'cshtml': { 'icon': '󱦗', 'color': '512bd4', 'term_color': '56', },
      \ 'cson': { 'icon': '', 'color': 'cbcb41', 'term_color': '185', },
      \ 'csproj': { 'icon': '󰪮', 'color': '512bd4', 'term_color': '56', },
      \ 'css': { 'icon': '', 'color': '42a5f5', 'term_color': '75', },
      \ 'csv': { 'icon': '', 'color': '89e051', 'term_color': '113', },
      \ 'cts': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'cu': { 'icon': '', 'color': '89e051', 'term_color': '113', },
      \ 'cuh': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'cxx': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'cxxm': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'd': { 'icon': '', 'color': '427819', 'term_color': '28', },
      \ 'dart': { 'icon': '', 'color': '03589C', 'term_color': '25', },
      \ 'db': { 'icon': '', 'color': 'dad8d8', 'term_color': '188', },
      \ 'desktop': { 'icon': '', 'color': '563d7c', 'term_color': '54', },
      \ 'diff': { 'icon': '', 'color': '41535b', 'term_color': '239', },
      \ 'doc': { 'icon': '󰈬', 'color': '185abd', 'term_color': '26', },
      \ 'docx': { 'icon': '󰈬', 'color': '185abd', 'term_color': '26', },
      \ 'drl': { 'icon': '', 'color': 'ffafaf', 'term_color': '217', },
      \ 'dropbox': { 'icon': '', 'color': '0061FE', 'term_color': '27', },
      \ 'dump': { 'icon': '', 'color': 'dad8d8', 'term_color': '188', },
      \ 'edn': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'eex': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'ejs': { 'icon': '', 'color': 'cbcb41', 'term_color': '185', },
      \ 'elf': { 'icon': '', 'color': '9F0500', 'term_color': '124', },
      \ 'elm': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'eot': { 'icon': '', 'color': 'ECECEC', 'term_color': '255', },
      \ 'epp': { 'icon': '', 'color': 'FFA61A', 'term_color': '214', },
      \ 'erb': { 'icon': '', 'color': '701516', 'term_color': '52', },
      \ 'erl': { 'icon': '', 'color': 'B83998', 'term_color': '163', },
      \ 'ex': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'exe': { 'icon': '', 'color': '9F0500', 'term_color': '124', },
      \ 'exs': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'f#': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'f90': { 'icon': '󱈚', 'color': '734f96', 'term_color': '97', },
      \ 'flac': { 'icon': '', 'color': '66D8EF', 'term_color': '45', },
      \ 'fnl': { 'icon': '', 'color': 'fff3d7', 'term_color': '230', },
      \ 'fish': { 'icon': '', 'color': '4d5a5e', 'term_color': '240', },
      \ 'fs': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'fsi': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'fsscript': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'fsx': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'gd': { 'icon': '', 'color': '6d8086', 'term_color': '66', },
      \ 'gemspec': { 'icon': '', 'color': '701516', 'term_color': '52', },
      \ 'gif': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'git': { 'icon': '', 'color': 'F14C28', 'term_color': '196', },
      \ 'glb': { 'icon': '', 'color': 'FFB13B', 'term_color': '214', },
      \ 'gnumakefile': { 'icon': '', 'color': '6d8086', 'term_color': '66', },
      \ 'go': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'godot': { 'icon': '', 'color': '6d8086', 'term_color': '66', },
      \ 'gql': { 'icon': '', 'color': 'e535ab', 'term_color': '199', },
      \ 'graphql': { 'icon': '', 'color': 'e535ab', 'term_color': '199', },
      \ 'h': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'haml': { 'icon': '', 'color': 'eaeae1', 'term_color': '255', },
      \ 'hx': { 'icon': '', 'color': 'ea8220', 'term_color': '208', },
      \ 'hbs': { 'icon': '', 'color': 'f0772b', 'term_color': '202', },
      \ 'heex': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'hh': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'hpp': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'hrl': { 'icon': '', 'color': 'B83998', 'term_color': '163', },
      \ 'hs': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'htm': { 'icon': '', 'color': 'e34c26', 'term_color': '196', },
      \ 'html': { 'icon': '', 'color': 'e44d26', 'term_color': '196', },
      \ 'huff': { 'icon': '󰡘', 'color': '4242c7', 'term_color': '56', },
      \ 'hurl': { 'icon': '', 'color': 'ff0288', 'term_color': '198', },
      \ 'hxx': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'ixx': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'ico': { 'icon': '', 'color': 'cbcb41', 'term_color': '185', },
      \ 'import': { 'icon': '', 'color': 'ECECEC', 'term_color': '255', },
      \ 'ini': { 'icon': '', 'color': '6d8086', 'term_color': '66', },
      \ 'ino': { 'icon': '', 'color': '56b6c2', 'term_color': '73', },
      \ 'ipynb': { 'icon': '', 'color': '51a0cf', 'term_color': '74', },
      \ 'java': { 'icon': '', 'color': 'cc3e44', 'term_color': '167', },
      \ 'jl': { 'icon': '', 'color': 'a270ba', 'term_color': '133', },
      \ 'jpeg': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'jpg': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'js': { 'icon': '󰌞', 'color': 'F1F134', 'term_color': '227', },
      \ 'json': { 'icon': '', 'color': 'cbcb41', 'term_color': '185', },
      \ 'json5': { 'icon': '', 'color': 'cbcb41', 'term_color': '185', },
      \ 'jsonc': { 'icon': '', 'color': 'cbcb41', 'term_color': '185', },
      \ 'jsx': { 'icon': '', 'color': '20c2e3', 'term_color': '45', },
      \ 'jxl': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'ksh': { 'icon': '', 'color': '4d5a5e', 'term_color': '240', },
      \ 'kt': { 'icon': '', 'color': '7F52FF', 'term_color': '99', },
      \ 'kts': { 'icon': '', 'color': '7F52FF', 'term_color': '99', },
      \ 'leex': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'less': { 'icon': '', 'color': '563d7c', 'term_color': '54', },
      \ 'lhs': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'license': { 'icon': '', 'color': 'cbcb41', 'term_color': '185', },
      \ 'liquid': { 'icon': '', 'color': '95BF47', 'term_color': '106', },
      \ 'lock': { 'icon': '', 'color': 'bbbbbb', 'term_color': '250', },
      \ 'log': { 'icon': '󰌱', 'color': 'dddddd', 'term_color': '253', },
      \ 'lua': { 'icon': '', 'color': '51a0cf', 'term_color': '74', },
      \ 'luau': { 'icon': '', 'color': '00a2ff', 'term_color': '75', },
      \ 'mpp': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'm4a': { 'icon': '', 'color': '66D8EF', 'term_color': '45', },
      \ 'm4v': { 'icon': '', 'color': 'FD971F', 'term_color': '208', },
      \ 'makefile': { 'icon': '', 'color': '6d8086', 'term_color': '66', },
      \ 'markdown': { 'icon': '', 'color': 'dddddd', 'term_color': '253', },
      \ 'material': { 'icon': '󰔉', 'color': 'B83998', 'term_color': '163', },
      \ 'md': { 'icon': '', 'color': 'dddddd', 'term_color': '253', },
      \ 'mdx': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'mint': { 'icon': '󰌪', 'color': '87c095', 'term_color': '108', },
      \ 'mjs': { 'icon': '󰌞', 'color': 'F1F134', 'term_color': '227', },
      \ 'mk': { 'icon': '', 'color': '6d8086', 'term_color': '66', },
      \ 'mkv': { 'icon': '', 'color': 'FD971F', 'term_color': '208', },
      \ 'ml': { 'icon': '', 'color': 'e37933', 'term_color': '166', },
      \ 'mli': { 'icon': '', 'color': 'e37933', 'term_color': '166', },
      \ 'mo': { 'icon': '∞', 'color': '9772FB', 'term_color': '135', },
      \ 'mov': { 'icon': '', 'color': 'FD971F', 'term_color': '208', },
      \ 'mp3': { 'icon': '', 'color': '66D8EF', 'term_color': '45', },
      \ 'mp4': { 'icon': '', 'color': 'FD971F', 'term_color': '208', },
      \ 'mts': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'mustache': { 'icon': '', 'color': 'e37933', 'term_color': '166', },
      \ 'nim': { 'icon': '', 'color': 'f3d400', 'term_color': '220', },
      \ 'nix': { 'icon': '', 'color': '7ebae4', 'term_color': '110', },
      \ 'nswag': { 'icon': '', 'color': '85ea2d', 'term_color': '112', },
      \ 'nu': { 'icon': '>', 'color': '3aa675', 'term_color': '36', },
      \ 'ogg': { 'icon': '', 'color': '66D8EF', 'term_color': '45', },
      \ 'opus': { 'icon': '󰈣', 'color': 'F88A02', 'term_color': '208', },
      \ 'org': { 'icon': '', 'color': '77AA99', 'term_color': '73', },
      \ 'otf': { 'icon': '', 'color': 'ECECEC', 'term_color': '255', },
      \ 'out': { 'icon': '', 'color': '9F0500', 'term_color': '124', },
      \ 'pck': { 'icon': '', 'color': '6d8086', 'term_color': '66', },
      \ 'pdf': { 'icon': '', 'color': 'b30b00', 'term_color': '124', },
      \ 'php': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'pl': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'pm': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'png': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'pp': { 'icon': '', 'color': 'FFA61A', 'term_color': '214', },
      \ 'ppt': { 'icon': '󰈧', 'color': 'cb4a32', 'term_color': '160', },
      \ 'prisma': { 'icon': '', 'color': '5a67d8', 'term_color': '62', },
      \ 'pro': { 'icon': '', 'color': 'e4b854', 'term_color': '179', },
      \ 'ps1': { 'icon': '󰨊', 'color': '4273ca', 'term_color': '68', },
      \ 'psd1': { 'icon': '󰨊', 'color': '6975c4', 'term_color': '68', },
      \ 'psm1': { 'icon': '󰨊', 'color': '6975c4', 'term_color': '68', },
      \ 'psb': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'psd': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'pxd': { 'icon': '', 'color': '5aa7e4', 'term_color': '39', },
      \ 'pxi': { 'icon': '', 'color': '5aa7e4', 'term_color': '39', },
      \ 'py': { 'icon': '', 'color': 'ffbc03', 'term_color': '214', },
      \ 'pyc': { 'icon': '', 'color': 'ffe291', 'term_color': '222', },
      \ 'pyd': { 'icon': '', 'color': 'ffe291', 'term_color': '222', },
      \ 'pyi': { 'icon': '', 'color': 'ffbc03', 'term_color': '214', },
      \ 'pyo': { 'icon': '', 'color': 'ffe291', 'term_color': '222', },
      \ 'pyx': { 'icon': '', 'color': '5aa7e4', 'term_color': '39', },
      \ 'query': { 'icon': '', 'color': '90a850', 'term_color': '107', },
      \ 'r': { 'icon': '󰟔', 'color': '2266ba', 'term_color': '25', },
      \ 'rake': { 'icon': '', 'color': '701516', 'term_color': '52', },
      \ 'razor': { 'icon': '󱦘', 'color': '512bd4', 'term_color': '56', },
      \ 'rb': { 'icon': '', 'color': '701516', 'term_color': '52', },
      \ 'res': { 'icon': '', 'color': 'cc3e44', 'term_color': '167', },
      \ 'resi': { 'icon': '', 'color': 'f55385', 'term_color': '204', },
      \ 'rlib': { 'icon': '', 'color': 'dea584', 'term_color': '216', },
      \ 'rmd': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'rproj': { 'icon': '󰗆', 'color': '358a5b', 'term_color': '29', },
      \ 'rs': { 'icon': '', 'color': 'dea584', 'term_color': '216', },
      \ 'rss': { 'icon': '', 'color': 'FB9D3B', 'term_color': '215', },
      \ 'sass': { 'icon': '', 'color': 'f55385', 'term_color': '204', },
      \ 'sbt': { 'icon': '', 'color': 'cc3e44', 'term_color': '167', },
      \ 'scad': { 'icon': '', 'color': 'f9d72c', 'term_color': '226', },
      \ 'scala': { 'icon': '', 'color': 'cc3e44', 'term_color': '167', },
      \ 'scm': { 'icon': '󰘧', 'color': 'eeeeee', 'term_color': '255', },
      \ 'scss': { 'icon': '', 'color': 'f55385', 'term_color': '204', },
      \ 'sh': { 'icon': '', 'color': '4d5a5e', 'term_color': '240', },
      \ 'sig': { 'icon': 'λ', 'color': 'e37933', 'term_color': '166', },
      \ 'slim': { 'icon': '', 'color': 'e34c26', 'term_color': '196', },
      \ 'sln': { 'icon': '', 'color': '854CC7', 'term_color': '98', },
      \ 'sml': { 'icon': 'λ', 'color': 'e37933', 'term_color': '166', },
      \ 'sol': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'spec.js': { 'icon': '', 'color': 'cbcb41', 'term_color': '185', },
      \ 'spec.jsx': { 'icon': '', 'color': '20c2e3', 'term_color': '45', },
      \ 'spec.ts': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'spec.tsx': { 'icon': '', 'color': '1354bf', 'term_color': '26', },
      \ 'sql': { 'icon': '', 'color': 'dad8d8', 'term_color': '188', },
      \ 'sqlite': { 'icon': '', 'color': 'dad8d8', 'term_color': '188', },
      \ 'sqlite3': { 'icon': '', 'color': 'dad8d8', 'term_color': '188', },
      \ 'styl': { 'icon': '', 'color': '8dc149', 'term_color': '113', },
      \ 'sublime': { 'icon': '', 'color': 'e37933', 'term_color': '166', },
      \ 'suo': { 'icon': '', 'color': '854CC7', 'term_color': '98', },
      \ 'sv': { 'icon': '󰍛', 'color': '019833', 'term_color': '28', },
      \ 'svelte': { 'icon': '', 'color': 'ff3e00', 'term_color': '196', },
      \ 'svh': { 'icon': '󰍛', 'color': '019833', 'term_color': '28', },
      \ 'svg': { 'icon': '󰜡', 'color': 'FFB13B', 'term_color': '214', },
      \ 'swift': { 'icon': '', 'color': 'e37933', 'term_color': '166', },
      \ 't': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'tbc': { 'icon': '󰛓', 'color': '1e5cb3', 'term_color': '25', },
      \ 'tcl': { 'icon': '󰛓', 'color': '1e5cb3', 'term_color': '25', },
      \ 'templ': { 'icon': '', 'color': 'dbbd30', 'term_color': '178', },
      \ 'terminal': { 'icon': '', 'color': '31B53E', 'term_color': '34', },
      \ 'test.js': { 'icon': '', 'color': 'cbcb41', 'term_color': '185', },
      \ 'test.jsx': { 'icon': '', 'color': '20c2e3', 'term_color': '45', },
      \ 'test.ts': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'test.tsx': { 'icon': '', 'color': '1354bf', 'term_color': '26', },
      \ 'tex': { 'icon': '󰙩', 'color': '3D6117', 'term_color': '22', },
      \ 'tf': { 'icon': '', 'color': '5F43E9', 'term_color': '93', },
      \ 'tfvars': { 'icon': '', 'color': '5F43E9', 'term_color': '93', },
      \ 'toml': { 'icon': '', 'color': '9c4221', 'term_color': '124', },
      \ 'tres': { 'icon': '', 'color': 'cbcb41', 'term_color': '185', },
      \ 'ts': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'tscn': { 'icon': '󰎁', 'color': 'a074c4', 'term_color': '140', },
      \ 'tsx': { 'icon': '', 'color': '1354bf', 'term_color': '26', },
      \ 'ttf': { 'icon': '', 'color': 'ECECEC', 'term_color': '255', },
      \ 'twig': { 'icon': '', 'color': '8dc149', 'term_color': '113', },
      \ 'txt': { 'icon': '󰈙', 'color': '89e051', 'term_color': '113', },
      \ 'v': { 'icon': '󰍛', 'color': '019833', 'term_color': '28', },
      \ 'vala': { 'icon': '', 'color': '7239b3', 'term_color': '91', },
      \ 'vh': { 'icon': '󰍛', 'color': '019833', 'term_color': '28', },
      \ 'vhd': { 'icon': '󰍛', 'color': '019833', 'term_color': '28', },
      \ 'vhdl': { 'icon': '󰍛', 'color': '019833', 'term_color': '28', },
      \ 'vim': { 'icon': '', 'color': '019833', 'term_color': '28', },
      \ 'vsh': { 'icon': '', 'color': '5d87bf', 'term_color': '67', },
      \ 'vue': { 'icon': '', 'color': '8dc149', 'term_color': '113', },
      \ 'wav': { 'icon': '', 'color': '66D8EF', 'term_color': '45', },
      \ 'webm': { 'icon': '', 'color': 'FD971F', 'term_color': '208', },
      \ 'webmanifest': { 'icon': '', 'color': 'f1e05a', 'term_color': '185', },
      \ 'webp': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'webpack': { 'icon': '󰜫', 'color': '519aba', 'term_color': '74', },
      \ 'woff': { 'icon': '', 'color': 'ECECEC', 'term_color': '255', },
      \ 'woff2': { 'icon': '', 'color': 'ECECEC', 'term_color': '255', },
      \ 'xaml': { 'icon': '󰙳', 'color': '512bd4', 'term_color': '56', },
      \ 'xcplayground': { 'icon': '', 'color': 'e37933', 'term_color': '166', },
      \ 'xls': { 'icon': '󰈛', 'color': '207245', 'term_color': '29', },
      \ 'xlsx': { 'icon': '󰈛', 'color': '207245', 'term_color': '29', },
      \ 'xml': { 'icon': '󰗀', 'color': 'e37933', 'term_color': '166', },
      \ 'xul': { 'icon': '', 'color': 'e37933', 'term_color': '166', },
      \ 'yaml': { 'icon': '', 'color': '6d8086', 'term_color': '66', },
      \ 'yml': { 'icon': '', 'color': '6d8086', 'term_color': '66', },
      \ 'zig': { 'icon': '', 'color': 'f69a1b', 'term_color': '172', },
      \ 'zsh': { 'icon': '', 'color': '89e051', 'term_color': '113', },
      \ 'wasm': { 'icon': '', 'color': '5c4cdb', 'term_color': '62', },
      \ }, get(g:, 'defx_icons_extensions', {}))

let s:exact_matches = extend({
      \ '.babelrc': { 'icon': '', 'color': 'cbcb41', 'term_color': '185', },
      \ '.bash_profile': { 'icon': '', 'color': '89e051', 'term_color': '113', },
      \ '.bashrc': { 'icon': '', 'color': '89e051', 'term_color': '113', },
      \ '.dockerignore': { 'icon': '󰡨', 'color': '458ee6', 'term_color': '68', },
      \ '.ds_store': { 'icon': '', 'color': '41535b', 'term_color': '239', },
      \ '.editorconfig': { 'icon': '', 'color': 'fff2f2', 'term_color': '255', },
      \ '.env': { 'icon': '', 'color': 'faf743', 'term_color': '227', },
      \ '.eslintrc': { 'icon': '', 'color': '4b32c3', 'term_color': '56', },
      \ '.eslintignore': { 'icon': '', 'color': '4b32c3', 'term_color': '56', },
      \ '.gitattributes': { 'icon': '', 'color': '41535b', 'term_color': '239', },
      \ '.gitconfig': { 'icon': '', 'color': '41535b', 'term_color': '239', },
      \ '.gitignore': { 'icon': '', 'color': '41535b', 'term_color': '239', },
      \ '.gitlab-ci.yml': { 'icon': '', 'color': 'e24329', 'term_color': '196', },
      \ '.gitmodules': { 'icon': '', 'color': '41535b', 'term_color': '239', },
      \ '.gvimrc': { 'icon': '', 'color': '019833', 'term_color': '28', },
      \ '.luaurc': { 'icon': '', 'color': '00a2ff', 'term_color': '75', },
      \ '.npmignore': { 'icon': '', 'color': 'E8274B', 'term_color': '197', },
      \ '.npmrc': { 'icon': '', 'color': 'E8274B', 'term_color': '197', },
      \ '.settings.json': { 'icon': '', 'color': '854CC7', 'term_color': '98', },
      \ '.vimrc': { 'icon': '', 'color': '019833', 'term_color': '28', },
      \ '.zprofile': { 'icon': '', 'color': '89e051', 'term_color': '113', },
      \ '.zshenv': { 'icon': '', 'color': '89e051', 'term_color': '113', },
      \ '.zshrc': { 'icon': '', 'color': '89e051', 'term_color': '113', },
      \ '_gvimrc': { 'icon': '', 'color': '019833', 'term_color': '28', },
      \ '_vimrc': { 'icon': '', 'color': '019833', 'term_color': '28', },
      \ 'R': { 'icon': '󰟔', 'color': '2266ba', 'term_color': '25', },
      \ 'avif': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'brewfile': { 'icon': '', 'color': '701516', 'term_color': '52', },
      \ 'build': { 'icon': '', 'color': '89e051', 'term_color': '113', },
      \ 'checkhealth': { 'icon': '󰓙', 'color': '75B4FB', 'term_color': '75', },
      \ 'cmakelists.txt': { 'icon': '', 'color': '6d8086', 'term_color': '66', },
      \ 'commit_editmsg': { 'icon': '', 'color': '41535b', 'term_color': '239', },
      \ 'compose.yaml': { 'icon': '󰡨', 'color': '458ee6', 'term_color': '68', },
      \ 'compose.yml': { 'icon': '󰡨', 'color': '458ee6', 'term_color': '68', },
      \ 'containerfile': { 'icon': '󰡨', 'color': '458ee6', 'term_color': '68', },
      \ 'copying': { 'icon': '', 'color': 'cbcb41', 'term_color': '185', },
      \ 'copying.lesser': { 'icon': '', 'color': 'cbcb41', 'term_color': '185', },
      \ 'docker-compose.yaml': { 'icon': '󰡨', 'color': '458ee6', 'term_color': '68', },
      \ 'docker-compose.yml': { 'icon': '󰡨', 'color': '458ee6', 'term_color': '68', },
      \ 'dockerfile': { 'icon': '󰡨', 'color': '458ee6', 'term_color': '68', },
      \ 'favicon.ico': { 'icon': '', 'color': 'cbcb41', 'term_color': '185', },
      \ 'gemfile$': { 'icon': '', 'color': '701516', 'term_color': '52', },
      \ 'gnumakefile': { 'icon': '', 'color': '6d8086', 'term_color': '66', },
      \ 'groovy': { 'icon': '', 'color': '4a687c', 'term_color': '24', },
      \ 'gruntfile': { 'icon': '', 'color': 'e37933', 'term_color': '166', },
      \ 'gulpfile': { 'icon': '', 'color': 'cc3e44', 'term_color': '167', },
      \ 'license': { 'icon': '', 'color': 'd0bf41', 'term_color': '185', },
      \ 'makefile': { 'icon': '', 'color': '6d8086', 'term_color': '66', },
      \ 'mix.lock': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'node_modules': { 'icon': '', 'color': 'E8274B', 'term_color': '197', },
      \ 'package.json': { 'icon': '', 'color': 'e8274b', 'term_color': '197', },
      \ 'package-lock.json': { 'icon': '', 'color': '7a0d21', 'term_color': '52', },
      \ 'procfile': { 'icon': '', 'color': 'a074c4', 'term_color': '140', },
      \ 'py.typed': { 'icon': '', 'color': 'ffbc03', 'term_color': '214', },
      \ 'r': { 'icon': '󰟔', 'color': '2266ba', 'term_color': '25', },
      \ 'rakefile': { 'icon': '', 'color': '701516', 'term_color': '52', },
      \ 'rmd': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'svelte.config.js': { 'icon': '', 'color': 'ff3e00', 'term_color': '196', },
      \ 'tailwind.config.js': { 'icon': '󱏿', 'color': '20c2e3', 'term_color': '45', },
      \ 'tailwind.config.mjs': { 'icon': '󱏿', 'color': '20c2e3', 'term_color': '45', },
      \ 'tailwind.config.ts': { 'icon': '󱏿', 'color': '20c2e3', 'term_color': '45', },
      \ 'tsconfig.json': { 'icon': '', 'color': '519aba', 'term_color': '74', },
      \ 'unlicense': { 'icon': '', 'color': 'd0bf41', 'term_color': '185', },
      \ 'vagrantfile$': { 'icon': '', 'color': '1563FF', 'term_color': '27', },
      \ 'webpack': { 'icon': '󰜫', 'color': '519aba', 'term_color': '74', },
      \ 'workspace': { 'icon': '', 'color': '89e051', 'term_color': '113', },
      \ 'build.zig.zon': { 'icon': '', 'color': 'f69a1b', 'term_color': '172', },
      \ }, get(g:, 'defx_icons_exact_matches', {}))

let s:pattern_matches = extend({ }, get(g:, 'defx_icon_pattern_matches', {}))

let s:exact_dir_matches = extend({ }, get(g:, 'defx_icon_exact_dir_matches', {}))

hi default link DefxIconsMarkIcon Statement
hi default link DefxIconsCopyIcon WarningMsg
hi default link DefxIconsLinkIcon WarningMsg
hi default link DefxIconsMoveIcon ErrorMsg
hi default link DefxIconsDirectory Directory
hi default link DefxIconsParentDirectory Directory
hi default link DefxIconsSymlinkDirectory Directory
hi default link DefxIconsOpenedTreeIcon Directory
hi default link DefxIconsNestedTreeIcon Directory
hi default link DefxIconsClosedTreeIcon Directory

function! defx_icons#get() abort
  return {
        \ 'icons': {
        \   'extensions': s:extensions,
        \   'exact_matches': s:exact_matches,
        \   'pattern_matches': s:pattern_matches,
        \   'exact_dir_matches': s:exact_dir_matches,
        \   'parent_icon': s:parent_icon,
        \   'directory_icon': s:directory_icon,
        \   'directory_symlink_icon': s:directory_symlink_icon,
        \   'mark_icon': s:mark_icon,
        \   'default_icon': s:default_icon,
        \   'root_opened_tree_icon': s:root_opened_tree_icon,
        \   'nested_closed_tree_icon': s:nested_closed_tree_icon,
        \   'nested_opened_tree_icon': s:nested_opened_tree_icon,
        \   'copy_icon': s:copy_icon,
        \   'link_icon': s:link_icon,
        \   'move_icon': s:move_icon,
        \ },
        \ 'settings': {
        \   'enable_syntax_highlight': s:enable_syntax_highlight,
        \   'column_length': s:column_length,
        \ }
        \ }
endfunction
