docker() {
if [ "$1" = "compose" ]; then
        shift        # eat the 'compose'
        podman-compose "$@"
    else
        command podman "$@"
fi
}

