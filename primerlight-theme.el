;;; primerlight-theme.el --- GitHub-inspired light theme -*- lexical-binding: t -*-

;; Copyright (C) 2026 Sergey Burtsev

;; Author: Sergey Burtsev <sergey@burtsev.com>
;; URL: https://github.com/SergeyBurtsev/primerlight-theme
;; Version: 0.1.0
;; Package-Requires: ((emacs "29.1"))
;; Keywords: faces, theme

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; A light theme based on GitHub's syntax colors.
;;
;; Enable it with:
;;
;;   (load-theme 'primerlight t)

;;; Code:

(deftheme primerlight
  "GitHub-inspired light theme."
  :background-mode 'light
  :kind 'color-scheme)

(let ((class '((class color) (min-colors 89)))
      ;; Foregrounds
      (fg-default   "#1f2328")
      (fg-muted     "#636c76")
      (fg-disabled  "#8c959f")
      (fg-attention "#9a6700")
      (fg-danger    "#d1242f")
      (fg-severe    "#bc4c00")
      (fg-done      "#8250df")
      (fg-accent    "#0969da")
      (fg-string    "#0a3069")
      (fg-success   "#1a7f37")
      ;; Backgrounds
      (bg-default   "#fafaf8")
      (bg-attention "#fff8c5")
      (bg-accent    "#ddf4ff")
      (bg-muted     "#f6f8fa")
      (bg-danger    "#ffebe9")
      ;; Borders
      (border-accent "#54aeff")
      (border-muted  "#e7ebee"))

  (custom-theme-set-faces
   'primerlight

   ;; Basics
   `(default ((,class :background ,bg-default :foreground ,fg-default)))
   `(cursor ((,class :background ,fg-default)))
   `(region ((,class :background ,bg-accent :extend t)))
   `(highlight ((,class :background ,bg-attention)))
   `(minibuffer-prompt ((,class :foreground ,fg-accent :weight bold)))
   `(link ((,class :foreground ,fg-accent :underline t)))
   `(error ((,class :foreground ,fg-danger :weight bold)))
   `(warning ((,class :foreground ,fg-severe :weight bold)))
   `(success ((,class :foreground ,fg-success :weight bold)))
   `(show-paren-match ((,class :background ,bg-accent :weight bold)))

   ;; Line numbers
   `(line-number ((,class :foreground ,fg-disabled)))
   `(line-number-current-line ((,class :foreground ,fg-default :weight bold)))

   ;; Syntax
   `(font-lock-comment-face ((,class :foreground ,fg-muted)))
   `(font-lock-keyword-face ((,class :foreground ,fg-danger)))
   `(font-lock-type-face ((,class :foreground ,fg-attention)))
   `(font-lock-builtin-face ((,class :foreground ,fg-done)))
   `(font-lock-constant-face ((,class :foreground ,fg-accent)))
   `(font-lock-string-face ((,class :foreground ,fg-string)))
   `(font-lock-function-name-face ((,class :foreground ,fg-done)))
   `(font-lock-variable-name-face ((,class :foreground ,fg-default)))
   `(font-lock-variable-use-face ((,class :foreground ,fg-accent)))
   `(font-lock-warning-face ((,class :foreground ,fg-severe :weight bold)))

   ;; Mode line
   `(mode-line-active ((,class :background ,bg-accent
                               :box (:line-width 1 :color ,border-accent))))
   `(mode-line-inactive ((,class :background ,bg-muted
                                 :box (:line-width 1 :color ,border-muted))))
   `(header-line ((,class :background ,bg-muted :foreground ,fg-default
                          :box (:line-width 1 :color ,border-muted))))

   ;; Tab line
   `(tab-line-tab ((,class :background ,bg-muted
                           :box (:line-width 1 :color ,border-muted))))
   `(tab-line-tab-current ((,class :background ,bg-accent
                                   :box (:line-width 1 :color ,border-accent))))
   `(tab-line-highlight ((,class :background ,bg-attention)))
   `(tab-line-tab-modified ((,class :foreground ,fg-danger)))

   ;; Misc
   `(fill-column-indicator ((,class :background ,bg-danger :foreground ,bg-danger)))
   `(flymake-note ((,class :underline nil)))
   `(table-cell ((,class :background ,bg-default)))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'primerlight)

;;; primerlight-theme.el ends here
