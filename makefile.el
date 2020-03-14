;;; package --- Summary

;;; Commentary:
;;; acts like a makefile

;;; Code:
(require 'ox-publish)
(setq org-publish-project-alist
      '(

        ("org-notes"
         :base-directory "~/Mahan/UC/mahanfathi.github.io/org/"
         :base-extension "org"
         :publishing-directory "~/Mahan/UC/mahanfathi.github.io/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :auto-preamble t

         :auto-sitemap t
         :sitemap-filename "sitemap.org"
         :sitemap-title ""
         )

        ("org-static"
         :base-directory "~/Mahan/UC/mahanfathi.github.io/org/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "~/Mahan/UC/mahanfathi.github.io/"
         :recursive t
         :publishing-function org-publish-attachment
         )

        ("org" :components ("org-notes" "org-static"))

        ))

(provide 'makefile)
;;; makefile.el ends here

(org-publish-project "org")