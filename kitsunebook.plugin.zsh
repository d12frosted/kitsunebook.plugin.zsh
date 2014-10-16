function _kitsunebook_commands() {
    local ret=1 state
    _arguments ':subcommand:->subcommand' && ret=0

    case $state in
      subcommand)
        subcommands=(
        "help:Show help text"
        "version:Show version"
        "init:Run KitsuneBook initialisation process in current dir"
        "configure:Change KitsuneBook settings"
        "view:View note with given id"
        "open:Same as 'view' command"
        "create:Create note with provided title"
        "remove:Remove note with given id"
        "edit:Edit note with given id"
        "editInfo:Edit info of note with given id"
        "list:Show list of notes"
        )
        _describe -t subcommands 'kitsunebook subcommands' subcommands && ret=0
    esac

    return ret
}

compdef _kitsunebook_commands kitsunebook
