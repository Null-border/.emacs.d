


;; startup adjustments
(setq debug-on-error t
      gc-cons-threshold most-positive-fixnum
      inhibit-compacting-font-caches t
      garbage-collection-messages nil)

;; Bootstrap config
(require 'package)
(setq package-enable-at-startup nil
      use-package-always-ensure t
      use-pfackage-expand-minimally t
      use-package-enable-imenu-support t)

(setq package-archives
      '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
        ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
	("org"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Bootstrap
(org-babel-load-file "~/.emacs.d/myinit.org")









(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files '("~/ORG/gtd.org" "~/.emacs.d/myinit.org"))
 '(org-mouse-features '(activate-stars activate-bullets activate-checkboxes))
 '(package-selected-packages
   '(undo-tree smex org-plus-contrib htmlize ox-reveal org-pdftools org-pdfview info-colors rainbow-delimiters ripgrep flycheck pdf-tools hungry-delete org which-key use-package try tangotango-theme restart-emacs org-bullets counsel auto-complete)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-table ((t (:foreground "#a9a1e1" :height 120 :family "Noto Sans Mono CJK SC Regular")))))


