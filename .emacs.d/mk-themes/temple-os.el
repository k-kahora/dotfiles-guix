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
   (font-lock-keyword-face (:foreground temple-cyan))
   (font-lock-string-face (:foreground temple-green))

   
(window-divider (:background temple-light-red))

(window-divider-first-pixel (:background temple-red))

(window-divider-last-pixel (:background temple-red))

(header-line (:background temple-blue :foreground temple-white))

(mode-line-buffer-id (:foreground temple-blue :background temple-black))

(mode-line (:foreground temple-black :background temple-blue :box (:line-width -4 :color temple-black )))

(minibuffer-prompt (:foreground temple-white))

(internal-border (:background temple-blue))

(mode-line-inactive (:background temple-blue :foreground temple-black :box(:color temple-black :line-width -4)))

(vertical-border (:foreground temple-black))

(font-lock-builtin-face (:foreground temple-yellow))
(font-lock-constant-face (:foreground temple-light-purple))
(font-lock-comment-face (:foreground temple-98-brown))

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
(magit-section-highlight (:foreground temple-brown))
(magit-branch-local (:foreground temple-light-purple))
(magit-hash (:foreground temple-white))
(region (:background temple-brown ))

(vertical-border (:background temple-red :foreground temple-white))
(show-paren-match (:foreground temple-purple ))
(shadow (:foreground temple-light-grey))
(font-lock-function-name-face (:foreground temple-98-brown))
(warning (:foreground temple-yellow))
(fringe (:background temple-black))

(variable-pitch
  (:family "TempleOS"))
 (fixed-pitch-serif
  (:family "TempleOS"))
 (fixed-pitch
  (:family "TempleOS"))

 ; all-the-icons
 (all-the-icons-dsilver
  (:foreground temple-dark-grey))
 (all-the-icons-lsilver
  (:foreground temple-light-grey))
 (all-the-icons-silver
  (:foreground temple-light-grey))
 (all-the-icons-dpink
  (:foreground temple-red))
 (all-the-icons-lpink
  (:foreground temple-light-red))
 (all-the-icons-pink
  (:foreground temple-red))
 (all-the-icons-dcyan
  (:foreground temple-cyan))
 (all-the-icons-lcyan
  (:foreground temple-light-grey))
 (all-the-icons-cyan-alt
  (:foreground temple-cyan))
 (all-the-icons-cyan
  (:foreground temple-cyan))
 (all-the-icons-dorange
  (:foreground temple-brown))
 (all-the-icons-lorange
  (:foreground temple-brown))
 (all-the-icons-orange
  (:foreground temple-brown))
 (all-the-icons-dpurple
  (:foreground temple-purple))
 (all-the-icons-lpurple
  (:foreground temple-light-purple))
 (all-the-icons-purple-alt
  (:foreground temple-light-blue))
 (all-the-icons-purple
  (:foreground temple-purple))
 (all-the-icons-dmaroon
  (:foreground temple-red))
 (all-the-icons-lmaroon
  (:foreground temple-light-red))
 (all-the-icons-maroon
  (:foreground temple-red))
 (all-the-icons-dblue
  (:foreground temple-blue))
 (all-the-icons-lblue
  (:foreground temple-light-blue))
 (all-the-icons-blue-alt
  (:foreground temple-cyan))
 (all-the-icons-blue
  (:foreground temple-blue))
 (all-the-icons-dyellow
  (:foreground temple-yellow))
 (all-the-icons-lyellow
  (:foreground temple-yellow))
 (all-the-icons-yellow
  (:foreground temple-yellow))
 (all-the-icons-dgreen
  (:foreground temple-green))
 (all-the-icons-lgreen
  (:foreground temple-yellow))
 (all-the-icons-green
  (:foreground temple-green))
 (all-the-icons-red-alt
  (:foreground temple-red))
 (all-the-icons-dred
  (:foreground temple-red))
 (all-the-icons-lred
  (:foreground temple-light-red))
 (all-the-icons-red
  (:foreground temple-red))


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
  (:inherit 'font-lock-keyword-face))
 (dired-directory
  (:inherit 'font-lock-function-name-face))
 (dired-set-id
  (:inherit 'font-lock-warning-face))
 (dired-perm-write
  (:inherit 'font-lock-comment-delimiter-face))
 (dired-warning
  (:inherit 'font-lock-warning-face))
 (dired-flagged
  (:inherit 'error))
 (dired-marked
  (:inherit 'warning))
 (dired-mark
  (:inherit 'font-lock-constant-face))
 (dired-header
  (:inherit 'font-lock-type-face))
 
))

(provide-theme 'temple-os)




