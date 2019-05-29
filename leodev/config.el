;; -*- mode: emacs-lisp -*-

(setq projectile-enable-caching t
      powerline-default-separator 'nil
      ;; mac-command-modifier 'control
      evil-want-fine-undo nil)

;;;;;;;;;; Theme configuration
;; doom theme
(setq nlinum-highlight-current-line t
      doom-modeline-height 15
      doom-themes-enable-bold t
      doom-themes-enable-italic t
      ;; https://github.com/hlissner/emacs-doom-themes/wiki
      doom-neotree-enable-file-icons t
      doom-neotree-enable-folder-icons t
      doom-neotree-enable-chevron-icons t
      doom-neotree-enable-type-colors t
      ;; doom-neotree-text-file-face '("#D98E48" "#dd8844" "brightred")
      ;; doom-neotree-hidden-file-face '("#D98E48" "#dd8844" "brightred")
      ;; neo-vc-ignored-face '("#D98E48" "#dd8844" "brightred")
      ;; neo-file-link-face '("#D98E48" "#dd8844" "brightred")
      ;; doom-neotree-media-file-face '("#D98E48" "#dd8844" "brightred")
      neo-theme (if (display-graphic-p) 'icons 'arrow))

;; all-the-icons
(setq all-the-icons-color-icons t
      all-the-icons-for-bufer t
      inhibit-compacting-font-caches t)


;;;;;;;;;; Packages configuration
;; markdown
(setq markdown-live-preview-engine 'vmd)

;; shell
(setq shell-default-shell 'eshell
      shell-protect-eshell-prompt t
      shell-enable-smart-eshell t)

;; spell-checking
(setq enable-flyspell-auto-completion t
      spell-checking-enable-auto-dictionary t)

;; osx
(setq osx-dictionary-dictionary-choice "English"
      osx-use-option-as-meta t)

;; haskell
(setq haskell-completion-backend 'intero
      haskell-enable-hindent-style "johan-tibell"
      haskell-indentation-where-post-offset 1
      haskell-interactive-mode-hide-multi-line-errors nil
      haskell-process-prompt-restart-on-cabal-change nil
      haskell-process-suggest-remove-import-lines nil
      haskell-stylish-on-save t
      haskell-tags-on-save t)

;; scala
(setq scala-auto-start-ensime t
      scala-enable-eldoc t
      scala-use-unicode-arrows t
      scala-auto-insert-asterisk-in-comments t
      scala-use-java-doc-style t
      scala-indent:use-javadoc-style t
      scala-auto-start-ensime t
      scala-indent:apply-indent-rules '(4))

;; terraform
(setq terraform-indent-level 4)

;; R/ess
(setq ess-enable-smart-equals t)
