function fish_title -d 'Use PROCESS $PWD format, replacing /Users/username with ~'
  if test "$_" != "fish"
    echo $_ ''
  else
    set realhome ~
    string replace -r '^'"$realhome"'($|/)' '~$1' $PWD
  end
end
