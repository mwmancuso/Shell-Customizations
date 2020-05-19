export EXA_COLORS="uu=32;1:un=35;1:da=30;1:sn=30;1:sb=30;1:ur=32;1:uw=32;1:ux=32;1:ue=32;1:gr=35;1:gw=35;1;4:gx=35;1:tr=36;4:tw=31;4:tx=33;4"

if [ -x "$(command -v exa)" ]; then
  alias ls="exa -G --group-directories-first --icons"
  alias ll="exa -l --group-directories-first --git --icons"
  alias la="ll -a"
  alias lt="ll -TL2"
  alias lt3="ll -TL3"
  alias l="ls"
fi
