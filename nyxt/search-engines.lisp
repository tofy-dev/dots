(in-package #:nyxt-user)

;; Define buffer search-engines slot to be a list of several
;; nx-search-engines-provided ones.
(define-configuration (buffer web-buffer)
  ((search-engines (list (engines:google :shortcut "m"
                                         :object :maps)
                         (engines:duckduckgo :shortcut "d"
                                             :theme :terminal
                                             :help-improve-duckduckgo nil
                                             :homepage-privacy-tips nil
                                             :privacy-newsletter nil
                                             :newsletter-reminders nil
                                             :install-reminders nil
                                             :install-duckduckgo nil)
                         (engines:google :shortcut "g" :safe-search nil)))))
