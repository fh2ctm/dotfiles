function fish_greeting
  _pure_check_for_new_release
  fzf --fish | source
  fastfetch -l small
end
