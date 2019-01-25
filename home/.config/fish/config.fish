set -g BULLETTRAIN_GIT_ADDED \uf457
set -g BULLETTRAIN_GIT_ADDED_FG black
set -g BULLETTRAIN_GIT_CLEAN
set -g BULLETTRAIN_GIT_COLORIZE_DIRTY true
set -g BULLETTRAIN_GIT_DELETED \uf458
set -g BULLETTRAIN_GIT_DELETED_FG black
set -g BULLETTRAIN_GIT_DIRTY
set -g BULLETTRAIN_GIT_MODIFIED \uf459
set -g BULLETTRAIN_GIT_MODIFIED_FG black
set -g BULLETTRAIN_GIT_PREFIX \ue725
set -g BULLETTRAIN_GIT_RENAMED \uf45a
set -g BULLETTRAIN_GIT_STASHED \uf111
set -g BULLETTRAIN_GIT_UNTRACKED \uf474
set -g BULLETTRAIN_GIT_UNTRACKED_FG black
set -g BULLETTRAIN_PYTHON_BG green
set -g BULLETTRAIN_PYTHON_FG black
set -g BULLETTRAIN_PYTHON_PREFIX \ue235
set -g BULLETTRAIN_PYTHON_SHOW_SYSTEM false
set -g BULLETTRAIN_RUBY_PREFIX \ue739
set -g BULLETTRAIN_RUBY_SHOW_SYSTEM false
set -g BULLETTRAIN_STATUS_EXIT_SHOW true
set -g BULLETTRAIN_STATUS_ERROR \uf468
set -g BULLETTRAIN_STATUS_JOB \uf423
set -g BULLETTRAIN_DIR_EXTENDED 5
set -g fish_greeting

if status --is-interactive
    abbr --add --global dc 'docker-compose'
    abbr --add --global gco 'git checkout'
end


source /usr/local/opt/asdf/asdf.fish

test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish

eval (direnv hook fish)
