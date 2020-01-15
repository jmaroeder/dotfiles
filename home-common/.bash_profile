eval "$(direnv hook bash)"

test -f "$HOME/.asdf/asdf.sh" && source "$HOME/.asdf/asdf.sh"
test -f "$HOME/.asdf/completions/asdf.bash" && source "$HOME/.asdf/completions/asdf.bash"
