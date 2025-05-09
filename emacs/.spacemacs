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
     markdown
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
   dotspacemacs-additional-packages '(
                                      magit
                                      vterm
                                      sly
                                      exec-path-from-shell
                                      pdf-tools
                                      flycheck-clj-kondo
                                      flycheck-clojure
                                      nov
                                      ;; slime
                                      ;; workaround for renamed string-edit package (renamed from string-edit to string-edit-at-point leading to
                                      ;; issues in spacemacs, that expects string-edit. the commit is  the last before the rename of the package)
                                      ;; should be removed after the spacemacs issue is resolved (see https://github.com/syl20bnr/spacemacs/issues/15648)
                                      (string-edit :location (recipe :fetcher github :repo "magnars/string-edit.el" :commit "d7c4b9db6c4987b5c022a9858e6302a4c53aff5f"))

                                      ;; From https://github.com/syl20bnr/spacemacs/issues/10972
                                      ;; evil-ediff was removed from elpa, but is still referenced in spacemacs-edit layer...
                                      (evil-ediff :location (recipe :fetcher github :repo "emacs-evil/evil-ediff"))
                                      (evil-magit :location (recipe
                                                             :fetcher github
                                                             :repo "emacs-evil/evil-magit"))
                                      )
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
   dotspacemacs-editing-style 'vim
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
   dotspacemacs-line-numbers t
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
  (spacemacs/toggle-highlight-current-line-globally-off)
  (require 'flycheck-clj-kondo))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.

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
   '(byte-compile-warnings nil)
   '(column-number-mode t)
   '(evil-collection-mode-list
     '((buff-menu "buff-menu") eww dired quickrun ediff magit nov alchemist))
   '(flycheck-elixir-credo-strict t)
   '(grep-find-ignored-directories
     '("SCCS" "RCS" "CVS" "MCVS" ".src" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs"
       "{arch}" "_build" "deps"))
   '(holy-mode nil)
   '(ignored-local-variable-values
     '((cider-shadow-watched-builds "platform")
       (cider-shadow-default-options . "platform")
       (cider-preferred-build-tool . shadow-cljs)
       (cider-default-cljs-repl . shadow)))
   '(indent-tabs-mode nil)
   '(inhibit-startup-screen t)
   '(magit-mode-hook
     '(magit-load-config-extensions evil-collection-init
                                    (lambda nil (evil-collection-init 'evil-magit))
                                    (lambda nil (evil-mode t)) evil-normal-state))
   '(make-backup-files nil)
   '(nov-post-html-render-hook
     '(evil-collection-init evil-collection-nov-setup evil-normal-state))
   '(org-agenda-files
     '("/Users/derekmtaylor/org/inbox.org"
       "/Users/derekmtaylor/org/2025-resolutions.org"
       "/Users/derekmtaylor/org/backlog.org" "/Users/derekmtaylor/org/grocery.org"
       "/Users/derekmtaylor/org/init.org" "/Users/derekmtaylor/org/refile.org"
       "/Users/derekmtaylor/org/schedule.org"
       "/Users/derekmtaylor/org/work/alarms/additional-alarms-stuff.org"
       "/Users/derekmtaylor/org/work/alarms/alarms-meeting-notes.org"
       "/Users/derekmtaylor/org/work/alarms/alarms-notes-20241024.org"
       "/Users/derekmtaylor/org/work/alarms/alarms-notes-20241212.org"
       "/Users/derekmtaylor/org/work/alarms/alarms-notes-20241213.org"
       "/Users/derekmtaylor/org/work/alarms/alarms-notes-20241216.org"
       "/Users/derekmtaylor/org/work/alarms/cancelled-then-completed-notes.org"
       "/Users/derekmtaylor/org/work/alarms/drive-thru-one-tp.org"
       "/Users/derekmtaylor/org/work/alarms/fivenine-extension-postmortem.org"
       "/Users/derekmtaylor/org/work/alarms/late-dispatch.org"
       "/Users/derekmtaylor/org/work/alarms/remaining-alarms-logic.org"
       "/Users/derekmtaylor/org/work/alarms/stranding-risk.org"
       "/Users/derekmtaylor/org/work/alarms/unavailable-risk-stuck-in-scheduling-alarm-notes.org"
       "/Users/derekmtaylor/org/work/integration-notes/limosys/limosys-info.org"
       "/Users/derekmtaylor/org/work/integration-notes/limosys/limosys-testing-notes.org"
       "/Users/derekmtaylor/org/work/integration-notes/limosys/post-mortem-notes.org"
       "/Users/derekmtaylor/org/work/integration-notes/social-care-networks/initial-notes.org"
       "/Users/derekmtaylor/org/work/retrospectives/20240819-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20240826-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20240902-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20240909-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20240923-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20241007-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20241014-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20241021-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20241028-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20241104-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20241111-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20241118-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20241125-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20241202-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20241209-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20241216-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20241223-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20241230-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20250106-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20250113-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20250120-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20250127-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/retrospectives/20250203-week-of-retrospective.org"
       "/Users/derekmtaylor/org/work/rh-chat/rh-chat-notes.org"
       "/Users/derekmtaylor/org/work/12082023-tdl.org"
       "/Users/derekmtaylor/org/work/20240819-work-tdl.org"
       "/Users/derekmtaylor/org/work/20240820-work-tdl.org"
       "/Users/derekmtaylor/org/work/20240821-work-tdl.org"
       "/Users/derekmtaylor/org/work/20240822-work-tdl.org"
       "/Users/derekmtaylor/org/work/20240823-work-tdl.org"
       "/Users/derekmtaylor/org/work/20240826-work-tdl.org"
       "/Users/derekmtaylor/org/work/20240827-work-tdl.org"
       "/Users/derekmtaylor/org/work/20240828-work-tdl.org"
       "/Users/derekmtaylor/org/work/20240829-work-tdl.org"
       "/Users/derekmtaylor/org/work/20240830-work-tdl.org"
       "/Users/derekmtaylor/org/work/20240903-work-tdl.org"
       "/Users/derekmtaylor/org/work/20240904-work-tdl.org"
       "/Users/derekmtaylor/org/work/20240905-work-tdl.org"
       "/Users/derekmtaylor/org/work/20240906-work-tdl.org"
       "/Users/derekmtaylor/org/work/20240909-work-tdl.org"
       "/Users/derekmtaylor/org/work/20240910-work-tdl.org"
       "/Users/derekmtaylor/org/work/20240911-work-tdl.org"
       "/Users/derekmtaylor/org/work/20240912-work-tdl.org"
       "/Users/derekmtaylor/org/work/20240913-work-tdl.org"
       "/Users/derekmtaylor/org/work/brian-tts-questions.org"
       "/Users/derekmtaylor/org/work/compliance-notes.org"
       "/Users/derekmtaylor/org/work/deadhead-notes.org"
       "/Users/derekmtaylor/org/work/fleet-sync-problems.org"
       "/Users/derekmtaylor/org/work/goals-for-2025.org"
       "/Users/derekmtaylor/org/work/multiload-notes.org"
       "/Users/derekmtaylor/org/work/named-features-notes.org"
       "/Users/derekmtaylor/org/work/potential-platform-improvements.org"
       "/Users/derekmtaylor/org/work/useful-snippets.org"
       "/Users/derekmtaylor/org/work/work-global-tdl.org"
       "/Users/derekmtaylor/org/tdls/20240826-weekly-tdl.org"
       "/Users/derekmtaylor/org/tdls/20240902-weekly-tdl.org"
       "/Users/derekmtaylor/org/tdls/20240909-weekly-tdl.org"
       "/Users/derekmtaylor/org/tdls/20240916-tdl.org"
       "/Users/derekmtaylor/org/tdls/20240916-weekly-tdl.org"
       "/Users/derekmtaylor/org/tdls/20240917-tdl.org"
       "/Users/derekmtaylor/org/tdls/20240918-tdl.org"
       "/Users/derekmtaylor/org/tdls/20240919-tdl.org"
       "/Users/derekmtaylor/org/tdls/20240920-tdl.org"
       "/Users/derekmtaylor/org/tdls/20240923-tdl.org"
       "/Users/derekmtaylor/org/tdls/20240923-weekly-tdl.org"
       "/Users/derekmtaylor/org/tdls/20240924-tdl.org"
       "/Users/derekmtaylor/org/tdls/20240925-tdl.org"
       "/Users/derekmtaylor/org/tdls/20240926-tdl.org"
       "/Users/derekmtaylor/org/tdls/20240927-tdl.org"
       "/Users/derekmtaylor/org/tdls/20240930-tdl.org"
       "/Users/derekmtaylor/org/tdls/20240930-weekly-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241001-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241002-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241003-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241004-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241005-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241007-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241007-weekly-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241008-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241009-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241010-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241011-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241014-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241014-weekly-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241015-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241016-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241017-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241018-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241019-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241020-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241021-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241021-weekly-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241022-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241023-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241024-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241025-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241028-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241028-weekly-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241029-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241030-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241031-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241101-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241102-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241104-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241104-weekly-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241106-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241107-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241108-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241111-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241111-weekly-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241112-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241113-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241114-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241118-weekly-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241119-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241120-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241122-tdl.org"
       "/Users/derekmtaylor/org/tdls/20241209-weekly-tdl.org"
       "/Users/derekmtaylor/org/tdls/global-tdl.org"
       "/Users/derekmtaylor/org/tdls/miami-tdl.org"))
   '(org-babel-load-languages
     '((elixir . t) (scheme . t) (js . t) (shell . t) (clojure . t) (sql . t)
       (java . t) (python . t) (groovy . t) (emacs-lisp . t)))
   '(org-fold-core-style 'overlays)
   '(package-selected-packages
     '(a ace-jump-helm-line ace-link ace-window adaptive-wrap aggressive-indent
         alchemist anzu async auto-compile auto-highlight-symbol avy bind-key
         bind-map cider cider-eval-sexp-fu cider-hydra clean-aindent-mode
         clj-refactor clojure-mode coffee-mode column-enforce-mode company compat
         counsel counsel-projectile csv-mode dash define-word diminish dumb-jump
         elisp-slime-nav elixir-mode epl eval-sexp-fu evil evil-anzu evil-args
         evil-ediff evil-escape evil-exchange evil-iedit-state evil-indent-plus
         evil-lisp-state evil-matchit evil-mc evil-nerd-commenter evil-numbers
         evil-search-highlight-persist evil-surround evil-tutor evil-unimpaired
         evil-visual-mark-mode evil-visualstar exec-path-from-shell expand-region
         eyebrowse f fancy-battery fill-column-indicator find-file-in-project flx
         flx-ido flycheck flycheck-clojure flycheck-credo forge gh-md git-commit
         golden-ratio google-translate goto-chg helm helm-ag helm-core
         helm-descbinds helm-flx helm-make helm-mode-manager helm-projectile
         helm-swoop helm-themes highlight highlight-indentation highlight-numbers
         highlight-parentheses hl-todo hungry-delete hydra iedit indent-guide
         inflections ivy ivy-hydra js-doc js2-mode js2-refactor json-mode
         json-reformat json-snatcher link-hint linum-relative livid-mode
         lorem-ipsum lv macrostep magit markdown-mode markdown-toc mmm-mode
         move-text multiple-cursors neotree nov ob-elixir open-junk-file
         org-bullets org-gcal org-pdftools org-zettelkasten packed paradox paredit
         parent-mode parseclj parseedn pcre2el persp-mode pkg-info popup popwin
         powerline projectile queue rainbow-delimiters request restart-emacs
         rjsx-mode s sesman simple-httpd skewer-mode smartparens smex spaceline
         spinner sql-indent swiper tide toc-org transient typescript-mode
         undo-tree use-package uuidgen vi-tilde-fringe volatile-highlights vterm
         web-beautify wgrep which-key winum with-editor ws-butler yaml-mode
         yas-minor-mode yasnippet yasnippets))
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
   '(highlight-parentheses-highlight ((nil (:weight ultra-bold))) t)
   '(org-document-title ((t (:foreground "#f8f6f2" :weight normal :height 1.0 :family "sans"))))))
