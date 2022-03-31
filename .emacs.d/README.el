(defvar bootstrap-version)
(let ((bootstrap-file
      (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
        "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
        'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(setq package-enable-at-startup nil)

(straight-use-package 'use-package)

(setq straight-use-package-by-default t)

(scroll-bar-mode -1)

(tool-bar-mode -1)

(tooltip-mode -1)

(set-fringe-mode 15)

(menu-bar-mode -1)

(auto-revert-mode t)

(add-hook 'after-init-hook (lambda () (load-theme     'gruber-darker t)))

(toggle-truncate-lines nil)

(set-register ?i (cons 'file "/home/malcolm/.dotfiles/.emacs.d/README.org"))

(use-package all-the-icons
  :straight t
  :if (display-graphic-p))

(use-package magit


  :straight t



  ; replace current window with magit
  :custom (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1)
  :config
  :bind (("C-x g" . magit)))

(use-package counsel
  :straight t
  :bind (("M-x" . counsel-M-x)
	 ("C-x b" . counsel-ibuffer)
	 ("C-x C-f" . counsel-find-file)
	 :map minibuffer-local-map
	 ("C-r" . 'counsel-minibuffer-history)))

(use-package ivy
  :diminish                           ;; gets rid of bottom mode name
  :straight t
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
  :straight t
  :init
  (ivy-rich-mode 1))

(use-package all-the-icons-ivy-rich
:straight t
:init (all-the-icons-ivy-rich-mode 1))

(defvar ivy--identity #'identity
  "Store the identity state.")
(advice-add 'ivy--reset-state :before (lambda (&rest r) (setq ivy--identity #'identity)))

(defun ivy-toggle-regexp-quote ()
  "Toggle the regexp quoting."
  (interactive)
  (setq ivy--old-re nil)
  (cl-rotatef ivy--regex-function ivy--regexp-quote ivy--identity)
  (setq ivy-regex (funcall ivy--regex-function ivy-text)))

(use-package yasnippet
  :straight t
  :init
  :config (use-package yasnippet-snippets
            :straight t)
  (yas-reload-all))

(add-hook 'org-mode-hook #'yas-minor-mode)
     (add-hook 'org-roam-mode-hook 'yas-minor-mode)
     (add-hook 'c++-mode-hook 'yas-minor-mode)
     (add-hook 'c-mode-hook 'yas-minor-mode)
     (add-hook'emacs-lisp-mode-hook 'yas-minor-mode)

; comment

(setq initial-buffer-choice 'vterm)

(use-package vterm
:straight t
  :commands vterm
  :config
  ;;(setq term-prompt-regexp "^[^#$%>\n]*[#$%>] *")  ;; Set this to match your custom shell prompt
  ;;(setq vterm-shell "zsh")                       ;; Set this to customize the shell to launch
  (setq vterm-max-scrollback 10000))



(use-package helpful
  :straight t
  :custom
  (counsel-describe-function-function #'helpful-callable)
  (counsel-describe-variable-function #'helpful-variable)
  :bind
  ([remap describe-function] . counsel-describe-function)
  ([remap describe-command] . helpful-command)
  ([remap describe-variable] . counsel-describe-variable)
  ([remap describe-key] . helpful-key))

(use-package which-key
  :straight t
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 1))     ;; delay before it pops up in sec

(use-package doom-modeline
      :straight t
      :init (setq doom-modeline-height 20)
    (setq doom-modeline-hud nil)
  (setq doom-modeline-major-mode-color-icon t)
(setq doom-modeline-minor-modes nil)

      :hook (after-init . doom-modeline-mode))

(use-package org
  :straight t
  :hook (org-mode . mk/org-mode-setup)
  :config
  (setq org-ellipsis " ▾"
        org-hide-emphasis-markers t)

  (setq org-agenda-files
        '("/mnt/c/Home/OrgAgenda/tasks.org"
          "/mnt/c/Home/OrgAgenda/birthdays.org"
          "/mnt/c/Home/OrgAgenda/Homework.org"
          "/mnt/c/Home/OrgAgenda/Events.org")))

(setq org-use-speed-commands t)

(defun mk/org-mode-setup ()
  (org-indent-mode)
  (variable-pitch-mode nil)
  (visual-line-mode nil))

(setq org-image-actual-width nil)

(use-package org-bullets
  :straight t
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

(use-package org-roam
        :straight t
        :init
        (setq org-roam-v2-ack t)
        :custom
        (org-roam-directory "/mnt/c/Home/roamnotes")
        (org-roam-completion-everywhere t)
        (org-roam-capture-templates

         ;; templates

         '(("d" "default" plain
            "%?"
            :if-new (file+head "%<%y%m%d%h%m%s>-${slug}.org" "#+title: ${title}\n")
            :unnarrowed t)

         ("l" "programming language" plain
          "* characteristics\n\n- family: \n- inspired by: \n\n* reference:\n* examples:%?"
          :if-new (file+head "%<%y%m%d%h%m%s>-${slug}.org" "#+title: ${title}\n")
          :unnarrowed t)

         ("b" "book notes" plain
          "\n* source\n\nauthor: %^{author}\ntitle: ${title}\nyear: %^{year}\n\n* summary\n\n%?"
          :if-new (file+head "%<%y%m%d%h%m%s>-${slug}.org" "#+title: ${title}\n")
          :unnarrowed t)

        ("h" "homework" entry (file+headline "/mnt/c/Home/orgagenda/homework.org" "homework")
      "* %? %^l %^g \n%t" :prepend t)
      ("w" "work" entry (file+headline "/mnt/c/Home/orgagenda/work.org" "work at mtss")
      "* %?\n%t" :prepend t)
      ("t" "to do item" entry (file+headline "/mnt/c/Home/orgagenda/i.org" "to do")
      "* todo %?\n%u" :prepend t)))

; capture templates

          ;; bindings

        :bind (("C-c n l" . org-roam-buffer-toggle)
               ("C-c n f" . org-roam-node-find)
               ("C-c n i" . org-roam-node-insert-immediate)
               :map org-mode-map
               ("C-S-i" . completion-at-point))
        :config
        (org-roam-setup))

(use-package org-roam-ui
  :straight
    (:host github :repo "org-roam/org-roam-ui" :branch "main" :files ("*.el" "out"))
    :after org-roam
;;         normally we'd recommend hooking orui after org-roam, but since org-roam does not have
;;         a hookable mode anymore, you're advised to pick something yourself
;;         if you don't care about startup time, use
;;  :hook (after-init . org-roam-ui-mode)
    :config
    (setq org-roam-ui-sync-theme t
          org-roam-ui-follow t
          org-roam-ui-update-on-save t
          org-roam-ui-open-on-start t))

(display-line-numbers-mode)
(setq display-line-numbers 'relative)

(use-package minimap
  :straight t)

(use-package tide :straight t

        :init

(setq tide-tsserver-executable "~/.nvm/versions/node/v11.12.0/bin/tsserver"))

      (defun setup-tide-mode ()
      (interactive)
      (tide-setup)
      (flycheck-mode +1)
      (setq flycheck-check-syntax-automatically '(save mode-enabled))
      (eldoc-mode +1)
      (tide-hl-identifier-mode +1)
      ;; company is an optional dependency. You have to
      ;; install it separately via package-install
      ;; `M-x package-install [ret] company`
      (company-mode +1))

    ;; aligns annotation to the right hand side
    (setq company-tooltip-align-annotations t)

    ;; formats the buffer before saving
    (add-hook 'before-save-hook 'tide-format-before-save)

    (add-hook 'typescript-mode-hook #'setup-tide-mode)

(use-package autothemer
  :straight t)

(use-package gruber-darker-theme
  :straight t)

(straight-use-package 'beacon)
;; (require beacon nil t)

(beacon-mode 1)

(recentf-mode 1)
(setq history-length 25)
(savehist-mode 1)
(save-place-mode 1)
(setq use-dialog-box nil)
(global-auto-revert-mode 1)

(load-file "/home/malcolm/.dotfiles/.emacs.d/mk-func/funcs.el")

(defun run-in-vterm-kill (process event)
  "A process sentinel. Kills PROCESS's buffer if it is live."
  (let ((b (process-buffer process)))
    (and (buffer-live-p b)
         (kill-buffer b))))

(defun run-in-vterm (command)
  "Execute string COMMAND in a new vterm.

Interactively, prompt for COMMAND with the current buffer's file
name supplied. When called from Dired, supply the name of the
file at point.

Like `async-shell-command`, but run in a vterm for full terminal features.

The new vterm buffer is named in the form `*foo bar.baz*`, the
command and its arguments in earmuffs.

When the command terminates, the shell remains open, but when the
shell exits, the buffer is killed."
  (interactive
   (list
    (let* ((f (cond (buffer-file-name)
                    ((eq major-mode 'dired-mode)
                     (dired-get-filename nil t))))
           (filename (concat " " (shell-quote-argument (and f (file-relative-name f))))))
      (read-shell-command "Terminal command: "
                          (cons filename 0)
                          (cons 'shell-command-history 1)
                          (list filename)))))
  (with-current-buffer (vterm (concat "*" command "*"))
    (set-process-sentinel vterm--process #'run-in-vterm-kill)
    (vterm-send-string command)
    (vterm-send-return)))

(defun set-region-read-only (begin end)
  "Sets the read-only text property on the marked region.

Use `set-region-writeable' to remove this property."
  ;; See http://stackoverflow.com/questions/7410125
  (interactive "r")
  (let ((modified (buffer-modified-p)))
    (add-text-properties begin end '(read-only t))
    (set-buffer-modified-p modified)))

(defun set-region-writeable (begin end)
  "Removes the read-only text property from the marked region.

Use `set-region-read-only' to set this property."
  ;; See http://stackoverflow.com/questions/7410125
  (interactive "r")
  (let ((modified (buffer-modified-p))
        (inhibit-read-only t))
    (remove-text-properties begin end '(read-only t))
    (set-buffer-modified-p modified)))

(defun mk/kill-line (arg)
      "This is my first elips function it kills the current working line"
      (interactive "P")

    (beginning-of-line-text arg)
  (kill-visual-line arg)



      )
(global-set-key "\C-q" 'mk/kill-line)

(defun mk/ssh-time ()
  "This is my automating ssh into virtualbox script"
  (interactive (list 

  (run-in-vterm "ssh osc@192.168.56.101")
    (find-file   "/ssh:osc@192.168.56.101:/home/osc/Documents/Labs/")
    (switch-to-buffer "*ssh osc@192.168.56.101*")
    (rename-buffer "terminal")
    (switch-to-buffer (other-buffer))

  )))

(define-minor-mode mk/center-page-mode
  "This is a minor mode that centers the page always"
  :lighter center-mode

  (recenter-top-bottom))

(add-hook 'c-mode-hook
          (lambda () (local-set-key (kbd "C-x c") 'compile)))



(setq compile-command "make")

(defun increment-number-at-point ()
  (interactive)
  (skip-chars-backward "0-9")
  (or (looking-at "[0-9]+")
      (error "No number at point"))
  (replace-match (number-to-string (1+ (string-to-number (match-string 0))))))

    (global-set-key (kbd "C-c +") 'increment-number-at-point)`

(defun deincrement-number-at-point ()
  "Decreases a number by one at poiny"
  (interactive)

  (skip-chars-backward "0-9")
  (or (looking-at "[0-9]+")
      (error "No numbers at point"))
 (replace-match (number-to-string (1- (string-to-number (match-string 0)))))

  )


(global-set-key (kbd "C-c -") 'deincrement-number-at-point)

(eval-after-load "dired"
  '(define-key dired-mode-map "z" 'dired-zip-files))
(defun dired-zip-files (zip-file)
  "Create an archive containing the marked files."
  (interactive "sEnter name of zip file: ")

  ;; create the zip file
  (let ((zip-file (if (string-match ".zip$" zip-file) zip-file (concat zip-file ".zip"))))
    (shell-command 
     (concat "zip " 
             zip-file
             " "
             (concat-string-list 
              (mapcar
               '(lambda (filename)
                  (file-name-nondirectory filename))
               (dired-get-marked-files))))))

  (revert-buffer)

  ;; remove the mark on all the files  "*" to " "
  ;; (dired-change-marks 42 ?\040)
  ;; mark zip file
  ;; (dired-mark-files-regexp (filename-to-regexp zip-file))
  )

(defun concat-string-list (list) 
   "Return a string which is a concatenation of all elements of the list separated by spaces" 
    (mapconcat '(lambda (obj) (format "%s" obj)) list " "))

(eval-after-load "dired-aux"
   '(add-to-list 'dired-compress-file-suffixes 
                 '("\\.zip\\'" ".zip" "unzip")))

(use-package hide-mode-line :straight t)

(global-set-key (kbd "C-c h") 'hide-mode-line-mode)

(defun efs/presentation-setup ()
  ;; Hide the mode line
  (hide-mode-line-mode 1)

  ;; Display images inline
  (org-display-inline-images) ;; Can also use org-startup-with-inline-images

  ;; Scale the text.  The next line is for basic scaling:
  (setq text-scale-mode-amount 3)
  (text-scale-mode 1))

(defun efs/presentation-end ()
;; Show the mode line again
(hide-mode-line-mode 0)

;; Turn off text scale mode (or use the next line if you didn't use text-scale-mode)
(text-scale-mode 0)

;; If you use face-remapping-alist, this clears the scaling:
(setq-local face-remapping-alist '((default variable-pitch default))))


    (use-package org-tree-slide
      :straight t
        :hook ((org-tree-slide-play . efs/presentation-setup)
       (org-tree-slide-stop . efs/presentation-end))

      :custom
    (org-tree-slide-slide-in-effect nil)
  (org-tree-slide-activate-message "Presentation started!")
  (org-tree-slide-deactivate-message "Presentation finished!")
  (org-tree-slide-header t)
  (org-tree-slide-breadcrumbs " > ")
  (org-image-actual-width nil))

(use-package web-mode
:straight t  

  :mode (("\\.html?\\'" . web-mode)
         ("\\.css\\'"   . web-mode)
         ;; ("\\.jsx?\\'"  . web-mode)
         ("\\.tsx?\\'"  . web-mode)
         ("\\.json\\'"  . web-mode))
  )

(use-package lsp-mode
:straight t
  :init
  ;; 
  (setq lsp-keymap-prefix "C-c l")
  :hook (
         ((web-mode) . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

(use-package lsp-ivy :straight t :commands lsp-ivy-workspace-symbol)

(use-package company
  :straight t
  :after lsp-mode
  :hook (lsp-mode . company-mode)
  :bind (:map company-active-map
         ("<tab>" . company-complete-selection))
        (:map lsp-mode-map
         ("<tab>" . company-indent-or-complete-common))
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.0))

(use-package company-box
  :hook (company-mode . company-box-mode))

(use-package projectile
  :straight t
  :diminish projectile-mode
  :config (projectile-mode)
  :custom ((projectile-completion-system 'ivy))  ; I uses Ivy there are other options at projectile-completion-system
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :init
  ;; NOTE: Set this to the folder where you keep your Git repos!
  (when (file-directory-p "/home/malcolm/dev/") ; When this directory exists set the projectile-project-search-path to that value below
    (setq projectile-project-search-path '("/home/malcolm/dev/")))
  (setq projectile-switch-project-action #'dired))

(defun efs/ielm-send-line-or-region ()
  (interactive)
  (unless (use-region-p)
    (forward-line 0)
    (set-mark-command nil)
    (forward-line 1))
  (backward-char 1)
  (let ((text (buffer-substring-no-properties (region-beginning)
                                              (region-end))))
    (with-current-buffer "*ielm*"
      (insert text)
      (ielm-send-input))

    (deactivate-mark)))

(defun efs/show-ielm ()
  (interactive)
  (select-window (split-window-vertically -10))
  (ielm)
  (text-scale-set 1))

; (define-key org-mode-map (kbd "C-c C-e") 'efs/ielm-send-line-or-region)
(define-key org-mode-map (kbd "C-c E") 'efs/show-ielm)

(setq ispell-program-name "hunspell")
(setq ispell-local-dictionary "de_DE")
(setq ispell-local-dictionary-alist
      '(("de_DE" "[[:alpha:]]" "[^[:alpha:]]" "[']" nil nil nil utf-8)))
