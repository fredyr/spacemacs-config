;;; fd-theme.el --- Custom face theme for Emacs  -*-coding: utf-8 -*-

;;;https://github.com/don9z/blackboard-theme/blob/master/blackboard-theme.el
;;;http://jaderholm.com/color-themes/color-theme-wombat.el

;;;http://emacs.stackexchange.com/questions/10975/customize-face-magit-item-highlight-properly
;;;https://github.com/oneKelvinSmith/monokai-emacs/blob/master/monokai-theme.el

(deftheme fd
  "My customizations of the Wombat theme")

(let (;; color definitions here
      (monokai-background  "#272822")
      (monokai-foreground  "#F8F8F2")
      (monokai-comments    "#75715E")
      (monokai-foreground-hc  "#141414")
      (monokai-foreground-lc  "#171A0B")
      (monokai-yellow-hc   "#FFFACE")
      (monokai-yellow-lc   "#9A8F21")
      (monokai-orange-hc   "#FFBE74")
      (monokai-orange-lc   "#A75B00")
      (monokai-red-hc      "#FEB0CC")
      (monokai-red-lc      "#F20055")
      (monokai-magenta-hc  "#FEC6F9")
      (monokai-magenta-lc  "#F309DF")
      (monokai-violet-hc   "#F0E7FF")
      (monokai-violet-lc   "#7830FC")
      (monokai-blue-hc     "#CAF5FD")
      (monokai-blue-lc     "#1DB4D0")
      (monokai-cyan-hc     "#D3FBF6")
      (monokai-cyan-lc     "#4BBEAE")
      (monokai-green-hc    "#CCF47C")
      (monokai-green-lc    "#679A01")

      (fd-background       "#242424")
      (fd-highlight        "#454545")

      (smyck-dark-black    "#000000")
      (smyck-dark-red      "#C75646")
      (smyck-dark-green    "#8EB33B")
      (smyck-dark-yellow   "#D0B03C")
      (smyck-dark-blue     "#72B3CC")
      (smyck-dark-magenta  "#C8A0D1")
      (smyck-dark-cyan     "#218693")
      (smyck-dark-white    "#B0B0B0")
      (smyck-light-black   "#5D5D5D")
      (smyck-light-red     "#E09690")
      (smyck-light-green   "#CDEE69")
      (smyck-light-yellow  "#FFE377")
      (smyck-light-blue    "#9CD9F0")
      (smyck-light-magenta "#FBB1F9")
      (smyck-light-cyan    "#77DFD8")
      (smyck-light-white   "#F7F7F7")
      ;; ... and the rest
      (class '((class color) (min-colors 89))))
  (custom-theme-set-faces
   'fd
   `(default ((,class (:background ,fd-background :foreground "#f6f3e8"))))
   `(cursor ((,class (:background "yellow"))))
   ;; Highlighting faces
   `(fringe ((,class (:background "#303030"))))
   `(highlight ((,class (:background ,fd-highlight :foreground "#ffffff"
			 :underline t))))
   `(region ((,class (:background "royalblue4" :foreground "#f6f3e8"))))
   `(secondary-selection ((,class (:background "#333366" :foreground "#f6f3e8"))))
   `(isearch ((,class (:background "#343434" :foreground "#857b6f"))))
   `(lazy-highlight ((,class (:background "#384048" :foreground "#a0a8b0"))))
   ;; Mode line faces
   `(mode-line ((,class (:background "#444444" :foreground "#f6f3e8"))))
   `(mode-line-inactive ((,class (:background "#444444" :foreground "#857b6f"))))
   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:foreground "#e5786d"))))
   `(escape-glyph ((,class (:foreground "#ddaa6f" :weight bold))))
   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground "#e5786d"))))
   `(font-lock-comment-face ((,class (:foreground "#99968b"))))
   `(font-lock-constant-face ((,class (:foreground "#e5786d"))))
   `(font-lock-function-name-face ((,class (:foreground "#cae682"))))
   `(font-lock-keyword-face ((,class (:foreground "#8ac6f2" :weight bold))))
   `(font-lock-string-face ((,class (:foreground "#95e454"))))
   `(font-lock-type-face ((,class (:foreground "#92a65e" :weight bold))))
   `(font-lock-variable-name-face ((,class (:foreground "#cae682"))))
   `(font-lock-warning-face ((,class (:foreground "#ccaa8f"))))
   ;; Button and link faces
   `(link ((,class (:foreground "#8ac6f2" :underline t))))
   `(link-visited ((,class (:foreground "#e5786d" :underline t))))
   `(button ((,class (:background "#333333" :foreground "#f6f3e8"))))
   `(header-line ((,class (:background "#303030" :foreground "#e7f6da"))))

   ;; Javascript
   `(js2-function-param ((,class (:foreground "#fce94f")))) ;;; "#fce94f"
   ;; Magit
   `(magit-diff-removed ((t (:foreground ,smyck-dark-red))))
   `(magit-diff-added ((t (:foreground ,smyck-dark-green))))
   `(magit-diff-removed-highlight ((t (:foreground ,smyck-dark-red :background "#454545"))))
   `(magit-diff-added-highlight ((t (:foreground ,smyck-dark-green :background "#454545"))))


;; ediff
   `(ediff-fine-diff-A ((t (:background ,monokai-orange-lc))))
   `(ediff-fine-diff-B ((t (:background ,monokai-green-lc))))
   `(ediff-fine-diff-C ((t (:background ,monokai-yellow-lc))))
   `(ediff-current-diff-C ((t (:background "royalblue4"))))
   `(ediff-even-diff-A ((t (:background ,fd-highlight ))))
   `(ediff-odd-diff-A  ((t (:background ,fd-highlight ))))
   `(ediff-even-diff-B ((t (:background ,fd-highlight ))))
   `(ediff-odd-diff-B  ((t (:background ,fd-highlight ))))
   `(ediff-even-diff-C ((t (:background ,fd-highlight ))))
   `(ediff-odd-diff-C  ((t (:background ,fd-highlight ))))

  ;; Gnus faces
   `(gnus-group-news-1 ((,class (:weight bold :foreground "#95e454"))))
   `(gnus-group-news-1-low ((,class (:foreground "#95e454"))))
   `(gnus-group-news-2 ((,class (:weight bold :foreground "#cae682"))))
   `(gnus-group-news-2-low ((,class (:foreground "#cae682"))))
   `(gnus-group-news-3 ((,class (:weight bold :foreground "#ccaa8f"))))
   `(gnus-group-news-3-low ((,class (:foreground "#ccaa8f"))))
   `(gnus-group-news-4 ((,class (:weight bold :foreground "#99968b"))))
   `(gnus-group-news-4-low ((,class (:foreground "#99968b"))))
   `(gnus-group-news-5 ((,class (:weight bold :foreground "#cae682"))))
   `(gnus-group-news-5-low ((,class (:foreground "#cae682"))))
   `(gnus-group-news-low ((,class (:foreground "#99968b"))))
   `(gnus-group-mail-1 ((,class (:weight bold :foreground "#95e454"))))
   `(gnus-group-mail-1-low ((,class (:foreground "#95e454"))))
   `(gnus-group-mail-2 ((,class (:weight bold :foreground "#cae682"))))
   `(gnus-group-mail-2-low ((,class (:foreground "#cae682"))))
   `(gnus-group-mail-3 ((,class (:weight bold :foreground "#ccaa8f"))))
   `(gnus-group-mail-3-low ((,class (:foreground "#ccaa8f"))))
   `(gnus-group-mail-low ((,class (:foreground "#99968b"))))
   `(gnus-header-content ((,class (:foreground "#8ac6f2"))))
   `(gnus-header-from ((,class (:weight bold :foreground "#95e454"))))
   `(gnus-header-subject ((,class (:foreground "#cae682"))))
   `(gnus-header-name ((,class (:foreground "#8ac6f2"))))
   `(gnus-header-newsgroups ((,class (:foreground "#cae682"))))
   ;; Message faces
   `(message-header-name ((,class (:foreground "#8ac6f2" :weight bold))))
   `(message-header-cc ((,class (:foreground "#95e454"))))
   `(message-header-other ((,class (:foreground "#95e454"))))
   `(message-header-subject ((,class (:foreground "#cae682"))))
   `(message-header-to ((,class (:foreground "#cae682"))))
   `(message-cited-text ((,class (:foreground "#99968b"))))
   `(message-separator ((,class (:foreground "#e5786d" :weight bold))))))

(custom-theme-set-variables
 'fd
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682"
			    "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"]))

(provide-theme 'fd)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; fd-theme.el ends here
