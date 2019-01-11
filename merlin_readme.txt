<><> merlin.3.2.2 installed successfully ><><><><><><><><><><><><><><><><><><><>
=> merlin installed.

   Quick setup for VIM
   -------------------
   Append this to your .vimrc to add merlin to vim's runtime-path:
     let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
     execute "set rtp+=" . g:opamshare . "/merlin/vim"

   Also run the following line in vim to index the documentation:
     :execute "helptags " . g:opamshare . "/merlin/vim/doc"

   Quick setup for EMACS
   -------------------
   Add opam emacs directory to your load-path by appending this to your .emacs:
     (let ((opam-share (ignore-errors (car (process-lines "opam" "config" "var" "share")))))
      (when (and opam-share (file-directory-p opam-share))
       ;; Register Merlin
       (add-to-list 'load-path (expand-file-name "emacs/site-lisp" opam-share))
       (autoload 'merlin-mode "merlin" nil t nil)
       ;; Automatically start it in OCaml buffers
       (add-hook 'tuareg-mode-hook 'merlin-mode t)
       (add-hook 'caml-mode-hook 'merlin-mode t)
       ;; Use opam switch to lookup ocamlmerlin binary
       (setq merlin-command 'opam)))

   Take a look at https://github.com/ocaml/merlin for more information

   Quick setup with opam-user-setup
   --------------------------------

   Opam-user-setup support Merlin.

     $ opam user-setup install

   should take care of basic setup.
   See https://github.com/OCamlPro/opam-user-setup
