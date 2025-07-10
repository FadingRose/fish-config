if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path -a /Users/kobayakawayuu/.foundry/bin

# Created by `pipx` on 2025-05-14 06:30:51
set PATH $PATH /Users/kobayakawayuu/.local/bin

# ----------------------------------------
# FZF Configuration
# ----------------------------------------
# --cached: cached files
# --others: untracked files
# --exclude-standard: exclude files ignored by .gitignore
set -Ux FZF_DEFAULT_COMMAND 'git ls-files --cached --others --exclude-standard'

set -x FZF_DEFAULT_OPTS "\
--ansi \
--border \
--preview 'bat --color=always --style=numbers --line-range :500 {}' \
--preview-window 'right:55%:border-left' \
--bind 'ctrl-/:toggle-preview' \
--bind 'ctrl-y:execute-silent(echo {} | pbcopy)+abort'"

function fish_user_key_bindings

    fzf_configure_bindings

    bind \cf 'rgfi; commandline -f repaint'
end

alias ff='rgfi'
