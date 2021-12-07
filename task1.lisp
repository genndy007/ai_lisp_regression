;; Run with clisp
;; (load "task1.lisp")

(setf x (make-array '(4 3)))
(setf y (make-array '(4 3)))
(setf z (make-array '(4 3)))

;;  Simple print
(print "First array:")
(terpri)

;; fill one array
(dotimes (i 4)
    (dotimes (j 3)
        (setf (aref x i j) (read))
    )
)

;; Another simple print
(print "Second array:")
(terpri)

;;  fill second array
(dotimes (i 4)
    (dotimes (j 3)
        (setf (aref y i j) (read))
    )
)

;; Compare x and y array elements
(dotimes (i 4)
    (dotimes (j 3)
        (if (>= (aref x i j) (aref y i j)) 
            (setf (aref z i j) (aref x i j))
        )
        (if (< (aref x i j) (aref y i j))
            (setf (aref z i j) (aref y i j))
        )
    )
)

;; function for printing array prettily
(defun print-2d-array-as-table (array)
  (loop for i from 0 below (array-dimension array 0)
        do (loop for j from 0 below (array-dimension array 1)
                 do (princ (aref array i j))
                    (if (= j (1- (array-dimension array 1)))
                        (terpri)
                        (princ #\Space)))))


(print-2d-array-as-table z)




