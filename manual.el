(defun radix-clean () "Find & Replace Radix" (interactive)    
  (replace-regexp "{(.)}" "\1")
  )


(global-set-key [(control c) (control -)] 'sgml-untag-element)
(global-set-key [(control f11)] 'radix-clean)


(defun radix-parmostro () "" (interactive) 
  (LaTeX-insert-environment "parmostro")
)

(defun radix-encase () "" (interactive) 
  (beginning-of-line)
  (delete-backward-char 1)
  (insert "{")
  (delete-horizontal-space)
  (end-of-line)
  (delete-horizontal-space)
  (insert "}")
)


(defun radix-carmostro () "" (interactive) 
  (kill-word 1)
  (delete-horizontal-space)
  (TeX-insert-braces 1)
  (forward-sexp 1)
  (forward-char 2)
)

(global-set-key [(f5)] 'radix-parmostro)
(global-set-key [(f6)] 'radix-encase)
(global-set-key [(f7)] 'radix-carmostro)

(defun test ()  "prova" (interactive)
  (mark-whole-buffer)
  (mark-whole-buffer)
)


(defun radix-classesocfind () "Change class" (interactive)    
  (while (re-search-forward "textbf" nil t)
    (replace-match "classesoc" nil nil)
    (re-search-forward " " nil t)
    (replace-match "}{" nil nil)
    (re-search-forward " " nil t)
    (replace-match "}{" nil nil)
    )
)

(cd "~/radix/manuale")
(find-file "manual.tex")
(split-window-vertically)
(find-file "scuole.tex")
(find-file "magia.tex")
(find-file "personaggio.tex")