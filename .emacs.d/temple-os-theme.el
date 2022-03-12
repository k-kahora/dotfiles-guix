(require 'autothemer)

(autothemer-deftheme temple-os "A theme inspired by the temple operating system following the 16 color set"

  ;; Specify the color classes used by the theme
  ((((class color) (min-colors #xFFFFFF))
    ((class color) (min-colors #xFF)))

   ;; Specify the color palette for each of the classes above.
   (temple-black    "#22201d")
   (temple-blue  "#188b8f")
   (temple-green   "#00a800")
   (temple-cyan "#00a8a8")
   (temple-red "#a80000")
   (temple-purple "#a800a8")
   (temple-brown   "#a85700")
   (temple-light-grey "#a8a8a8")
   (temple-dark-grey "#575757")
   (temple-light-blue "#5757ff")
   (temple-light-green "#57ff57")
   (temple-light-cyan "#57ffff")
   (temple-light-red "#ff5757")
   (temple-light-purple "#ff57ff")
   (temple-yellow "#ffff57")
   (temple-white "#ffffff")
   (temple-98-brown "#f6cd88"))

  
    ;; specifications for Emacs faces.
  ((default (:foreground temple-blue :background temple-black :family "TempleOS" :height 100 ))
      (button (:underline t :weight 'bold :foreground temple-98-brown))
   (error  (:foreground temple-light-red))
   (cursor (:background temple-white ))
   (font-lock-keyword-face (:foreground temple-light-red))
   (font-lock-string-face (:foreground temple-green))

   
(window-divider (:background temple-light-red))

(window-divider-first-pixel (:background temple-red))

(window-divider-last-pixel (:background temple-red))

(header-line (:background temple-blue :foreground temple-white))

(mode-line-buffer-id (:foreground temple-98-brown :background temple-black :box(:color temple-98-brown :line-width 4 :background temple-blue)))

(mode-line (:foreground temple-black :background temple-blue :box (:line-width -4 :color temple-black )))

(minibuffer-prompt (:foreground temple-white))

(internal-border (:background temple-blue))

(mode-line-inactive (:background temple-blue :foreground temple-black :box(:color temple-black :line-width -4)))

(vertical-border (:foreground temple-black))

(font-lock-builtin-face (:foreground temple-yellow))
(font-lock-constant-face (:foreground temple-light-purple))
(font-lock-comment-face (:foreground temple-98-brown))

(org-hide (:foreground temple-black))
(org-level-1 (:foreground temple-brown))
(org-level-2 (:foreground temple-cyan))
(org-level-3 (:foreground temple-purple))
(org-level-4 (:foreground temple-light-red))
(org-level-5 (:inherit 'org-level-1))
(org-level-6 (:inherit 'org-level-2))
(org-level-7 (:inherit 'org-level-3))
(org-level-8 (:inherit 'org-level-4))
(org-block (:extend t :background temple-dark-grey :foreground temple-white))
(org-block-begin-line (:foreground temple-light-grey :overline ))
(org-block-end-line (:inherit 'org-block-begin-line))
(org-ellipsis (:foreground temple-blue))


(secondary-selection (:background temple-white))

					; magit
(magit-section-heading (:foreground temple-yellow))
(magit-filename (:foreground temple-dark-grey))
(magit-diff-file-heading (:foreground temple-light-cyan))
(git-rebase-action (:foreground temple-light-red))
(magit-section-highlight (:foreground temple-red))
(magit-branch-local (:foreground temple-purple))
(magit-branch-remote (:foreground temple-green))
(magit-hash (:foreground temple-white))
(region (:background temple-brown ))

(vertical-border (:background temple-red :foreground temple-white))
(show-paren-match (:foreground temple-purple ))
(shadow (:foreground temple-light-grey))
(font-lock-function-name-face (:foreground temple-light-purple))
(font-lock-variable-name-face (:foreground temple-light-green))

(warning (:foreground temple-purple))
(fringe (:background temple-black))

(variable-pitch
  (:family "TempleOS"))
 (fixed-pitch-serif
  (:family "TempleOS"))
 (fixed-pitch
  (:family "TempleOS"))

 ; all-the-icons
 (all-the-icons-dsilver
  (:foreground temple-black))
 (all-the-icons-lsilver
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-silver
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-dpink
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-lpink
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-pink
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-dcyan
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-lcyan
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-cyan-alt
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-cyan
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-dorange
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-lorange
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-orange
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-dpurple
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-lpurple
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-purple-alt
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-purple
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-dmaroon
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-lmaroon
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-maroon
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-dblue
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-lblue
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-blue-alt
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-blue
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-dyellow
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-lyellow
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-yellow
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-dgreen
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-lgreen
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-green
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-red-alt
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-dred
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-lred
  (:inherit 'all-the-icons-dsilver))
 (all-the-icons-red
  (:inherit 'all-the-icons-dsilver))


 ; Ivy
 (highlight (:background temple-light-red :foreground temple-white))

 (completions-annotations (:foreground temple-white))
 (ivy-yanked-word
  (:inherit 'highlight))
 (ivy-completions-annotations
  (:inherit 'completions-annotations))
 (ivy-grep-line-number
  (:inherit 'compilation-line-number))
 (ivy-grep-info
  (:inherit 'compilation-info))
 (ivy-separator
  (:inherit 'font-lock-doc-face))
 (ivy-prompt-match
  (:inherit 'ivy-current-match))
 (ivy-highlight-face
  (:inherit 'highlight))
 (ivy-action
  (:inherit 'font-lock-builtin-face))
 (ivy-virtual
  (:inherit 'font-lock-builtin-face))
 (ivy-remote
  (:foreground temple-light-blue))
 (ivy-modified-outside-buffer
  (:inherit 'default))
 (ivy-modified-buffer
  (:inherit 'default))
 (ivy-org
  (:inherit 'org-level-4))
 (ivy-subdir
  (:inherit 'dired-directory))
 (ivy-match-required-face
  (:foreground temple-red :inherit 'minibuffer-prompt))
 (ivy-confirm-face
  (:foreground temple-green :inherit 'minibuffer-prompt))
 (ivy-minibuffer-match-face-4
  (:weight 'bold :background temple-dark-grey))
 (ivy-minibuffer-match-face-3
  (:weight 'bold :background temple-light-blue))
 (ivy-minibuffer-match-face-2
  (:weight 'bold :background temple-dark-grey))
 (ivy-minibuffer-match-face-1
  (:background temple-dark-grey))
 (ivy-minibuffer-match-highlight
  (:inherit 'highlight))
 (ivy-current-match
  (:extend t :foreground temple-light-red ))
 (ivy-cursor
  (:foreground temple-black :background temple-white))

 ; dired
(dired-ignored
  (:inherit 'shadow))
 (dired-special
  (:inherit 'font-lock-variable-name-face))
 (dired-symlink
  (:foreground temple-light-green))
 (dired-directory
  (:foreground temple-yellow))
 (dired-set-id
  (:foreground temple-red))
 (dired-perm-write
  (:foreground temple-light-green))
 (dired-warning
  (:inherit 'font-lock-warning-face))
 (dired-flagged
  (:inherit 'error))
 (dired-marked
  (:inherit 'warning))
 (dired-mark
  (:inherit 'font-lock-constant-face))
 (dired-header
  (:foreground temple-98-brown))


 ))

(provide-theme 'temple-os)




