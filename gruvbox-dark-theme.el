;;; gruvbox-dark-theme.el --- A retro groove color theme for GNU Emacs

;; Copyright (c) 2016 Dario Gjorgjevski

;; Author: Dario Gjorgjevski <dario.gjorgjevski@.com>
;; URL: http://github.com/d125q/gruvbox-dark-emacs
;; Version: 0.1

;; This program is free software; you can redistribute it and/or modify it under
;; the terms of the GNU General Public License as published by the Free Software
;; Foundation, either version 3 of the License, or (at your option) any later
;; version.

;; This program is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
;; FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
;; details.

;; You should have received a copy of the GNU General Public License along with
;; this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; The gruvbox colors ported to Emacs.  Built on top of the new built-in theme
;; support in Emacs 24.

;;; Credits:

;; Pavel Pertsev created the original gruvbox theme for the Vim editor.  This
;; port is based entirely on his work.

;;; Code:

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))

(deftheme gruvbox-dark "A retro groove color theme")

(defun gruvbox--get-color (graphic-color terminal-color)
  "Switch between GRAPHIC-COLOR (for GUI) and TERMINAL-COLOR (for terminals)."
  (if (display-graphic-p) graphic-color terminal-color))

(let ((gruvbox-dark0_h        (gruvbox--get-color "#1d2021" "color-234"))
      (gruvbox-dark0          (gruvbox--get-color "#282828" "color-235"))
      (gruvbox-dark0_s        (gruvbox--get-color "#32302f" "color-236"))
      (gruvbox-dark1          (gruvbox--get-color "#3c3836" "color-237"))
      (gruvbox-dark2          (gruvbox--get-color "#504945" "color-239"))
      (gruvbox-dark3          (gruvbox--get-color "#665c54" "color-241"))
      (gruvbox-dark4          (gruvbox--get-color "#7c6f64" "color-243"))

      (gruvbox-light0_h       (gruvbox--get-color "#ffffc8" "color-230"))
      (gruvbox-light0         (gruvbox--get-color "#fdf4c1" "color-229"))
      (gruvbox-light0_s       (gruvbox--get-color "#f4e8ba" "color-228"))
      (gruvbox-light1         (gruvbox--get-color "#ebdbb2" "color-223"))
      (gruvbox-light2         (gruvbox--get-color "#d5c4a1" "color-250"))
      (gruvbox-light3         (gruvbox--get-color "#bdae93" "color-248"))
      (gruvbox-light4         (gruvbox--get-color "#a89984" "color-246"))

      (gruvbox-bright_red     (gruvbox--get-color "#fb4933" "color-167"))
      (gruvbox-bright_green   (gruvbox--get-color "#b8bb26" "color-142"))
      (gruvbox-bright_yellow  (gruvbox--get-color "#fabd2f" "color-214"))
      (gruvbox-bright_blue    (gruvbox--get-color "#83a598" "color-109"))
      (gruvbox-bright_purple  (gruvbox--get-color "#d3869b" "color-175"))
      (gruvbox-bright_aqua    (gruvbox--get-color "#8ec07c" "color-108"))
      (gruvbox-bright_orange  (gruvbox--get-color "#fe8019" "color-208"))
      (gruvbox-bright_gray    (gruvbox--get-color "#a89984" "color-246"))

      (gruvbox-neutral_red    (gruvbox--get-color "#cc241d" "color-124"))
      (gruvbox-neutral_green  (gruvbox--get-color "#98971a" "color-106"))
      (gruvbox-neutral_yellow (gruvbox--get-color "#d79921" "color-172"))
      (gruvbox-neutral_blue   (gruvbox--get-color "#458588" "color-66"))
      (gruvbox-neutral_purple (gruvbox--get-color "#b16286" "color-132"))
      (gruvbox-neutral_aqua   (gruvbox--get-color "#689d6a" "color-72"))
      (gruvbox-neutral_orange (gruvbox--get-color "#d65d0e" "color-166"))
      (gruvbox-neutral_gray   (gruvbox--get-color "#928374" "color-245"))

      (gruvbox-faded_red      (gruvbox--get-color "#9d0006" "color-88"))
      (gruvbox-faded_green    (gruvbox--get-color "#79740e" "color-100"))
      (gruvbox-faded_yellow   (gruvbox--get-color "#b57614" "color-136"))
      (gruvbox-faded_blue     (gruvbox--get-color "#076678" "color-24"))
      (gruvbox-faded_purple   (gruvbox--get-color "#8f3f71" "color-96"))
      (gruvbox-faded_aqua     (gruvbox--get-color "#427b58" "color-66"))
      (gruvbox-faded_orange   (gruvbox--get-color "#af3a03" "color-130"))
      (gruvbox-faded_gray     (gruvbox--get-color "#7c6f64" "color-243")))

  (custom-theme-set-faces
    'gruvbox-dark

    ;; basic coloring
    '(button              ((t (:underline t))))
    `(link                ((t (:foreground ,gruvbox-bright_blue :weight bold :underline t))))
    `(link-visited        ((t (:foreground ,gruvbox-bright_purple :weight bold :underline t))))
    `(default             ((t (:background ,gruvbox-dark0 :foreground ,gruvbox-light1))))
    `(cursor              ((t (:background ,gruvbox-light1))))
    `(escape-glyph        ((t (:foreground ,gruvbox-bright_aqua))))
    `(trailing-whitespace ((t (:background ,gruvbox-bright_red))))
    `(fringe              ((t (:foreground ,gruvbox-light3))))
    `(header-line         ((t (:background ,gruvbox-dark1 :foreground ,gruvbox-bright_yellow))))
    `(vertical-border     ((t (:background ,gruvbox-dark1 :foreground ,gruvbox-dark4))))
    `(highlight           ((t (:background ,gruvbox-dark2))))
    `(lazy-highlight      ((t (:background ,gruvbox-bright_yellow :foreground ,gruvbox-dark0))))
    `(success             ((t (:foreground ,gruvbox-bright_green :weight bold))))
    `(warning             ((t (:foreground ,gruvbox-bright_orange :weight bold))))
    `(error               ((t (:foreground ,gruvbox-bright_red :weight bold))))
    `(match               ((t (:background ,gruvbox-bright_orange :foreground ,gruvbox-dark0))))
    `(shadow              ((t (:foreground ,gruvbox-neutral_gray))))
    `(mode-line           ((t (:background ,gruvbox-dark1 :foreground ,gruvbox-light1))))
    `(mode-line-inactive  ((t (:background ,gruvbox-dark1 :foreground ,gruvbox-dark4))))
    `(mode-line-buffer-id ((t (:foreground ,gruvbox-bright_aqua :weight bold))))
    `(mode-line-highlight ((t (:box (:line-width -1 :color ,gruvbox-bright_gray :style released-button)))))
    '(region              ((t (:inverse-video t))))
    `(secondary-selection ((t (:background ,gruvbox-dark0_s))))
    `(minibuffer-prompt   ((t (:background ,gruvbox-dark0 :foreground ,gruvbox-bright_green :weight bold))))
    `(menu                ((t (:background ,gruvbox-dark2 :foreground ,gruvbox-light1))))
    `(tooltip             ((t (:background ,gruvbox-dark2 :foreground ,gruvbox-light1))))

    ;; hl-line-mode
    `(hl-line-face ((t (:background ,gruvbox-dark1))))
    `(hl-line      ((t (:background ,gruvbox-dark1)))) ; old Emacsen

    ;; font lock
    `(font-lock-builtin-face              ((t (:foreground ,gruvbox-bright_orange))))
    `(font-lock-comment-face              ((t (:foreground ,gruvbox-neutral_gray))))
    `(font-lock-comment-delimiter-face    ((t (:foreground ,gruvbox-faded_green))))
    `(font-lock-constant-face             ((t (:foreground ,gruvbox-bright_purple))))
    `(font-lock-doc-face                  ((t (:foreground ,gruvbox-light3))))
    `(font-lock-function-name-face        ((t (:foreground ,gruvbox-bright_green :weight bold))))
    `(font-lock-keyword-face              ((t (:foreground ,gruvbox-bright_red))))
    `(font-lock-negation-char-face        ((t (:foreground ,gruvbox-bright_yellow :weight bold))))
    `(font-lock-preprocessor-face         ((t (:foreground ,gruvbox-bright_aqua))))
    `(font-lock-regexp-grouping-construct ((t (:foreground ,gruvbox-bright_aqua :weight bold))))
    '(font-lock-regexp-grouping-backslash ((t (:inherit font-lock-regexp-grouping-construct))))
    `(font-lock-string-face               ((t (:foreground ,gruvbox-bright_green))))
    `(font-lock-type-face                 ((t (:foreground ,gruvbox-bright_yellow))))
    `(font-lock-variable-name-face        ((t (:foreground ,gruvbox-bright_blue))))
    `(font-lock-warning-face              ((t (:foreground ,gruvbox-bright_red :weight bold))))

    `(c-nonbreakable-space-face           ((t (:background ,gruvbox-bright_red :foreground ,gruvbox-dark0))))

    ;; whitespace-mode
    `(whitespace-space            ((t (:foreground ,gruvbox-bright_gray))))
    `(whitespace-hspace           ((t (:foreground ,gruvbox-bright_gray))))
    `(whitespace-tab              ((t (:foreground ,gruvbox-bright_gray))))
    `(whitespace-newline          ((t (:foreground ,gruvbox-bright_gray))))
    `(whitespace-trailing         ((t (:foreground ,gruvbox-bright_red))))
    `(whitespace-line             ((t (:foreground ,gruvbox-bright_red))))
    `(whitespace-space-before-tab ((t (:foreground ,gruvbox-bright_gray))))
    `(whitespace-indentation      ((t (:foreground ,gruvbox-dark2))))
    `(whitespace-empty            ((t (:foreground ,gruvbox-bright_red))))
    `(whitespace-space-after-tab  ((t (:foreground ,gruvbox-bright_gray))))

    ;; rainbow-delimiters
    `(rainbow-delimiters-depth-1-face   ((t (:foreground ,gruvbox-bright_red))))
    `(rainbow-delimiters-depth-2-face   ((t (:foreground ,gruvbox-bright_green))))
    `(rainbow-delimiters-depth-3-face   ((t (:foreground ,gruvbox-bright_orange))))
    `(rainbow-delimiters-depth-4-face   ((t (:foreground ,gruvbox-bright_blue))))
    `(rainbow-delimiters-depth-5-face   ((t (:foreground ,gruvbox-bright_yellow))))
    `(rainbow-delimiters-depth-6-face   ((t (:foreground ,gruvbox-bright_purple))))
    `(rainbow-delimiters-depth-7-face   ((t (:foreground ,gruvbox-neutral_red))))
    `(rainbow-delimiters-depth-8-face   ((t (:foreground ,gruvbox-neutral_green))))
    `(rainbow-delimiters-depth-9-face   ((t (:foreground ,gruvbox-neutral_orange))))
    `(rainbow-delimiters-depth-10-face  ((t (:foreground ,gruvbox-neutral_blue))))
    `(rainbow-delimiters-depth-11-face  ((t (:foreground ,gruvbox-neutral_yellow))))
    `(rainbow-delimiters-depth-12-face  ((t (:foreground ,gruvbox-neutral_purple))))
    `(rainbow-delimiters-unmatched-face
      ((((supports :underline (:style wave)))
        (:underline (:style wave :color ,gruvbox-bright_orange)))
       (t (:underline ,gruvbox-bright_red))))

    ;; linum{,-relative}
    `(linum                       ((t (:foreground ,gruvbox-dark4))))
    `(linum-relative-current-face ((t (:background ,gruvbox-dark1 :foreground ,gruvbox-bright_yellow))))

    ;; compilation
    `(compilation-column-number        ((t (:foreground ,gruvbox-bright_aqua))))
    `(compilation-enter-directory-face ((t (:foreground ,gruvbox-bright_green))))
    '(compilation-error                ((t (:inherit error))))
    `(compilation-info                 ((t (:foreground ,gruvbox-bright_blue :underline t))))
    `(compilation-leave-directory-face ((t (:foreground ,gruvbox-bright_blue))))
    `(compilation-line-number          ((t (:foreground ,gruvbox-bright_yellow))))
    '(compilation-warning              ((t (:inherit warning))))
    `(compilation-mode-line-exit       ((t (:foreground ,gruvbox-bright_green :weight bold))))
    `(compilation-mode-line-fail       ((t (:foreground ,gruvbox-bright_red :weight bold))))
    `(compilation-mode-line-run        ((t (:foreground ,gruvbox-bright_orange :weight bold))))

    ;; highlight-indentation-mode
    `(highlight-indentation-current-column-face ((t (:background ,gruvbox-dark3))))
    `(highlight-indentation-face                ((t (:background ,gruvbox-dark2))))

    ;; show-paren-mode
    `(show-paren-match    ((t (:background ,gruvbox-dark1 :underline t))))
    `(show-paren-mismatch ((t (:background ,gruvbox-bright_red :foreground ,gruvbox-dark0))))

    ;; smartparens-mode
    '(sp-show-pair-match-face    ((t (:inherit show-paren-match))))
    '(sp-show-pair-mismatch-face ((t (:inherit show-paren-mismatch))))

    ;; completions
    '(completions-annotations      ((t (:inherit font-lock-doc-face))))
    '(completions-common-part      ((t (:inherit shadow))))
    `(completions-first-difference ((t (:foreground ,gruvbox-bright_yellow :weight bold))))

    ;; grep
    `(grep-context-face ((t (:foreground ,gruvbox-light1))))
    `(grep-error-face   ((t (:foreground ,gruvbox-bright_red :weight bold :underline t))))
    `(grep-hit-face     ((t (:foreground ,gruvbox-bright_blue))))
    `(grep-match-face   ((t (:foreground ,gruvbox-bright_orange :weight bold))))

    ;; isearch
    `(isearch      ((t (:background ,gruvbox-bright_orange :foreground ,gruvbox-dark0))))
    `(isearch-fail ((t (:background ,gruvbox-bright_red :foreground ,gruvbox-dark0))))

    ;; buffer-menu
    `(buffer-menu-buffer ((t (:foreground ,gruvbox-bright_aqua :weight bold))))

    ;; ido-mode
   `(ido-first-match ((t (:foreground ,gruvbox-bright_yellow :weight bold))))
   `(ido-only-match  ((t (:foreground ,gruvbox-bright_orange :weight bold))))
   `(ido-subdir      ((t (:foreground ,gruvbox-neutral_blue :weight bold))))
   `(ido-indicator   ((t (:background ,gruvbox-bright_yellow :foreground ,gruvbox-dark0 :width condensed))))

   ;; message-mode
   `(message-cited-text        ((t (:foreground ,gruvbox-neutral_purple))))
   '(message-header-name       ((t (:inherit font-lock-comment-face))))
   '(message-separator         ((t (:inherit shadow))))
   `(message-header-cc         ((t (:foreground ,gruvbox-bright_blue :weight bold))))
   `(message-header-newsgroups ((t (:foreground ,gruvbox-bright_yellow :weight bold))))
   `(message-header-other      ((t (:foreground ,gruvbox-bright_aqua :weight bold))))
   `(message-header-subject    ((t (:foreground ,gruvbox-bright_orange :weight bold))))
   `(message-header-to         ((t (:foreground ,gruvbox-bright_green :weight bold))))
   `(message-header-xheader    ((t (:foreground ,gruvbox-bright_purple :weight bold))))
   `(message-mml               ((t (:foreground ,gruvbox-bright_yellow :weight bold))))

   ;; gnus
   '(gnus-header-content              ((t (:inherit message-header-other))))
   '(gnus-header-from                 ((t (:inherit message-header-other))))
   '(gnus-header-name                 ((t (:inherit message-header-name))))
   '(gnus-header-newsgroups           ((t (:inherit message-header-newsgroups))))
   '(gnus-header-subject              ((t (:inherit message-header-subject))))

   `(gnus-emphasis-highlight-words    ((t (:background ,gruvbox-dark0_h :foreground ,gruvbox-bright_purple))))

   `(gnus-server-agent                ((t (:foreground ,gruvbox-bright_aqua :weight bold))))
   `(gnus-server-closed               ((t (:foreground ,gruvbox-bright_blue :slant italic))))
   `(gnus-server-denied               ((t (:foreground ,gruvbox-bright_red :weight bold))))
   `(gnus-server-offline              ((t (:foreground ,gruvbox-bright_yellow :weight bold))))
   `(gnus-server-opened               ((t (:foreground ,gruvbox-bright_green :weight bold))))

   `(gnus-summary-cancelled           ((t (:foreground ,gruvbox-bright_red :weight bold))))
   `(gnus-summary-high-ancient        ((t (:foreground ,gruvbox-bright_blue :weight bold))))
   `(gnus-summary-high-read           ((t (:foreground ,gruvbox-bright_green :weight bold))))
   `(gnus-summary-high-ticked         ((t (:foreground ,gruvbox-bright_orange :weight bold))))
   `(gnus-summary-high-undownloaded   ((t (:foreground ,gruvbox-light3 :weight bold))))
   `(gnus-summary-high-unread         ((t (:foreground ,gruvbox-light1 :weight bold))))
   `(gnus-summary-low-ancient         ((t (:foreground ,gruvbox-neutral_blue))))
   `(gnus-summary-low-read            ((t (:foreground ,gruvbox-neutral_green))))
   `(gnus-summary-low-ticked          ((t (:foreground ,gruvbox-neutral_orange))))
   `(gnus-summary-low-undownloaded    ((t (:foreground ,gruvbox-light4))))
   `(gnus-summary-low-unread          ((t (:foreground ,gruvbox-light2))))
   `(gnus-summary-normal-ancient      ((t (:foreground ,gruvbox-bright_blue))))
   `(gnus-summary-normal-read         ((t (:foreground ,gruvbox-bright_green))))
   `(gnus-summary-normal-ticked       ((t (:foreground ,gruvbox-bright_orange))))
   `(gnus-summary-normal-undownloaded ((t (:foreground ,gruvbox-light3))))
   `(gnus-summary-normal-unread       ((t (:foreground ,gruvbox-light1))))
   `(gnus-summary-selected            ((t (:foreground ,gruvbox-bright_yellow :weight bold))))

   '(gnus-cite-attribution            ((t (:slant italic))))
   `(gnus-cite-1                      ((t (:foreground ,gruvbox-bright_red))))
   `(gnus-cite-10                     ((t (:foreground ,gruvbox-neutral_blue))))
   `(gnus-cite-11                     ((t (:foreground ,gruvbox-neutral_yellow))))
   `(gnus-cite-2                      ((t (:foreground ,gruvbox-bright_green))))
   `(gnus-cite-3                      ((t (:foreground ,gruvbox-bright_orange))))
   `(gnus-cite-4                      ((t (:foreground ,gruvbox-bright_blue))))
   `(gnus-cite-5                      ((t (:foreground ,gruvbox-bright_yellow))))
   `(gnus-cite-6                      ((t (:foreground ,gruvbox-bright_purple))))
   `(gnus-cite-7                      ((t (:foreground ,gruvbox-neutral_red))))
   `(gnus-cite-8                      ((t (:foreground ,gruvbox-neutral_green))))
   `(gnus-cite-9                      ((t (:foreground ,gruvbox-neutral_orange))))

   `(gnus-group-news-1                ((t (:foreground ,gruvbox-bright_red :weight bold))))
   `(gnus-group-news-1-empty          ((t (:foreground ,gruvbox-neutral_red))))
   `(gnus-group-news-2                ((t (:foreground ,gruvbox-bright_orange :weight bold))))
   `(gnus-group-news-2-empty          ((t (:foreground ,gruvbox-neutral_orange))))
   `(gnus-group-news-3                ((t (:foreground ,gruvbox-bright_yellow :weight bold))))
   `(gnus-group-news-3-empty          ((t (:foreground ,gruvbox-neutral_yellow))))
   `(gnus-group-news-4                ((t (:foreground ,gruvbox-bright_green :weight bold))))
   `(gnus-group-news-4-empty          ((t (:foreground ,gruvbox-neutral_green))))
   `(gnus-group-news-5                ((t (:foreground ,gruvbox-bright_blue :weight bold))))
   `(gnus-group-news-5-empty          ((t (:foreground ,gruvbox-neutral_blue))))
   `(gnus-group-news-6                ((t (:foreground ,gruvbox-bright_purple :weight bold))))
   `(gnus-group-news-6-empty          ((t (:foreground ,gruvbox-neutral_purple))))
   `(gnus-group-news-low              ((t (:foreground ,gruvbox-light1))))
   `(gnus-group-news-low-empty        ((t (:foreground ,gruvbox-light2))))

   '(gnus-group-mail-1                ((t (:inherit gnus-group-news-1))))
   '(gnus-group-mail-1-empty          ((t (:inherit gnus-group-news-1-empty))))
   '(gnus-group-mail-2                ((t (:inherit gnus-group-news-2))))
   '(gnus-group-mail-2-empty          ((t (:inherit gnus-group-news-2-empty))))
   '(gnus-group-mail-3                ((t (:inherit gnus-group-news-3))))
   '(gnus-group-mail-3-empty          ((t (:inherit gnus-group-news-3-empty))))
   '(gnus-group-mail-4                ((t (:inherit gnus-group-news-4))))
   '(gnus-group-mail-4-empty          ((t (:inherit gnus-group-news-4-empty))))
   '(gnus-group-mail-5                ((t (:inherit gnus-group-news-5))))
   '(gnus-group-mail-5-empty          ((t (:inherit gnus-group-news-5-empty))))
   '(gnus-group-mail-6                ((t (:inherit gnus-group-news-6))))
   '(gnus-group-mail-6-empty          ((t (:inherit gnus-group-news-6-empty))))
   '(gnus-group-mail-low              ((t (:inherit gnus-group-news-low-empty))))
   '(gnus-group-mail-low-empty        ((t (:inherit gnus-group-news-low-empty))))

   `(gnus-signature                   ((t (:foreground ,gruvbox-bright_aqua))))

   `(mm-command-ouput                 ((t (:foreground ,gruvbox-bright_yellow))))
   `(mm-uu-extract                    ((t (:background ,gruvbox-dark0_h :foreground ,gruvbox-bright_yellow))))

   ;; wid-edit
   '(widget-button            ((t (:weight bold))))
   `(widget-button-pressed    ((t (:foreground ,gruvbox-bright_purple :underline t))))
   `(widget-documentation     ((t (:foreground ,gruvbox-bright_green))))
   `(widget-field             ((t (:background ,gruvbox-dark2 :foreground ,gruvbox-light1))))
   '(widget-inactive          ((t (:inherit shadow))))
   '(widget-single-line-field ((t (:inherit widget-field))))

   ;; custom-mode
   `(custom-state                   ((t (:foreground ,gruvbox-bright_green))))
   `(custom-group-tag               ((t (:foreground ,gruvbox-bright_aqua :weight bold :height 1.2 :inherit variable-pitch))))
   `(custom-group-tag-1             ((t (:foreground ,gruvbox-neutral_purple :inherit custom-group-tag))))
   `(custom-variable-tag            ((t (:foreground ,gruvbox-bright_aqua :weight bold :inherit variable-pitch))))
   `(custom-visibility              ((t (:foreground ,gruvbox-bright_orange :height 0.8))))
   `(custom-button                  ((t (:background ,gruvbox-light2 :foreground ,gruvbox-dark0
                                                     :box (:line-width 1 :style released-button)))))
   `(custom-button-mouse            ((t (:background ,gruvbox-light3 :foreground ,gruvbox-dark0
                                                    :box (:line-width 1 :style released-button)))))
   `(custom-button-pressed          ((t (:background ,gruvbox-light3 :foreground ,gruvbox-dark0
                                                    :box (:line-width 1 :style pressed-button)))))
   `(custom-button-pressed-unraised ((t (:foreground ,gruvbox-bright_purple :inherit custom-button-unraised))))
   '(custom-button-unraised         ((t (:inherit underline))))
   '(custom-comment                 ((t (:inherit widget-single-line-field))))
   '(custom-comment-tag             ((t (:inherit font-lock-comment-face))))
   `(custom-changed                 ((t (:background ,gruvbox-bright_blue :foreground ,gruvbox-dark0))))
   '(custom-themed                  ((t (:inherit custom-changed))))
   '(custom-modified                ((t (:inherit custom-changed))))
   `(custom-set                     ((t (:foreground ,gruvbox-bright_blue))))
   `(custom-invalid                 ((t (:background ,gruvbox-bright_red :foreground ,gruvbox-dark0))))
   `(custom-rogue                   ((t (:background ,gruvbox-bright_orange :foreground ,gruvbox-dark0))))

   ;; ediff
   `(ediff-current-diff-A        ((t (:background ,gruvbox-faded_red :foreground ,gruvbox-light1))))
   `(ediff-current-diff-Ancestor ((t (:background ,gruvbox-faded_red :foreground ,gruvbox-light1))))
   `(ediff-current-diff-B        ((t (:background ,gruvbox-faded_green :foreground ,gruvbox-light1))))
   `(ediff-current-diff-C        ((t (:background ,gruvbox-faded_aqua :foreground ,gruvbox-light1))))
   `(ediff-even-diff-A           ((t (:background ,gruvbox-dark0))))
   `(ediff-even-diff-Ancestor    ((t (:background ,gruvbox-dark0))))
   `(ediff-even-diff-B           ((t (:background ,gruvbox-dark0))))
   `(ediff-even-diff-C           ((t (:background ,gruvbox-dark0))))
   `(ediff-fine-diff-A           ((t (:background ,gruvbox-bright_red :foreground ,gruvbox-dark0 :weight bold))))
   `(ediff-fine-diff-Ancestor    ((t (:background ,gruvbox-bright_red :foreground ,gruvbox-dark0 :weight bold))))
   `(ediff-fine-diff-B           ((t (:background ,gruvbox-bright_green :foreground ,gruvbox-dark0 :weight bold))))
   `(ediff-fine-diff-C           ((t (:background ,gruvbox-bright_aqua :foreground ,gruvbox-dark0 :weight bold))))
   `(ediff-odd-diff-A            ((t (:background ,gruvbox-dark1))))
   `(ediff-odd-diff-Ancestor     ((t (:background ,gruvbox-dark1))))
   `(ediff-odd-diff-B            ((t (:background ,gruvbox-dark1))))
   `(ediff-odd-diff-C            ((t (:background ,gruvbox-dark1))))

   ;; diff
   `(diff-added          ((t (:background ,gruvbox-faded_green :foreground ,gruvbox-light1))))
   `(diff-changed        ((t (:background ,gruvbox-faded_aqua :foreground ,gruvbox-light1))))
   `(diff-file-header    ((t (:foreground ,gruvbox-bright_yellow))))
   `(diff-header         ((t (:background ,gruvbox-dark1))))
   `(diff-refine-added   ((t (:background ,gruvbox-bright_green :foreground ,gruvbox-dark0 :weight bold))))
   `(diff-refine-changed ((t (:background ,gruvbox-bright_aqua :foreground ,gruvbox-dark0 :weight bold))))
   `(diff-refine-removed ((t (:background ,gruvbox-bright_red :foreground ,gruvbox-dark0 :weight bold))))
   `(diff-removed        ((t (:background ,gruvbox-faded_red :foreground ,gruvbox-light1))))

   ;; anzu
   `(anzu-match-1    ((t (:background ,gruvbox-bright_green :foreground ,gruvbox-dark0))))
   `(anzu-match-2    ((t (:background ,gruvbox-bright_yellow :foreground ,gruvbox-dark0))))
   `(anzu-match-3    ((t (:background ,gruvbox-bright_aqua :foreground ,gruvbox-dark0))))
   `(anzu-mode-line  ((t (:foreground ,gruvbox-bright_purple :weight bold))))
   `(anzu-replace-to ((t (:foreground ,gruvbox-bright_yellow))))

   ;; company-mode
   `(company-echo-common                  ((t (:foreground ,gruvbox-bright_green))))
   `(company-tooltip                      ((t (:background ,gruvbox-dark1 :foreground ,gruvbox-light1))))
   `(company-tooltip-annotation           ((t (:background ,gruvbox-dark1 :foreground ,gruvbox-bright_orange))))
   '(company-tooltip-annotation-selection ((t (:inverse-video t :inherit company-tooltip-annotation))))
   '(company-tooltip-selection            ((t (:inverse-video t :inherit company-tooltip))))
   `(company-tooltip-mouse                ((t (:background ,gruvbox-dark2 :foreground ,gruvbox-light1))))
   `(company-tooltip-common               ((t (:foreground ,gruvbox-bright_green))))
   '(company-tooltip-common-selection     ((t (:inverse-video t :inherit company-tooltip-common))))
   `(company-scrollbar-fg                 ((t (:background ,gruvbox-light1))))
   `(company-scrollbar-bg                 ((t (:background ,gruvbox-light3))))
   `(company-template-field               ((t (:background ,gruvbox-bright_yellow :foreground ,gruvbox-dark0))))
   `(company-preview                      ((t (:foreground ,gruvbox-bright_green))))
   '(company-preview-common               ((t (:inverse-video t :inherit company-preview))))
   `(company-preview-search               ((t (:background ,gruvbox-bright_aqua :foreground ,gruvbox-dark0))))

   ;; AUCTeX
   `(font-latex-bold-face                 ((t (:foreground ,gruvbox-neutral_green :inherit bold))))
   `(font-latex-doctex-documentation-face ((t (:background ,gruvbox-dark0_h))))
   `(font-latex-italic-face               ((t (:foreground ,gruvbox-neutral_green :inherit italic))))
   `(font-latex-math-face                 ((t (:foreground ,gruvbox-bright_yellow))))
   `(font-latex-sectioning-5-face         ((t (:foreground ,gruvbox-bright_yellow :weight bold :inherit variable-pitch))))
   `(font-latex-sedate-face               ((t (:foreground ,gruvbox-bright_aqua))))
   '(font-latex-slide-title-face          ((t (:height 1.2 :inherit font-latex-sectioning-5-face))))
   `(font-latex-string-face               ((t (:foreground ,gruvbox-neutral_purple))))
   '(font-latex-verbatim-face             ((t (:inherit font-lock-constant-face))))
   '(font-latex-warning-face              ((t (:inherit font-lock-warning-face))))

   ;; markdown-mode
   `(markdown-blockquote-face       ((t (:foreground ,gruvbox-neutral_purple))))
   `(markdown-bold-face             ((t (:foreground ,gruvbox-neutral_green :inherit bold))))
   `(markdown-italic-face           ((t (:foreground ,gruvbox-neutral_green :inherit italic))))
   '(markdown-header-delimiter-face ((t (:inherit font-lock-comment-delimiter-face))))
   '(markdown-header-face           ((t (:inherit markdown-header-face-1))))
   `(markdown-header-face-1         ((t (:foreground ,gruvbox-bright_red :weight bold))))
   `(markdown-header-face-2         ((t (:foreground ,gruvbox-bright_green :weight bold))))
   `(markdown-header-face-3         ((t (:foreground ,gruvbox-bright_orange :weight bold))))
   `(markdown-header-face-4         ((t (:foreground ,gruvbox-bright_blue :weight bold))))
   `(markdown-header-face-5         ((t (:foreground ,gruvbox-bright_yellow :weight bold))))
   `(markdown-header-face-6         ((t (:foreground ,gruvbox-bright_purple :weight bold))))
   '(markdown-header-rule-face      ((t (:inherit markdown-header-delimiter-face))))
   `(markdown-link-face             ((t (:foreground ,gruvbox-bright_yellow))))
   `(markdown-markup-face           ((t (:foreground ,gruvbox-light2))))
   `(markdown-math-face             ((t (:foreground ,gruvbox-bright_yellow))))
   `(markdown-strike-through-face   ((t (:foreground ,gruvbox-neutral_green :strike-through t))))
   '(markdown-url-face              ((t (:inherit link))))

   ;; flyspell-mode
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruvbox-bright_orange)))
      (t (:underline ,gruvbox-bright_red))))
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruvbox-bright_red)))
      (t (:underline ,gruvbox-bright_orange))))

   ;; flymake-mode
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruvbox-bright_red)))
      (t (:underline ,gruvbox-bright_red))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruvbox-bright_orange)))
      (t (:underline ,gruvbox-bright_orange))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruvbox-bright_green)))
      (t (:underline ,gruvbox-bright_green))))

   ;; flycheck-mode
   `(flycheck-error
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruvbox-bright_red)))
      (t (:underline ,gruvbox-bright_red))))
   `(flycheck-warning
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruvbox-bright_orange)))
      (t (:underline ,gruvbox-bright_orange))))
   `(flycheck-info
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruvbox-bright_green)))
      (t (:underline ,gruvbox-bright_green))))

   '(flycheck-fringe-error   ((t (:inherit error))))
   '(flycheck-fringe-warning ((t (:inherit warning))))
   '(flycheck-fringe-info    ((t (:inherit success))))

   '(flycheck-error-list-line-number   ((t (:inherit compilation-line-number))))
   '(flycheck-error-list-column-number ((t (:inherit compilation-column-number))))

   ;; comint
   '(comint-highlight-input  ((t (:weight bold))))
   `(comint-highlight-prompt ((t (:foreground ,gruvbox-bright_aqua :weight bold))))

   ;; SLIME
   '(slime-repl-input-face            ((t (:weight bold))))
   `(slime-repl-inputed-output-face   ((t (:foreground ,gruvbox-bright_red))))
   `(slime-repl-output-face           ((t (:foreground ,gruvbox-bright_green))))
   `(slime-repl-output-mouseover-face ((t (:box (:line-width -1 :color ,gruvbox-bright_gray :style released-button)
                                                :inherit slime-repl-inputed-output-face))))
   `(slime-repl-prompt-face           ((t (:foreground ,gruvbox-bright_aqua :weight bold))))
   `(slime-repl-result-face           ((t (:foreground ,gruvbox-bright_purple))))

   `(slime-error-face
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruvbox-bright_red)))
      (t (:underline ,gruvbox-bright_red))))
   `(slime-warning-face
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruvbox-bright_orange)))
      (t (:underline ,gruvbox-bright_orange))))
   `(slime-style-warning-face
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruvbox-bright_yellow)))
      (t (:underline ,gruvbox-bright_yellow))))
   `(slime-note-face
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruvbox-bright_green)))
      (t (:underline ,gruvbox-bright_green))))

   `(sldb-frame-label-face            ((t (:foreground ,gruvbox-dark4))))
   `(sldb-restartable-frame-line-face ((t (:foreground ,gruvbox-bright_green))))
   '(sldb-topline-face                ((t (:weight bold))))

   ;; avy
   '(avy-background-face      ((t (:inherit shadow))))
   '(avy-goto-char-timer-face ((t (:inherit highlight))))
   `(avy-lead-face            ((t (:background ,gruvbox-bright_red :foreground ,gruvbox-dark0 :weight bold))))
   `(avy-lead-face-0          ((t (:background ,gruvbox-bright_yellow :foreground ,gruvbox-dark0 :weight bold))))
   `(avy-lead-face-1          ((t (:background ,gruvbox-bright_aqua :foreground ,gruvbox-dark0 :weight bold))))
   `(avy-lead-face-2          ((t (:background ,gruvbox-bright_purple :foreground ,gruvbox-dark0 :weight bold))))

   ;; ESS
   `(ess-bp-fringe-browser-face          ((t (:foreground ,gruvbox-neutral_blue))))
   `(ess-bp-fringe-inactive-face         ((t (:foreground ,gruvbox-dark4))))
   `(ess-bp-fringe-logger-face           ((t (:foreground ,gruvbox-bright_orange))))
   `(ess-bp-fringe-recover-face          ((t (:foreground ,gruvbox-bright_purple))))
   `(ess-debug-blink-ref-not-found-face  ((t (:background ,gruvbox-bright_red :foreground ,gruvbox-dark0))))
   `(ess-debug-blink-same-ref-face       ((t (:background ,gruvbox-bright_blue :foreground ,gruvbox-dark0))))
   '(ess-debug-current-debug-line-face   ((t (:inherit highlight))))
   `(ess-tracebug-last-input-fringe-face ((t (:foreground ,gruvbox-neutral_blue :overline ,gruvbox-neutral_blue))))
   '(ess-watch-current-block-face        ((t (:inherit highlight))))

   ;; undo-tree-mode
   `(undo-tree-visualizer-active-branch-face ((t (:foreground ,gruvbox-light1 :weight bold))))
   `(undo-tree-visualizer-current-face       ((t (:foreground ,gruvbox-bright_red))))
   `(undo-tree-visualizer-default-face       ((t (:foreground ,gruvbox-dark4))))
   `(undo-tree-visualizer-register-face      ((t (:foreground ,gruvbox-bright_yellow))))
   `(undo-tree-visualizer-unmodified-face    ((t (:foreground ,gruvbox-bright_aqua))))

   ;; dired{,+}
   `(dired-directory  ((t (:foreground ,gruvbox-neutral_blue :weight bold))))
   `(dired-flagged    ((t (:foreground ,gruvbox-bright_red :weight bold :underline t))))
   `(dired-header     ((t (:background ,gruvbox-dark1 :foreground ,gruvbox-bright_yellow))))
   '(dired-ignored    ((t (:inherit shadow))))
   `(dired-mark       ((t (:foreground ,gruvbox-bright_green :weight bold))))
   `(dired-marked     ((t (:foreground ,gruvbox-bright_purple :weight bold))))
   `(dired-perm-write ((t (:foreground ,gruvbox-bright_yellow))))
   `(dired-symlink    ((t (:foreground ,gruvbox-neutral_aqua :slant italic))))
   `(dired-warning    ((t (:foreground ,gruvbox-bright_orange :underline t))))

   `(diredp-autofile-name          ((t (:foreground ,gruvbox-bright_orange))))
   `(diredp-compressed-file-name   ((t (:foreground ,gruvbox-neutral_red :weight bold))))
   '(diredp-compressed-file-suffix ((t (:inherit diredp-compressed-file-name))))
   `(diredp-date-time              ((t (:foreground ,gruvbox-bright_yellow))))
   `(diredp-deletion               ((t (:foreground ,gruvbox-bright_red :weight bold :underline t))))
   `(diredp-deletion-file-name     ((t (:foreground ,gruvbox-bright_red :weight bold :underline t))))
   `(diredp-dir-heading            ((t (:background ,gruvbox-dark1 :foreground ,gruvbox-bright_yellow))))
   `(diredp-dir-name               ((t (:foreground ,gruvbox-neutral_blue :weight bold))))
   `(diredp-dir-priv               ((t (:foreground ,gruvbox-neutral_blue))))
   `(diredp-exec-priv              ((t (:foreground ,gruvbox-neutral_green))))
   `(diredp-executable-tag         ((t (:foreground ,gruvbox-neutral_green))))
   `(diredp-file-name              ((t (:foreground ,gruvbox-light1))))
   `(diredp-file-suffix            ((t (:foreground ,gruvbox-bright_aqua))))
   `(diredp-flag-mark              ((t (:background ,gruvbox-dark1 :foreground ,gruvbox-bright_purple))))
   `(diredp-flag-mark-line         ((t (:background ,gruvbox-dark1))))
   '(diredp-ignored-file-name      ((t (:inherit shadow))))
   `(diredp-link-priv              ((t (:foreground ,gruvbox-neutral_aqua))))
   `(diredp-mode-line-flagged      ((t (:foreground ,gruvbox-bright_red :weight bold))))
   `(diredp-mode-line-marked       ((t (:foreground ,gruvbox-bright_purple :weight bold))))
   `(diredp-no-priv                ((t (:foreground ,gruvbox-light1))))
   `(diredp-number                 ((t (:foreground ,gruvbox-bright_purple))))
   `(diredp-other-priv             ((t (:foreground ,gruvbox-light1))))
   `(diredp-rare-priv              ((t (:foreground ,gruvbox-neutral_red))))
   `(diredp-read-priv              ((t (:foreground ,gruvbox-neutral_purple))))
   `(diredp-symlink                ((t (:foreground ,gruvbox-neutral_aqua :slant italic))))
   `(diredp-tagged-autofile-name   ((t (:background ,gruvbox-dark0_h :foreground ,gruvbox-bright_orange))))
   `(diredp-write-priv             ((t (:foreground ,gruvbox-neutral_orange))))

   ;; ert
   '(ert-test-result-expected   ((t (:inherit success))))
   '(ert-test-result-unexpected ((t (:inherit error))))

   ;; eshell
   `(eshell-ls-archive          ((t (:foreground ,gruvbox-neutral_red :weight bold))))
   `(eshell-ls-backup           ((t (:foreground ,gruvbox-neutral_gray))))
   `(eshell-ls-clutter          ((t (:foreground ,gruvbox-dark4))))
   `(eshell-ls-directory        ((t (:foreground ,gruvbox-neutral_blue :weight bold))))
   `(eshell-ls-executable       ((t (:foreground ,gruvbox-neutral_green :weight bold))))
   `(eshell-ls-missing          ((t (:foreground ,gruvbox-neutral_orange :weight bold))))
   `(eshell-ls-product          ((t (:foreground ,gruvbox-light4))))
   `(eshell-ls-readonly         ((t (:foreground ,gruvbox-neutral_purple :weight bold))))
   `(eshell-ls-special          ((t (:background ,gruvbox-dark0_s :foreground ,gruvbox-bright_purple :weight bold))))
   `(eshell-ls-symlink          ((t (:foreground ,gruvbox-neutral_aqua :weight bold))))
   `(eshell-ls-unreadable       ((t (:foreground ,gruvbox-neutral_yellow))))
   `(eshell-prompt              ((t (:foreground ,gruvbox-bright_aqua :weight bold))))

   ;; {ansi-,}term
   `(term-color-black    ((t (:background ,gruvbox-dark0 :foreground ,gruvbox-dark0))))
   `(term-color-blue     ((t (:background ,gruvbox-neutral_green :foreground ,gruvbox-neutral_blue))))
   `(term-color-cyan     ((t (:background ,gruvbox-neutral_aqua :foreground ,gruvbox-neutral_aqua))))
   `(term-color-green    ((t (:background ,gruvbox-neutral_green :foreground ,gruvbox-neutral_green))))
   `(term-color-magenta  ((t (:background ,gruvbox-neutral_purple :foreground ,gruvbox-neutral_purple))))
   `(term-color-red      ((t (:background ,gruvbox-neutral_red :foreground ,gruvbox-neutral_red))))
   `(term-color-white    ((t (:background ,gruvbox-light1 :foreground ,gruvbox-light1))))
   `(term-color-yellow   ((t (:background ,gruvbox-neutral_yellow :foreground ,gruvbox-neutral_yellow))))

   ;; info
   `(info-menu-star ((t (:foreground ,gruvbox-bright_red))))
   `(info-node      ((t (:foreground ,gruvbox-bright_orange :weight bold :slant italic))))

   ;; outline-mode
   `(outline-1 ((t (:foreground ,gruvbox-bright_red :weight bold))))
   `(outline-2 ((t (:foreground ,gruvbox-bright_green :weight bold))))
   `(outline-3 ((t (:foreground ,gruvbox-bright_orange :weight bold))))
   `(outline-4 ((t (:foreground ,gruvbox-bright_blue :weight bold))))
   `(outline-5 ((t (:foreground ,gruvbox-bright_yellow :weight bold))))
   `(outline-6 ((t (:foreground ,gruvbox-bright_purple :weight bold))))
   `(outline-7 ((t (:foreground ,gruvbox-bright_aqua :weight bold))))
   `(outline-8 ((t (:foreground ,gruvbox-neutral_orange :weight bold))))

   ;; haskell-mode
   '(haskell-debug-muted-face        ((t (:inherit shadow))))
   '(haskell-debug-trace-number-face ((t (:inherit compilation-line-number))))
   `(haskell-debug-newline-face      ((t (:foreground ,gruvbox-bright_purple :underline t))))

   `(haskell-error-face
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruvbox-bright_red)))
      (t (:underline ,gruvbox-bright_red))))
   `(haskell-hole-face
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruvbox-bright_blue)))
      (t (:underline ,gruvbox-bright_blue))))
   `(haskell-warning-face
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruvbox-bright_orange)))
      (t (:underline ,gruvbox-bright_orange))))

   `(haskell-interactive-face-prompt ((t (:foreground ,gruvbox-bright_aqua :weight bold)))))

  (custom-theme-set-variables
   'gruvbox-dark

   ;; fci-mode
   `(fci-rule-color ,gruvbox-neutral_blue)

   ;; ansi-colors
   `(ansi-color-names-vector [,gruvbox-dark0 ,gruvbox-bright_red ,gruvbox-bright_green ,gruvbox-bright_yellow
                                             ,gruvbox-bright_blue ,gruvbox-bright_purple ,gruvbox-bright_aqua ,gruvbox-light1])))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'gruvbox-dark)

;;; gruvbox-dark-theme.el ends here
