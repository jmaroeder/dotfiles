function fish_title -d 'Use PROCESS $PWD format, replacing /Users/username with ~'
  if test "$_" != "fish"
    echo $_ ''
  else
    set -lx __fish_prompt_max_dirs 2
    set -lx fish_prompt_pwd_dir_length 10
    prompt_pwd
  end
end
