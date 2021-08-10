# -*- mode: conf -*-
# ======================== P alias ========================

alias pinfo='echo -e "=== alias p ===
-- pip, pip3, python3 tool

   pip     = pip3
   pipiu   = pip install --user

-- ps, 查看进程

   psef    = ps -ef
   psl     = ps -efl         # 更详细输出
   psg     = ps -ef | grep
   pslg    = ps -elf | grep
   pstop   = top
"'

alias pip="pip3"
alias pipiu="pip install --user"


# ps, 查看进程
alias psef="ps -ef"         # 显示所有以完整格式输出
alias psl="ps -efl"         # 更详细输出
alias psg="ps -ef | grep"   # 过滤
alias pslg="ps -elf | grep" # 详细 + 过滤
alias pstop="top"           # top
