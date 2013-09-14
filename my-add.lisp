(defun my-add (x &rest y)
  "first lisp function, add number"
  (let ((sum x))
    (if (null y)
        sum
      (dolist (z y)
        (incf sum z)))
    sum))


(defmacro my-add-1 (&rest args)
  `(+ ,@args))

