(defun split-string-by-sep (sep str &optional count)
  "split str by sep"
  (let ((pos-str (get-sep-pos-in-str sep str count))
        (last-pos 0)
        (result))
    (dolist (pos pos-str)
      (push (subseq str last-pos pos) result)
      (setf last-pos (1+ pos)))
    (push (subseq str last-pos) result)
    (nreverse result)))


(defun get-sep-pos-in-str (sep str &optional count)
  "find the position of all apperance of char in str"
  (do ((result)
       (pos (position sep str) (position sep str :start (1+ pos)))
       (inner-count 1 (1+ inner-count)))
      ((or
        (null pos)
        (and (not (null count)) (= inner-count count)))
       (nreverse result))
    (push pos result)))
