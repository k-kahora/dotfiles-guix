(scroll-bar-mode -1)

(tool-bar-mode -1)

(tooltip-mode -1)

(set-fringe-mode 15)

(menu-bar-mode -1)

(auto-revert-mode t)

(add-hook 'after-init-hook (lambda () (load-theme 'temple-os t)))

(toggle-truncate-lines nil)

(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package all-the-icons
  :ensure t
  :if (display-graphic-p))

(use-package magit


  :ensure t



  ; replace current window with magit
  :custom (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1)
  :config
  :bind (("C-x g" . magit)))

(use-package ivy
  :diminish                           ;; gets rid of bottom mode name
  :ensure t
  :bind (("C-s" . swiper)
         :map ivy-minibuffer-map     ;; use key bindings during certain modes
         ("TAB" . ivy-alt-done)
         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :init
  (ivy-mode 1)) ;; uses ivy mode and default key bindings such as +b

(use-package ivy-rich
  :ensure t
  :init
  (ivy-rich-mode 1))

(use-package yasnippet
  :ensure t
  :init
  :config (use-package yasnippet-snippets
            :ensure t)
  (yas-reload-all))

(add-hook 'org-mode-hook #'yas-minor-mode)
     (add-hook 'org-roam-mode-hook 'yas-minor-mode)
     (add-hook 'c++-mode-hook 'yas-minor-mode)
     (add-hook 'c-mode 'yas-minor-mode)
     (add-hook'emacs-lisp-mode-hook'yas-minor-mode)

; comment

(use-package counsel
  :ensure t
  :bind (("M-x" . counsel-M-x)
	 ("C-x b" . counsel-ibuffer)
	 ("C-x C-f" . counsel-find-file)
	 :map minibuffer-local-map
	 ("C-r" . 'counsel-minibuffer-history)))

(setq initial-buffer-choice 'vterm)

(use-package vterm
:ensure t
  :commands vterm
  :config
  ;;(setq term-prompt-regexp "^[^#$%>\n]*[#$%>] *")  ;; Set this to match your custom shell prompt
  ;;(setq vterm-shell "zsh")                       ;; Set this to customize the shell to launch
  (setq vterm-max-scrollback 10000))



(use-package helpful
  :ensure t
  :custom
  (counsel-describe-function-function #'helpful-callable)
  (counsel-describe-variable-function #'helpful-variable)
  :bind
  ([remap describe-function] . counsel-describe-function)
  ([remap describe-command] . helpful-command)
  ([remap describe-variable] . counsel-describe-variable)
  ([remap describe-key] . helpful-key))

(use-package which-key
  :ensure t
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 1))     ;; delay before it pops up in sec

(use-package doom-modeline
      :ensure t
      :init (setq doom-modeline-height 20)
    (setq doom-modeline-hud nil)
  (setq doom-modeline-major-mode-color-icon t)
(setq doom-modeline-minor-modes nil)

      :hook (after-init . doom-modeline-mode))

(use-package org
  :ensure t
  :hook (org-mode . mk/org-mode-setup)
  :config
  (setq org-ellipsis " ▾"
        org-hide-emphasis-markers t)

  (setq org-agenda-files
        '("/mnt/c/Home/OrgAgenda/tasks.org"
          "/mnt/c/Home/OrgAgenda/birthdays.org"
          "/mnt/c/Home/OrgAgenda/Homework.org"
          "/mnt/c/Home/OrgAgenda/Events.org")))

(defun mk/org-mode-setup ()
  (org-indent-mode)
  (variable-pitch-mode nil)
  (visual-line-mode nil))

(setq org-image-actual-width nil)

(use-package org-bullets
  :ensure t
  :hook (org-mode . org-bullets-mode)
  :custom (org-bullets-bullet-list '("♱" "⚉" "⚇" "⚉" "⚇" "⚉" "⚇")))

(with-eval-after-load 'org
       (org-babel-do-load-languages
           'org-babel-load-languages
           '((emacs-lisp . t)
           (python . t) (C . t)  (octave . t) (shell . t) (scheme . t)))

       (push '("conf-unix" . conf-unix) org-src-lang-modes))
; This makes sure no prompt sets up when we evaulute a src block
(setq org-confirm-babel-evaluate nil)

(with-eval-after-load 'org
              ;; This is needed as of Org 9.2
              (require 'org-tempo)

              (add-to-list 'org-structure-template-alist '("sh" . "src shell"))
              (add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))
              (add-to-list 'org-structure-template-alist '("py" . "src python"))
      (add-to-list 'org-structure-template-alist '("cde" . "src C"))

      (add-to-list 'org-structure-template-alist '("oct" . "src octave"))
(add-to-list 'org-structure-template-alist '("guix" . "src scheme")))

(use-package autothemer
  :ensure t)

(require lispy)
