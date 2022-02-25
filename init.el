(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
 
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(org-babel-load-file (expand-file-name "~/.emacs.d/eric-init.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#27212E" "#964C7B" "#74DFC4" "#FFE261" "#40B4C4" "#EB64B9" "#B4DCE7" "#FFFFFF"])
 '(beacon-color "#f2777a")
 '(css-indent-offset 2)
 '(custom-safe-themes
   '("7d708f0168f54b90fc91692811263c995bebb9f68b8b7525d0e2200da9bc903c" "b5fff23b86b3fd2dd2cc86aa3b27ee91513adaefeaa75adc8af35a45ffb6c499" "3c2f28c6ba2ad7373ea4c43f28fcf2eed14818ec9f0659b1c97d4e89c99e091e" "e074be1c799b509f52870ee596a5977b519f6d269455b84ed998666cf6fc802a" "3df5335c36b40e417fec0392532c1b82b79114a05d5ade62cfe3de63a59bc5c6" "e6ff132edb1bfa0645e2ba032c44ce94a3bd3c15e3929cdf6c049802cf059a2a" "89885317e7136d4e86fb842605d47d8329320f0326b62efa236e63ed4be23c58" "6b80b5b0762a814c62ce858e9d72745a05dd5fc66f821a1c5023b4f2a76bc910" "4a8d4375d90a7051115db94ed40e9abb2c0766e80e228ecad60e06b3b397acab" "5b809c3eae60da2af8a8cfba4e9e04b4d608cb49584cb5998f6e4a1c87c057c4" "c086fe46209696a2d01752c0216ed72fd6faeabaaaa40db9fc1518abebaf700d" "730a87ed3dc2bf318f3ea3626ce21fb054cd3a1471dcd59c81a4071df02cb601" "4f01c1df1d203787560a67c1b295423174fd49934deb5e6789abd1e61dba9552" "188fed85e53a774ae62e09ec95d58bb8f54932b3fd77223101d036e3564f9206" "aaa4c36ce00e572784d424554dcc9641c82d1155370770e231e10c649b59a074" "54cf3f8314ce89c4d7e20ae52f7ff0739efb458f4326a2ca075bf34bc0b4f499" "77113617a0642d74767295c4408e17da3bfd9aa80aaa2b4eeb34680f6172d71a" "6084dce7da6b7447dcb9f93a981284dc823bab54f801ebf8a8e362a5332d2753" "990e24b406787568c592db2b853aa65ecc2dcd08146c0d22293259d400174e37" "2cdc13ef8c76a22daa0f46370011f54e79bae00d5736340a5ddfe656a767fddf" "1623aa627fecd5877246f48199b8e2856647c99c6acdab506173f9bb8b0a41ac" "cae81b048b8bccb7308cdcb4a91e085b3c959401e74a0f125e7c5b173b916bf9" "fce3524887a0994f8b9b047aef9cc4cc017c5a93a5fb1f84d300391fba313743" "711efe8b1233f2cf52f338fd7f15ce11c836d0b6240a18fffffc2cbd5bfe61b0" "d5a878172795c45441efcd84b20a14f553e7e96366a163f742b95d65a3f55d71" "74ba9ed7161a26bfe04580279b8cad163c00b802f54c574bfa5d924b99daa4b9" "6c9cbcdfd0e373dc30197c5059f79c25c07035ff5d0cc42aa045614d3919dab4" "be9645aaa8c11f76a10bcf36aaf83f54f4587ced1b9b679b55639c87404e2499" "e1ef2d5b8091f4953fe17b4ca3dd143d476c106e221d92ded38614266cea3c8b" "d6603a129c32b716b3d3541fc0b6bfe83d0e07f1954ee64517aa62c9405a3441" "4bca89c1004e24981c840d3a32755bf859a6910c65b829d9441814000cf6c3d0" "6c3b5f4391572c4176908bb30eddc1718344b8eaff50e162e36f271f6de015ca" "5036346b7b232c57f76e8fb72a9c0558174f87760113546d3a9838130f1cdb74" "d74c5485d42ca4b7f3092e50db687600d0e16006d8fa335c69cf4f379dbd0eee" "c83c095dd01cde64b631fb0fe5980587deec3834dc55144a6e78ff91ebc80b19" "99ea831ca79a916f1bd789de366b639d09811501e8c092c85b2cb7d697777f93" "71e5acf6053215f553036482f3340a5445aee364fb2e292c70d9175fb0cc8af7" "79278310dd6cacf2d2f491063c4ab8b129fee2a498e4c25912ddaa6c3c5b621e" "01cf34eca93938925143f402c2e6141f03abb341f27d1c2dba3d50af9357ce70" "2c49d6ac8c0bf19648c9d2eabec9b246d46cb94d83713eaae4f26b49a8183fc4" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "08a27c4cde8fcbb2869d71fdc9fa47ab7e4d31c27d40d59bf05729c4640ce834" "c4bdbbd52c8e07112d1bfd00fee22bf0f25e727e95623ecb20c4fa098b74c1bd" "f2927d7d87e8207fa9a0a003c0f222d45c948845de162c885bf6ad2a255babfd" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "7922b14d8971cce37ddb5e487dbc18da5444c47f766178e5a4e72f90437c0711" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default))
 '(fci-rule-color "#544863")
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(frame-background-mode 'dark)
 '(hl-sexp-background-color "#1c1f26")
 '(jdee-db-active-breakpoint-face-colors (cons "#222228" "#40B4C4"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#222228" "#74DFC4"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#222228" "#4E415C"))
 '(js-indent-level 2)
 '(objed-cursor-color "#964C7B")
 '(package-selected-packages
   '(yasnippet-snippets company-auctex eglot lsp-julia lsp-mode eglot-jl quelpa flycheck-julia jupyter auto-complete which-key use-package undo-tree try treemacs-projectile treemacs-persp treemacs-magit treemacs-icons-dired treemacs-evil svelte-mode py-autopep8 org-bullets material-theme git-gutter flycheck elpy counsel color-theme-sanityinc-tomorrow centaur-tabs blacken all-the-icons))
 '(pdf-view-midnight-colors (cons "#FFFFFF" "#27212E"))
 '(rustic-ansi-faces
   ["#27212E" "#964C7B" "#74DFC4" "#FFE261" "#40B4C4" "#EB64B9" "#B4DCE7" "#FFFFFF"])
 '(send-mail-function 'mailclient-send-it)
 '(sgml-basic-offset 2)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#27212E")
 '(vc-annotate-color-map
   (list
    (cons 20 "#74DFC4")
    (cons 40 "#a2e0a3")
    (cons 60 "#d0e182")
    (cons 80 "#FFE261")
    (cons 100 "#ffd35f")
    (cons 120 "#ffc55d")
    (cons 140 "#FFB85B")
    (cons 160 "#f89c7a")
    (cons 180 "#f18099")
    (cons 200 "#EB64B9")
    (cons 220 "#ce5ca4")
    (cons 240 "#b2548f")
    (cons 260 "#964C7B")
    (cons 280 "#834973")
    (cons 300 "#72466b")
    (cons 320 "#604363")
    (cons 340 "#544863")
    (cons 360 "#544863")))
 '(vc-annotate-very-old-color nil)
 '(window-divider-mode nil))
;; ## added by OPAM user-setup for emacs / base ## 56ab50dc8996d2bb95e7856a6eddb17b ## you can edit, but keep this line
(require 'opam-user-setup "~/.emacs.d/opam-user-setup.el")
;; ## end of OPAM user-setup addition for emacs / base ## keep this line
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fira Code" :foundry "CTDB" :slant normal :weight normal :height 120 :width normal))))
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0))))
 '(flycheck-error ((t (:underline (:color "#e95678" :style wave)))))
 '(flycheck-info ((t (:underline (:color "#09f7a0" :style wave)))))
 '(flycheck-warning ((t (:underline (:color "#fab795" :style wave)))))
 '(merlin-compilation-error-face ((t (:inherit compilation-error)))))

