;;; packages.el --- ember Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq ember-packages
    '(
      ember-mode
      ember-yasnippets
      mustache-mode
      ))

;; List of packages to exclude.
(setq ember-excluded-packages '())

;; For each package, define a function ember/init-<package-name>
;;
;; (defun ember/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
(defun ember/init-ember-mode ()
  "Initialize ember-mode"
  (use-package ember-mode)
  (evil-leader/set-key-for-mode 'js2-mode
    "mgep" 'ember-open-component
    "mgeo" 'ember-open-router
    "mgec" 'ember-open-controller
    "mgem" 'ember-open-model
    "mger" 'ember-open-route
    "mget" 'ember-open-template
    "mgej" 'ember-open-javascript
    "mgev" 'ember-open-view
    "mgex" 'ember-open-mixin
    "mgei" 'ember-open-initializer
    "mgeu" 'ember-open-util
    "mges" 'ember-open-service
    "mceg:" 'ember-generate
    "mcegp" 'ember-generate-component
    "mcegc" 'ember-generate-controller
    "mcegm" 'ember-generate-model
    "mcegr" 'ember-generate-route
    "mcegt" 'ember-generate-template
    "mcegj" 'ember-generate-javascript
    "mcegv" 'ember-generate-view
    "mcegx" 'ember-generate-mixin
    "mcegi" 'ember-generate-initializer
    "mcegu" 'ember-generate-util
    "mcegs" 'ember-generate-service
    "mcc" 'ember-build
    "mcs" 'ember-serve-or-display
    "mta" 'ember-test
    )
  (evil-leader/set-key-for-mode 'web-mode
    "mgep" 'ember-open-component
    "mgeo" 'ember-open-router
    "mgec" 'ember-open-controller
    "mgem" 'ember-open-model
    "mger" 'ember-open-route
    "mget" 'ember-open-template
    "mgej" 'ember-open-javascript
    "mgev" 'ember-open-view
    "mgex" 'ember-open-mixin
    "mgei" 'ember-open-initializer
    "mgeu" 'ember-open-util
    "mges" 'ember-open-service
    "mceg:" 'ember-generate
    "mcegp" 'ember-generate-component
    "mcegc" 'ember-generate-controller
    "mcegm" 'ember-generate-model
    "mcegr" 'ember-generate-route
    "mcegt" 'ember-generate-template
    "mcegj" 'ember-generate-javascript
    "mcegv" 'ember-generate-view
    "mcegx" 'ember-generate-mixin
    "mcegi" 'ember-generate-initializer
    "mcegu" 'ember-generate-util
    "mcegs" 'ember-generate-service
    "mcc" 'ember-build
    "mcs" 'ember-serve-or-display
    "mta" 'ember-test
    )
  )

(defun ember/post-init-ember-mode ()
  (add-hook 'js-mode-hook (lambda () (ember-mode t)))
  (add-hook 'js2-mode-hook (lambda () (ember-mode t)))
  (add-hook 'web-mode-hook (lambda () (ember-mode t)))
  )

(defun ember/init-ember-yasnippets ()
  "Initialize ember-yasnippets"
  (use-package ember-yasnippets)
  )

(defun ember/init-mustache-mode ()
    "Initialize mustache-mode"
  (use-package mustache-mode)
  )
