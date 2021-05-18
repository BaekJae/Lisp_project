(defun deleteall(k lis)
 (cond ((atom k) (deleteall1 k lis))
       (t (deleteall2 k lis)) ) )

(defun deleteall1(k lis)
 (cond ((null lis) nil)
       ((atom lis) lis)
       ((equal_s k (car lis))(deleteall1 k (cdr lis)))
       ((not(atom (car lis)))(append (list(deleteall1 k (car lis)))(deleteall1 k (cdr lis))))
       (t (cons (car lis)(deleteall1 k (cdr lis))) ) ) )

(defun deleteall2(k lis)
 (cond ((null lis) nil)
       ((atom lis) lis)
       ((equal k (car lis))(deleteall2 k (cdr lis)))
       (t (cons (car lis)(deleteall2 k (cdr lis)))) ) ) 

(defun equal_s(lis1 lis2)
 (cond ((null lis1)(null lis2))
       ((atom lis1)(eq lis1 lis2))
       ((atom (car lis1)) (and (eq(car lis1)(car lis2)) (equal_s(cdr lis1) (cdr lis2))))
       (t (and (equal_s (car lis1)(car lis2)) (equal_s(cdr lis1)(cdr lis2)) )) ) )

(defun comp(atom lis)
  (cond ((null lis) lis) ((eq atom (car lis)) t) (t (comp atom (cdr lis))))
)

(defun uni(lis1 lis2)
 (cond ((null lis1) lis2)
       ((null lis2) lis1)
       ((comp (car lis1) lis2) (uni (cdr lis1) lis2))
       (t (uni (cdr lis1) (cons (car lis1) lis2))) ) )

(defun inter(lis1 lis2)
 (cond ((null lis1) nil)
       ((null lis2) nil)
       ((comp (car lis1) lis2) (cons (car lis1) (inter (cdr lis1) lis2)))
       (t (inter (cdr lis1) lis2)) ) )

(defun dif(lis1 lis2)
 (cond ((null lis1) nil)
       ((comp (car lis1) lis2) (dif (cdr lis1) lis2))
       (t (cons (car lis1) (dif (cdr lis1) lis2))) ) )

