(defun f-pascal (x y)
  "y must not big than x"
  (if (or (= y 0) (= x y)) 1
      (+ (f-pascal (- x 1) (- y 1)) (f-pascal (- x 1) y))))


(defun print-pascal (x)
  (loop for i from 0 to x do (format t "~a " (f-pascal x i))))


(defun pascal (n)
  (do ((index 0 (+ index 1)))
      ((> index n))
    (progn
      (print-pascal index)
      (format t "~%"))))

