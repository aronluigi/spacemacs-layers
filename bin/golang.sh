#!/bin/bash
set -e

source $(dirname $0)/commons.sh

function installGoLangDependencies () {
    printHeader "Installing GoLang dependencies"

    if [ "${GO111MODULE}" != "on" ]; then
        printf "GO111MODULE is not enabled [%s]!\n" ${GO111MODULE}
        echo "Add \`export GO111MODULE=on\` to .bashrc\n"
        exit 1
    fi

    go get -u -v golang.org/x/tools/gopls@latest
    go get -u -v golang.org/x/tools/cmd/godoc
    go get -u -v golang.org/x/tools/cmd/goimports
    go get -u -v golang.org/x/tools/cmd/gorename
    go get -u -v golang.org/x/tools/cmd/guru
    go get -u -v github.com/cweill/gotests/...
    go get -u -v github.com/davidrjenni/reftools/cmd/fillstruct
    go get -u -v github.com/fatih/gomodifytags
    go get -u -v github.com/godoctor/godoctor
    go get -u -v github.com/golangci/golangci-lint/cmd/golangci-lint
    go get -u -v github.com/haya14busa/gopkgs/cmd/gopkgs
    go get -u -v github.com/josharian/impl
    go get -u -v github.com/mdempsky/gocode
    go get -u -v github.com/rogpeppe/godef
    go get -u -v github.com/zmb3/gogetdoc
}

function main () {
    installGoLangDependencies
}

main
