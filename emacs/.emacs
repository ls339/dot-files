(global-set-key (kbd "C-x C-b") 'ibuffer)
(setq load-path (cons  "/usr/local/opt/erlang/lib/erlang/lib/tools-2.8.6/emacs" load-path))
(setq erlang-root-dir "/usr/local/otp/erlang/lib/erlang/lib")
(setq exec-path (cons "/usr/local/otp/erlang/lib/erlang/lib/bin" exec-path))
(require 'erlang-start)
(setq make-backup-files nil)
(setq linum-format "%d ")
(global-linum-mode t)
(global-set-key [(control h)] 'delete-backward-char)
(setq php-mode-warn-if-mumamo-off nil)
(setq php-warned-bad-indent t)
(require 'package) ;;
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;;
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (helm-core))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path (expand-file-name "~/.emacs.d/datadog.el"))
(require 'datadog)
