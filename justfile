@default:
    just --list
build:
    jb build .
build-all:
    jb build --all .
import:
    $(pyenv which ghp-import) -n -p -f _build/html
rsync:
    rsync ~c20060/bb1000/ . -av --exclude=_build --exclude=.git
