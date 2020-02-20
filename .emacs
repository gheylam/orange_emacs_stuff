;;#############################################################################;;
;;  title :: Tsz Hey's Emacs init file                                         ;;
;;  last-updated :: 20.02.2020                                                 ;;
;;  author :: Tsz Hey Lam                                                      ;; 
;;#############################################################################;;


;;#############################################################################;;
;;  package                                                                    ;;
;;#############################################################################;;

(package-initialize)
;; load emacs 24's package system. Add MELPA repository.
(require 'package)
(setq package-check-signature nil)
;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/") 
   '("gnu" . "https://elpa.gnu.org/packages/") 
   ))

;;#############################################################################;;
;;  org                                                                        ;;
;;#############################################################################;;
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq org-agenda-files (list "~/Documents/TodayPlanner/Month-October-2018.org"
			     "~/Documents/TodayPlanner/01-10-2018.org"))


;;#############################################################################;;
;;  fci                                                                        ;;
;;#############################################################################;;
(require 'fill-column-indicator)
(setq fci-rule-column 80)
(setq fci-rule-width 1)
(setq fci-rule-color "cadet blue")

;;#############################################################################;;
;;  powerline                                                                  ;;
;;#############################################################################;;
(require 'powerline)

;;#############################################################################;;
;;  moe-theme                                                                  ;;
;;#############################################################################;;
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/moe-theme-20180617.200")
(add-to-list 'load-path "~/.emacs.d/elpa/moe-theme-20180617.200")
(require 'moe-theme)
(setq moe-theme-highlight-buffer-id t)
(moe-theme-set-color 'orange)
(moe-dark)
(powerline-moe-theme)

;;#############################################################################;;
;; nyan                                                                        ;;
;;#############################################################################;;
(require 'nyan-mode)
(nyan-mode t)
(nyan-start-animation)
;;#############################################################################;;
;;  origami                                                                    ;;
;;#############################################################################;;
(require 'origami)
(global-set-key [f1] 'origami-recursively-toggle-node)

;;#############################################################################;;
;;  hideshow                                                                   ;;
;;#############################################################################;;
(load-library "hideshow")
(global-set-key (kbd "C-+") 'toggle-hiding)
(global-set-key (kbd "C-\\") 'toggle-selective-display)

;;#############################################################################;;
;;  centaur-tabs                                                               ;;
;;#############################################################################;;
(require 'centaur-tabs)
(centaur-tabs-mode t)
(global-set-key (kbd "C-<prior>") 'centaur-tabs-backward)
(global-set-key (kbd "C-<next>") 'centaur-tabs-forward)

;;#############################################################################;;
;;  misc emacs configuration                                                   ;;
;;#############################################################################;;
(global-linum-mode 1)
(setq visible-bell 1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;;#############################################################################;;
;;  Things I do not touch                                                      ;;
;;#############################################################################;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (centaur-tabs origami company-arduino arduino-mode neotree helm powerline nyan-mode moe-theme js2-mode hardcore-mode dracula-theme))))
