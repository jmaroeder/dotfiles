# theme options
set -g BULLETTRAIN_GIT_ADDED \uf457
set -g BULLETTRAIN_GIT_ADDED_FG black
set -g BULLETTRAIN_GIT_CLEAN
set -g BULLETTRAIN_GIT_COLORIZE_DIRTY true
set -g BULLETTRAIN_GIT_DELETED \uf458
set -g BULLETTRAIN_GIT_DELETED_FG black
set -g BULLETTRAIN_GIT_DIRTY
set -g BULLETTRAIN_GIT_DISABLE_UNTRACKED_FILES_DIRTY true
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
set -g BULLETTRAIN_PYTHON_SHOW true
set -g BULLETTRAIN_PYTHON_SHOW_SYSTEM false
set -g BULLETTRAIN_RUBY_PREFIX \ue739
set -g BULLETTRAIN_RUBY_SHOW false
set -g BULLETTRAIN_RUBY_SHOW_SYSTEM false
set -g BULLETTRAIN_STATUS_EXIT_SHOW true
set -g BULLETTRAIN_STATUS_ERROR \uf468
set -g BULLETTRAIN_STATUS_JOB \uf423
set -g BULLETTRAIN_DIR_EXTENDED 5

# be brief
set -g fish_greeting

# visual editor by default
set -gx EDITOR "code -w"

# utilities that only make sense in interactive mode
if status --is-interactive
    abbr --add dc docker-compose

    # iTerm2 shell integration
    test -f {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish

    # asdf
    test -f /usr/local/opt/asdf/asdf.fish; and source /usr/local/opt/asdf/asdf.fish

    # pyenv
    type -q pyenv; and pyenv init - | source

    # fnm
    type -q fnm; and fnm env --multi | source

    # direnv
    type -q direnv; and direnv hook fish | source
end
