(defun mk/format-cfiles ( exercise lab )
    "Adds a header based on the car c code header to all c files - you can also customize which files it does this for"
  (interactive "nEnter a lab: \nnEnter a Exercise: ")

  
  (let (list string)
    (setq string (format "/*****************************************************************************/
/*                 Malcolm Kahora CSC345-02 Lab %d Exercise %d                 */
/*****************************************************************************/\n" lab exercise))
    (setq list (find-file-noselect "*.c" nil nil t))
    (dolist (element list)
      (with-current-buffer element (beginning-of-buffer) (insert string)))))

