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

(use-package org-roam
        :ensure t
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

(use-package autothemer
  :straight t)

(use-package gruber-darker-theme
  :straight t)

(recentf-mode 1)
(setq history-length 25)
(savehist-mode 1)
(save-place-mode 1)
(setq use-dialog-box nil)
(global-auto-revert-mode 1)

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

  )))

(define-minor-mode mk/center-page-mode
  "This is a minor mode that centers the page always"
  :lighter center-mode

  (recenter-top-bottom))

(defun mk/headerize () "This function adds a default header to all c
    file in a directory"

      (interactive)

      (let (setq string '"/** Malcolm Kahora\n CSC345-01\n :Lab3 Exercise 1
          */")

        (setq lst (directory-files-recursively default-directory "\w*.c"))

(mapcar (lambda (f) (append-to-file string)) lst)
        ))

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

(define-key org-mode-map (kbd "C-c C-e") 'efs/ielm-send-line-or-region)
(define-key org-mode-map (kbd "C-c E") 'efs/show-ielm)

(setq ispell-program-name "hunspell")
(setq ispell-local-dictionary "de_DE")
(setq ispell-local-dictionary-alist
      '(("de_DE" "[[:alpha:]]" "[^[:alpha:]]" "[']" nil nil nil utf-8)))
