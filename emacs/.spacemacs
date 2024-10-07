;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(erlang
     python
     java
     html
     csv
     sql
     markdown
     clojure
     yaml
     typescript
     javascript
     elixir
     racket
     scheme
     go
     rust
     julia
     scala
     haskell
     ocaml
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     ivy
     docker
     ;; auto-completion
     ;; better-defaults
     emacs-lisp
     ;; git
     ;; markdown
     org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(magit exec-path-from-shell vterm flycheck-clojure flycheck-clj-kondo)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         badwolf
                         flatui
                         ;; spacemacs-dark
                         ;; spacemacs-light
                         ;; manoj-dark
                         ;; monochrome
                         ;; hemisu-dark
                         ;; minimal
                         ;; afternoon
                         ;; soft-stone
                         ;; adwaita
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state nil
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters nil
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'all
   inferior-lisp-program "sbcl"
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (spacemacs/set-leader-keys "js" 'sp-splice-sexp)
  (spacemacs/set-leader-keys "jr" 'sp-raise-sexp)
  (spacemacs/set-leader-keys "jf" 'sp-forward-slurp-sexp)
  (spacemacs/set-leader-keys "jb" 'sp-forward-barf-sexp)
  (spacemacs/toggle-highlight-current-line-globally-off))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(column-number-mode t)
 '(flycheck-elixir-credo-strict t)
 '(grep-find-ignored-directories
   '("SCCS" "RCS" "CVS" "MCVS" ".src" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" "_build" "deps"))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(package-selected-packages
   '(git-commit with-editor transient csv-mode sql-indent markdown-toc mmm-mode markdown-mode gh-md inflections cider-eval-sexp-fu cider sesman queue parseedn clojure-mode parseclj a wgrep smex ivy-hydra counsel-projectile counsel swiper ivy tide web-beautify livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor yasnippet multiple-cursors js2-mode js-doc coffee-mode vi-tilde-fringe open-junk-file ob-elixir lorem-ipsum link-hint helm-flx flycheck-credo flycheck highlight evil-indent-plus evil-exchange evil-ediff column-enforce-mode clean-aindent-mode company elixir-mode ws-butler winum volatile-highlights uuidgen toc-org spaceline powerline restart-emacs request popwin persp-mode pcre2el paradox spinner org-bullets neotree move-text macrostep linum-relative indent-guide hydra lv hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-iedit-state iedit evil-escape evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu elisp-slime-nav dumb-jump f dash s diminish define-word bind-map bind-key auto-highlight-symbol auto-compile packed adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async which-key aggressive-indent rainbow-delimiters yas-minor-mode yasnippets use-package typescript-mode cider-hydra clj-refactor yaml-mode paredit rjsx-mode alchemist find-file-in-project magit))
 '(ring-bell-function 'ignore)
 '(safe-local-variable-values
   '((cider-repl-init-code "(dev)")
     (cider-ns-refresh-after-fn . "dev-extras/resume")
     (cider-ns-refresh-before-fn . "dev-extras/suspend")
     (elixir-enable-compilation-checking . t)
     (elixir-enable-compilation-checking))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(column-number-mode t)
 '(flycheck-elixir-credo-strict t)
 '(grep-find-ignored-directories
   '("SCCS" "RCS" "CVS" "MCVS" ".src" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" "_build" "deps"))
 '(ignored-local-variable-values '((cider-repl-display-help-banner)))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-scratch-message
   ";; In order to have what you really want, you must first be who you really are")
 '(make-backup-files nil)
 '(org-agenda-files
   '("/Users/derekmtaylor-ridehealth/org/5-problems/5-problems-05-09.org" "/Users/derekmtaylor-ridehealth/org/5-problems/5-problems-2024-04-29.org" "/Users/derekmtaylor-ridehealth/org/5-problems/5-problems-2024-04-30.org" "/Users/derekmtaylor-ridehealth/org/5-problems/5-problems-2024-05-01.org" "/Users/derekmtaylor-ridehealth/org/5-problems/5-problems-2024-05-02.org" "/Users/derekmtaylor-ridehealth/org/5-problems/5-problems-2024-05-03.org" "/Users/derekmtaylor-ridehealth/org/5-problems/5-problems-2024-05-07.org" "/Users/derekmtaylor-ridehealth/org/5-problems/5-problems-2024-05-08.org" "/Users/derekmtaylor-ridehealth/org/5-problems/5-problems-2024-05-09.org" "/Users/derekmtaylor-ridehealth/org/5-problems/5-problems-2024-05-10.org" "/Users/derekmtaylor-ridehealth/org/5-problems/5-problems-previous.org" "/Users/derekmtaylor-ridehealth/org/matthew-homework/20240610-homework.org" "/Users/derekmtaylor-ridehealth/org/matthew-homework/20240617-homework.org" "/Users/derekmtaylor-ridehealth/org/matthew-homework/20240624-homework.org" "/Users/derekmtaylor-ridehealth/org/matthew-homework/20240701-homework.org" "/Users/derekmtaylor-ridehealth/org/matthew-homework/20240708-homework.org" "/Users/derekmtaylor-ridehealth/org/matthew-homework/20240729-homework.org" "/Users/derekmtaylor-ridehealth/org/matthew-homework/20240805-homework.org" "/Users/derekmtaylor-ridehealth/org/matthew-homework/20240812-homework.org" "/Users/derekmtaylor-ridehealth/org/matthew-homework/matthew-homework-submission-four.org" "/Users/derekmtaylor-ridehealth/org/matthew-homework/matthew-homework-submission-postmortem.org" "/Users/derekmtaylor-ridehealth/org/matthew-homework/matthew-homework-submission-three.org" "/Users/derekmtaylor-ridehealth/org/matthew-homework/matthew-homework-submission-two.org" "/Users/derekmtaylor-ridehealth/org/matthew-homework/matthew-homework-submission.org" "/Users/derekmtaylor-ridehealth/org/misc/20240529-food.org" "/Users/derekmtaylor-ridehealth/org/misc/20240610-weekly-goals.org" "/Users/derekmtaylor-ridehealth/org/misc/20240617-weekly-goals.org" "/Users/derekmtaylor-ridehealth/org/misc/20240715-eating-notes.org" "/Users/derekmtaylor-ridehealth/org/misc/approx-comp-notes.org" "/Users/derekmtaylor-ridehealth/org/misc/april-2024-spending-notes.org" "/Users/derekmtaylor-ridehealth/org/misc/busy-worker-notes.org" "/Users/derekmtaylor-ridehealth/org/misc/dieting-notes.org" "/Users/derekmtaylor-ridehealth/org/misc/dsa-todo-followup-05132024.org" "/Users/derekmtaylor-ridehealth/org/misc/headway-cheat-sheet.org" "/Users/derekmtaylor-ridehealth/org/misc/headway-r1-interview-notes.org" "/Users/derekmtaylor-ridehealth/org/misc/interview-prep.org" "/Users/derekmtaylor-ridehealth/org/misc/kadane-algorithm-notes.org" "/Users/derekmtaylor-ridehealth/org/misc/kelsey-birthday.org" "/Users/derekmtaylor-ridehealth/org/misc/miami-apartment-search.org" "/Users/derekmtaylor-ridehealth/org/misc/mock-sd-interview.org" "/Users/derekmtaylor-ridehealth/org/misc/real-time-leaderboard-case-notes.org" "/Users/derekmtaylor-ridehealth/org/misc/rh-team-bonding-notes.org" "/Users/derekmtaylor-ridehealth/org/misc/rolodex.org" "/Users/derekmtaylor-ridehealth/org/misc/skiena-algorithm-design-manual-notes.org" "/Users/derekmtaylor-ridehealth/org/misc/summer-2024-goals.org" "/Users/derekmtaylor-ridehealth/org/misc/system-design-primer-notes.org" "/Users/derekmtaylor-ridehealth/org/misc/training-notes.org" "/Users/derekmtaylor-ridehealth/org/misc/whalesync-cheat-sheet.org" "/Users/derekmtaylor-ridehealth/org/tdls/03252024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/03262024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/03272024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/04012024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/04092024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/04102024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/04112024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/04122024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/04132024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/04162024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/04172024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/04182024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/04192024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/04212024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/04222024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/04232024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/04242024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/04252024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/04262024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/04272024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/04282024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/04292024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/04302024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/05012024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/05022024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/05032024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/05042024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/05052024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/05062024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/05072024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/05082024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/05092024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/05102024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/0512024-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/12032023-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/12042023-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/12052023-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/12062023-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/12072023-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/12082023-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/12092023-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/12112023-agenda.org" "/Users/derekmtaylor-ridehealth/org/tdls/12112023-weekly-agenda.org" "/Users/derekmtaylor-ridehealth/org/tdls/20240514-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/20240515-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/20240516-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/20240517-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/20240518-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/20240519-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/20240520-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/20240528-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/20240529-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/20240610-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/20240617-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/20240624-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/20240625-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/20240627-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/20240701-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/global-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/miami-tdl.org" "/Users/derekmtaylor-ridehealth/org/tdls/tdl-for-11012023.org" "/Users/derekmtaylor-ridehealth/org/tdls/tdl-for-11022023.org" "/Users/derekmtaylor-ridehealth/org/tdls/tdl-for-11132023.org" "/Users/derekmtaylor-ridehealth/org/work/12042023-tdl.org" "/Users/derekmtaylor-ridehealth/org/work/12052023-tdl.org" "/Users/derekmtaylor-ridehealth/org/work/12062023-tdl.org" "/Users/derekmtaylor-ridehealth/org/work/12072023-tdl.org" "/Users/derekmtaylor-ridehealth/org/work/12082023-tdl.org" "/Users/derekmtaylor-ridehealth/org/work/20240819-work-tdl.org" "/Users/derekmtaylor-ridehealth/org/work/20240820-work-tdl.org" "/Users/derekmtaylor-ridehealth/org/work/20240821-work-tdl.org" "/Users/derekmtaylor-ridehealth/org/work/20240822-work-tdl.org" "/Users/derekmtaylor-ridehealth/org/work/additional-alarms-stuff.org" "/Users/derekmtaylor-ridehealth/org/work/alarms-meeting-notes.org" "/Users/derekmtaylor-ridehealth/org/work/backlog.org" "/Users/derekmtaylor-ridehealth/org/work/brian-tts-questions.org" "/Users/derekmtaylor-ridehealth/org/work/compliance-notes.org" "/Users/derekmtaylor-ridehealth/org/work/named-features-notes.org" "/Users/derekmtaylor-ridehealth/org/work/remaining-alarms-logic.org" "/Users/derekmtaylor-ridehealth/org/work/rh-eng-team-outing-notes.org" "/Users/derekmtaylor-ridehealth/org/work/tdl-for-11012023.org" "/Users/derekmtaylor-ridehealth/org/work/tdl-for-11022023.org" "/Users/derekmtaylor-ridehealth/org/work/tdl-for-11132023.org" "/Users/derekmtaylor-ridehealth/org/work/trip-telemetry-accomplishments.org" "/Users/derekmtaylor-ridehealth/org/backlog.org" "/Users/derekmtaylor-ridehealth/org/refile.org"))
 '(org-babel-load-languages
   '((elixir . t)
     (js . t)
     (shell . t)
     (clojure . t)
     (sql . t)
     (java . t)
     (python . t)
     (groovy . t)
     (emacs-lisp . t)))
 '(package-selected-packages
   '(nov ssh wttrin evil-collection selectric-mode flycheck-clj-kondo vterm flycheck-clojure git-commit with-editor transient csv-mode sql-indent markdown-toc mmm-mode markdown-mode gh-md inflections cider-eval-sexp-fu cider sesman queue parseedn clojure-mode parseclj a wgrep smex ivy-hydra counsel-projectile counsel swiper ivy tide web-beautify livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor yasnippet multiple-cursors js2-mode js-doc coffee-mode vi-tilde-fringe open-junk-file ob-elixir lorem-ipsum link-hint helm-flx flycheck-credo flycheck highlight evil-indent-plus evil-exchange evil-ediff column-enforce-mode clean-aindent-mode company elixir-mode ws-butler winum volatile-highlights uuidgen toc-org spaceline powerline restart-emacs request popwin persp-mode pcre2el paradox spinner org-bullets neotree move-text macrostep linum-relative indent-guide hydra lv hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-iedit-state iedit evil-escape evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu elisp-slime-nav dumb-jump f dash s diminish define-word bind-map bind-key auto-highlight-symbol auto-compile packed adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async which-key aggressive-indent rainbow-delimiters yas-minor-mode yasnippets use-package typescript-mode cider-hydra clj-refactor yaml-mode paredit rjsx-mode alchemist find-file-in-project))
 '(ring-bell-function 'ignore)
 '(safe-local-variable-values
   '((cider-clojure-cli-aliases . ":dev:test")
     (cider-clojure-cli-aliases . ":test")
     (cider-shadow-watched-builds "platform")
     (cider-shadow-default-options . "platform")
     (cider-preferred-build-tool . shadow-cljs)
     (cider-default-cljs-repl . shadow)
     (cider-default-cljs-repl . custom)
     (cider-clojure-cli-aliases . ":main")
     (cider-format-code-options
      ("indents"
       (("After"
         (("inner" 0)))
        ("Given"
         (("inner" 0)))
        ("Then"
         (("inner" 0)))
        ("When"
         (("inner" 0)))
        ("are"
         (("inner" 0)))
        ("checking"
         (("inner" 0)))
        ("derivefn"
         (("inner" 0)))
        ("derivefn*"
         (("inner" 0)))
        ("rh.utils.maputils/derivefn"
         (("inner" 0)))
        ("rh.utils.maputils/derivefn*"
         (("inner" 0)))
        ("m/search"
         (("inner" 0)))
        ("sp/recursive-path"
         (("block" 2))))
       ("alias-map"
        (("m" "meander.epsilon")
         ("sp" "com.rpl.specter")))))
     (eval progn
           (make-variable-buffer-local 'cider-jack-in-nrepl-middlewares)
           (add-to-list 'cider-jack-in-nrepl-middlewares "shadow.cljs.devtools.server.nrepl/middleware"))
     (cider-format-code-options
      ("indents"
       (("GET"
         (("block" 0)))
        ("DELETE"
         (("block" 0)))
        ("POST"
         (("block" 0)))
        ("PUT"
         (("block" 0))))))
     (cider-repl-init-code "
            (in-ns 'user)
            (or (when-let [dev (resolve 'dev)] (dev))
                (when-let [console (resolve 'console)] (console)))
         ")
     (cider-clojure-cli-aliases . ":dev")
     (cider-preferred-build-tool . clojure-cli)
     (cider-repl-init-code "(dev)")
     (cider-ns-refresh-after-fn . "dev-extras/resume")
     (cider-ns-refresh-before-fn . "dev-extras/suspend")
     (elixir-enable-compilation-checking . t)
     (elixir-enable-compilation-checking)))
 '(send-mail-function 'sendmail-send-it))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-parentheses-highlight ((nil (:weight ultra-bold)))))
)
