;; -*- mode: emacs-lisp -*-

(setq leodev-packages '(
                        all-the-icons
                        ;; all-the-icons-ivy
                        ;; all-the-icons-dired
                        mode-icons
                        doom-themes
                        doom-modeline
                        solaire-mode
                        web-mode
                        spaceline-all-the-icons
                        hlinum
                        ;; protobuf-mode
                        ))

(setq leodev-excluded-packages '(rainbow-delimiters))

;; All-the-icons
(defun leodev/init-all-the-icons ()
  (use-package all-the-icons
    :config
    (let ((hy-icon '(all-the-icons-fileicon "hy" :face all-the-icons-orange))
          (dt-icon '(all-the-icons-fileicon "graphviz" :face all-the-icons-pink)))
      (add-to-list 'all-the-icons-icon-alist      `("\\.hy$"          ,@hy-icon))
      (add-to-list 'all-the-icons-icon-alist      `("\\.dot$"         ,@dt-icon))
      (add-to-list 'all-the-icons-mode-icon-alist `(hy-mode           ,@hy-icon))
      (add-to-list 'all-the-icons-mode-icon-alist `(graphviz-dot-mode ,@dt-icon)))))

;; ;; All-the-icons-ivy
;; (defun leodev/init-all-the-icons-ivy ()
;;   (use-package all-the-icons-ivy
;;     :config
;;     (progn
;;       ;; Fix icon prompt alignment in ivy prompts
;;       (advice-add 'all-the-icons-ivy-file-transformer :override
;;                   'all-the-icons-ivy-file-transformer-stdized)

;;       ;; Add behavior to counsel projectile funcs too
;;       (advice-add 'counsel-projectile-find-file-transformer :filter-return
;;                   'all-the-icons-ivy-file-transformer-stdized)
;;       (advice-add 'counsel-projectile-transformer :filter-return
;;                   'all-the-icons-ivy-file-transformer-stdized)

;;       (all-the-icons-ivy-setup))))

;; ;; All-the-icons-dired
;; (defun leodev/init-all-the-icons-dired ()
;;   (use-package all-the-icons-dired
;;     :hook (dired-mode . all-the-icons-dired-mode)))

;; ;; mode icons
(defun leodev/init-mode-icons ()
  (use-package mode-icons))

;; doom-themes
(defun leodev/init-doom-themes ()
  (use-package doom-themes
    :ensure t
    :init
    (progn
      ;; (global-linum-mode)
      ;; (global-company-mode t)
      ;; (spaceline-compile)

      (load-theme 'doom-vibrant t)
      ;; Enable flashing mode-line on errors
      (doom-themes-visual-bell-config)
      ;; Enable custom neotree theme (all-the-icons must be installed!)
      (doom-themes-neotree-config)
      ;; or for treemacs users
      (doom-themes-treemacs-config)
      ;; Corrects (and improves) org-mode's native fontification.
      (doom-themes-org-config))))

;; doom-modeline
(defun leodev/init-doom-modeline ()
  (use-package doom-modeline
    :ensure t
    :hook (after-init . doom-modeline-mode)))

;; mode icons
(defun leodev/init-solaire-mode ()
  (use-package solaire-mode
    :hook
    ((change-major-mode after-revert ediff-prepare-buffer) . turn-on-solaire-mode)
    (minibuffer-setup . solaire-mode-in-minibuffer)
    :config
    (solaire-mode-swap-bg)))

;; web-mode
(defun leodev/post-init-web-mode ()
  (add-to-list 'auto-mode-alist '("\\.mustache$" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.jinja2$" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.mak$" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html$" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.pt$" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.cshtml$" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tsx$" . web-mode))
  (add-hook 'web-mode-hook (lambda ()
                             (setq web-mode-markup-indent-offset 4)
                             (setq web-mode-code-indent-offset 4))))
;; mode icons
(defun leodev/init-spaceline-all-the-icons ()
  (use-package spaceline-all-the-icons
    :after spaceline
    :config
    (progn
      (spaceline-all-the-icons-theme)
      (spaceline-all-the-icons--setup-anzu)            ;; Enable anzu searching
      (spaceline-all-the-icons--setup-package-updates) ;; Enable package update indicator
      (spaceline-all-the-icons--setup-git-ahead)       ;; Enable # of commits ahead of upstream in git
      (spaceline-all-the-icons--setup-paradox)         ;; Enable Paradox mode line
      (spaceline-all-the-icons--setup-neotree)         ;; Enable Neotree mode line
      )))

(defun leodev/init-hlinum ()
  (use-package hlinum
    :after (hlinum-activate)))
