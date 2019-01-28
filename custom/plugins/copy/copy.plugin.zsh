function copy() {
    if command -v pbcopy >/dev/null 2>/dev/null; then
        pbcopy "$@"
    elif command -v xclip >/dev/null 2>/dev/null; then
        xclip "$@"
    else
        echo "requires pbcopy (mac) or xclip (linux)"
        exit 1
    fi
}
