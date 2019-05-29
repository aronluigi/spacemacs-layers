;; -*- mode: emacs-lisp -*-

(configuration-layer/declare-layers
 '(
   helm
   emacs-lisp
   org
   auto-completion
   better-defaults
   spell-checking
   syntax-checking
   git
   csv
   version-control
   markdown
   shell
   haskell
   extra-langs
   python
   ruby
   (go :variables ;; x
       go-use-gometalinter t
       gofmt-command "goimports"
       go-tab-width 4
       go-use-gocheck-for-testing t)
   javascript
   sql
   osx
   ess
   yaml
   scala
   docker
   terraform
   ;;php
   java
   ;;groovy
   react
   )
 )
