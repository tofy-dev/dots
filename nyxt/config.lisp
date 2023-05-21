(define-configuration browser
  ((theme (make-instance 'theme:theme
                         :background-color "#11111b"
                         :on-background-color "#cdd6f4"

                         :primary-color "#cba6f7"
                         :on-primary-color "black"

                         :secondary-color "#181825"
                         :on-secondary-color "white"

                         :accent-color "#74c7ec"
                         :on-accent-color "black"))))

;; set homepage
(define-internal-page-command-global home (&key k)
    (buffer (format nil "*Home*"))
    (uiop:read-file-string ".config/nyxt/nonlisp/homepage.html"))
 
(define-configuration browser
  ((default-new-buffer-url (quri:uri "nyxt:nyxt-user:home"))))

;; Load search-engines.lisp after loading nx-search-engines.
#+nyxt-2
(load-after-system :nx-search-engines (nyxt-init-file "search-engines.lisp"))
#+nyxt-3
(define-nyxt-user-system-and-load "nyxt-user/search-engines"
  :depends-on (:nx-search-engines) :components ("search-engines.lisp"))
