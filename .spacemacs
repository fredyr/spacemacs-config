;;  mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ansible
     yaml
     html
     javascript
     (python :variables python-sort-imports-on-save t)
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     ;; better-defaults
     (c-c++ :variables c-c++-enable-clang-support t)
     emacs-lisp
     clojure
     erlang
     elixir
     elm
     git
     haskell
     ;; html
     ;; react
     markdown
     ocaml
     haskell
     idris
     ;; org
     ;; python
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     syntax-checking
     version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '(gnuplot-mode)
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '(org-bullets)
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; Either `vim' or `emacs'. Evil is always enabled but if the variable
   ;; is `emacs' then the `holy-mode' is enabled at startup.
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer.
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed.
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'."
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(fd
                         wombat
                         solarized-light
                         solarized-dark
                         spacemacs-light
                         spacemacs-dark
                         leuven
                         monokai
                         zenburn)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state nil
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("DejaVu Sans Mono"
                               :size 15
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it.
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; Default value is `cache'.
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f) is replaced.
   dotspacemacs-use-ido nil
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content.
   dotspacemacs-enable-paste-micro-state nil
   ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
   ;; the commands bound to the current keystrokes.
   dotspacemacs-guide-key-delay 0.4
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil ;; to boost the loading time.
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up.
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX."
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line.
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen.
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   dotspacemacs-smartparens-strict-mode t
   ;; Select a scope to highlight delimiters. Possible value is `all',
   ;; `current' or `nil'. Default is `all'
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   dotspacemacs-search-tools '("ag" "ack" "grep" "pt")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now.
   dotspacemacs-default-package-repository nil
   )
  ;; User initialization goes here
  (setq-default custom-theme-directory "~/.emacs.d/private/local/")
  )

(defun dotspacemacs/user-config ()
  "Configuration function.
 This function is called at the very end of Spacemacs initialization after
layers configuration."

  (defun append-semicolon ()
    (interactive)
    (evil-end-of-line)
    (evil-append nil)
    (insert ";")
    (evil-normal-state))

  (global-hl-line-mode -1) ; Disable current line highlight
  (global-vi-tilde-fringe-mode -1)
  ;; Keybindings
  (setq mac-command-modifier 'control)
  (define-key evil-motion-state-map "L" 'evil-end-of-line)
  (define-key evil-motion-state-map "H" 'evil-beginning-of-line)
  (global-set-key [home] 'evil-first-non-blank)
  (global-set-key [end] 'evil-end-of-line)
  (windmove-default-keybindings)
  (evil-leader/set-key "cf" 'clang-format-region)
  (global-set-key (kbd "C-;") 'append-semicolon)
  (evil-leader/set-key "ps" 'helm-projectile-find-other-file)

  ;; (setq flycheck-clang-include-path
  ;;       (list
  ;;        (expand-file-name "~/Documents/projects/..")
  ;;        ))
  (setq flycheck-clang-includes (list "stdbool.h"))
  ;; (setq flycheck-clang-language-standard (list "c99"))

  (setq scheme-program-name "scheme48 -i /Users/fredyr/Documents/projects/prescheme/ps-compiler.image")

  ;; Eval using SPC SPC conflicts w Ace-jump
  (evil-leader/set-key-for-mode 'scheme-mode "," 'scheme-send-last-sexp)
  (evil-leader/set-key-for-mode 'clojure-mode "<SPC>" 'cider-eval-last-sexp)
  (evil-leader/set-key-for-mode 'tuareg-mode "," 'utop-eval-phrase)
  ;; Switch window close bindings
  ;; (evil-leader/set-key "wc" 'ace-delete-window)
  ;; (evil-leader/set-key "wC" 'delete-window)
  ;; Paredit key bindings
  (sp-use-smartparens-bindings)
  ;; Remove smartparens crappy overlay coloring when editing
  (setq sp-highlight-pair-overlay nil)
  (setq sp-highlight-wrap-overlay nil)
  (setq sp-highlight-wrap-tag-overlay nil)
  ;; (setq sp-show-pair-match-face nil)
  (define-key evil-normal-state-map (kbd "-") 'sp-backward-sexp)
  (define-key evil-normal-state-map (kbd "=") 'sp-next-sexp)
  (define-key evil-normal-state-map (kbd "_") 'sp-backward-up-sexp)
  (define-key evil-normal-state-map (kbd "+") 'sp-down-sexp)
  ;;(define-key global-map (kbd "C-k") 'sp-kill-sexp)

  ;; Helm-mini styling
  (require 'helm-imenu)
  (setq helm-display-header-line nil) ;; t by default
  (set-face-attribute 'helm-source-header nil :height 0.1)

  ;; Parenthesis fixes
  ;; Make the parenthesis matching a bit more sane
  (set-face-background 'sp-show-pair-match-face (face-background 'default))
  (set-face-foreground 'sp-show-pair-match-face "#def")
  (set-face-attribute 'sp-show-pair-match-face nil :weight 'extra-bold)
  ;; Swap [] and ()
  (keyboard-translate ?\( ?\[)
  (keyboard-translate ?\[ ?\()
  (keyboard-translate ?\) ?\])
  (keyboard-translate ?\] ?\))
  ;; Don't move cursor back on esc
  (setq evil-move-cursor-back nil)
  ;; Misc
  (add-hook 'before-save-hook 'delete-trailing-whitespace)
  (setq tramp-default-method "ssh")
  ;; Always reload if changed form the outside
  (global-auto-revert-mode t)
  ;; Use C style comments in C
  (add-hook 'c-mode-common-hook (lambda () (setq comment-start "// " comment-end "")))
  ;; Let underscore be a part of words in C mode YES!
  (add-hook 'c-mode-common-hook #'(lambda () (modify-syntax-entry ?_ "w")))
  (add-hook 'python-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
  (add-hook 'js2-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))

  ;; Magit SVN
  (setq-default git-enable-magit-svn-plugin t)
  (setq-default git-magit-status-fullscreen t)
  ;; Org-mode show embedded code in colors!
  (setq org-src-fontify-natively t)
  (setq org-bullets-mode nil)
  ;; (org-babel-do-load-languages 'org-babel-load-languages '((ditaa . t) (gnuplot . t))

  ;; Asm mode configuration
  (require 'asm-mode)
  (add-hook 'asm-mode-hook (lambda ()
                             (setq indent-tabs-mode nil) ; use spaces to indent
                             (electric-indent-mode -1) ; indentation in asm-mode is annoying
                             (setq asm-comment-char ?\/)
                             (setq tab-stop-list (number-sequence 2 60 2))))
  ;; Reason mode configuration
  ;; (setq opam (substring (shell-command-to-string "opam config var prefix 2> /dev/null") 0 -1))
  ;; (add-to-list 'load-path (concat opam "/share/emacs/site-lisp"))
  ;; (setq refmt-command (concat opam "/bin/refmt"))
  ;; (require 'reason-mode)
  ;; (require 'merlin)
  ;; (setq merlin-ac-setup t)
  ;; (add-hook 'reason-mode-hook (lambda ()
  ;;                               (add-hook 'before-save-hook 'refmt-before-save)
  ;;                               (merlin-mode)))

  ;; JS2 config
  (setq js2-mode-show-strict-warnings nil)
  ;; Web-mode config
  (setq web-mode-enable-current-element-highlight nil)

  (defun my/use-eslint-from-node-modules ()
    (let* ((root (locate-dominating-file
                  (or (buffer-file-name) default-directory)
                  "node_modules"))
           (eslint (and root
                        (expand-file-name "node_modules/eslint/bin/eslint.js"
                                          root))))
      (when (and eslint (file-executable-p eslint))
        (setq-local flycheck-javascript-eslint-executable eslint))))

  (add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)
  ;; use web-mode for .jsx files
  ;; (add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
  ;; http://www.flycheck.org/manual/latest/index.html
  (require 'flycheck)
  ;; turn on flychecking globally
  ;; (add-hook 'after-init-hook #'global-flycheck-mode)
  ;; disable jshint since we prefer eslint checking
  (setq-default flycheck-disabled-checkers
                (append flycheck-disabled-checkers
                        '(javascript-jshint)))

  ;; use eslint with web-mode for jsx files
  ;; (flycheck-add-mode 'javascript-eslint 'web-mode)
  ;; (setq flycheck-highlighting-mode 'lines)

  ;; ERC config
  (setq erc-hide-list '("JOIN" "PART" "QUIT"))
  (defun dos2unix ()
    "Replace DOS eol CR LF with Unix eol CR"
    (interactive)
    (goto-char (point-min))
    (while (search-forward "\r" nil t) (replace-match "")))
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(safe-local-variable-values
   (quote
    ((eval web-mode-set-engine "django")
     (eval when
           (fboundp
            (quote ansible))
           (ansible)
           (setq-local ansible::vault-password-file
                       (expand-file-name "vaultpass"
                                         (projectile-project-root)))
           (ansible::auto-decrypt-encrypt))
     (elixir-enable-compilation-checking . t)
     (elixir-enable-compilation-checking)))))
