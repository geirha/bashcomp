shopt -s extglob
_completion_loader()
{
    if . "${XDG_CONFIG_HOME:-$HOME/.config}/bashcomp/$1" >/dev/null 2>&1; then
        return 124
    fi
}
complete -D -F _completion_loader -o default -o bashdefault
