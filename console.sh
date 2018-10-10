#!/bin/sh

# 以下より
# http://d.hatena.ne.jp/R-H/20110119/1295452747

# 文字色
# 30 黒 : Black
# 31 赤 : Red
# 32 緑 : Green
# 33 黄色 : Yellow
# 34 青 : Blue
# 35 マゼンダ : Magenta
# 36 シアン : Cyan
# 37 白 : White

# 背景
# 40 黒 : Black
# 41 赤 : Red
# 42 緑 : Green
# 43 黄色 : Yellow
# 44 青 : Blue
# 45 マゼンダ : Magenta
# 46 シアン : Cyan
# 47 白 : White

# 装飾
# 0 ノーマル : All attributs off
# 1 太字 : Bold on
# 4 下線 : Underscore (on monochrome display adapter only)
# 5 点滅 : Blink on
# 7 色反転 Reverse video on
# 8 Concealed on

log_font_color="32"
log_font_deco="0"
err_font_color="41"
err_font_deco="1"

log_fmt_head="\033[${log_font_deco};${log_font_color}m[LOG] "
log_fmt_tail="\033[0;39m"
err_fmt_head="\033[${err_font_deco};${err_font_color}m[ERR] "
err_fmt_tail="\033[0;39m"

log () {
	echo "$log_fmt_head""$1""$log_fmt_tail"
}

err () {
	echo "$err_fmt_head""$1""$err_fmt_tail"
}

# log "hoge"
# err "piyo"

