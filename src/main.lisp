(uiop:define-package accounthelperi
  (:use #:cl))
(in-package #:accounthelperi)

;; blah blah blah.

;;sales Budget

(defvar *a*)
(defvar *b*)
(defvar *c*)
(defvar *d*)
(defvar *e*)
(defvar *f*)
(defvar *g*)
(defvar *h*)
(defvar *i*)
(defvar *j*)
(defvar *k*)
(defvar *l*)
(defvar *m*)



(defun sales ()
  (format t "你好，小会计，又懒了吧~%")

  (format t "请输入第一个月 unit 的值: ")  (setf *a* (read))
  (format t "请输入第二个月 unit 的值: ")  (setf *c* (read))
  (format t "请输入 pirce 的值: ") (setf *b* (read))

  (setf *e* (* *a* *b*))
  (setf *f* (* *c* *b*))

  (format t "~%~35A~10A~10A" "Sales budget" "" "")
  (format t "~%|~35A|~10A|~10A|~%" " " "month i" "month ii")
  (format t "|~35A|~10A|~10A|~%" "No. of units" *a* *c*)
  (format t "|~35A|~10A|~10A|~%" "Selling price" *b* *b*)
  (format t "|~35A|~10A|~10A|~%" "Budgeted sales revenue" *e* *f*))

;;production budget

(defun production ()
  (format t "请输入第一个月 beg.inventory 的值:") (setf *g* (read))
  (format t "请输入第一个月 end.inventory 的值:") (setf *h* (read))
  (format t "请输入第二个月 end.inventory 的值:") (setf *j* (read))

  (setf *i* (+ *a* *h*))
  (setf *k* (+ *c* *j*))
  (setf *l* (- *i* *g*))
  (setf *m* (- *k* *h*))
  
  (format t "~% ~35A ~10A ~10A" "Production budge" "" "")
  (format t "~%|~35A|~10A|~10A|~%" " " "month i" "month ii")
  (format t "|~35A|~10A|~10A|~%" "No. of unit sold" *a* *c*)
  (format t "|~35A|~10A|~10A|~%" "  + ending inventory" *h* *j*)
  (format t "|~35A|~10A|~10A|~%" "Total requirement" *i* *k*)
  (format t "|~35A|~10A|~10A|~%" "  - begining inventory" *g* *h*)
  (format t "|~35A|~10A|~10A|~%" "Budgeted prduction (unit)" *l* *m*)) 



;;DM budget

(defvar *a0*);;第一行第一个
(defvar *a00*);;第二行第二个
(defvar *a1*);第三行1，2个都用这个
(defvar *a2*);倒数第二行都用这个
(defvar *a3*)
(defvar *a4*)
(defvar *a5*);;三个inventory
(defvar *a6*)
(defvar *a7*)
(defvar *a8*)
(defvar *a9*)
(defvar *a10*)
(defvar *a11*)
(defvar *a12*)
(defvar *a13*)


(defun DM ()
  (format t "小小老子做到第二题了~%")

  (format t "(上文）请输入第一个月 prduction (unit）的值: ")  (setf *a0* (read))
  (format t "（上文）请输入第二个月 prduction (unit）的值: ")  (setf *a00* (read))
  (format t "请输入每件商品的 单位: ") (setf *a1* (read))
  (format t "请输入每件商品的 pirce : ") (setf *a2* (read))
  (format t "请输入第一个月 beg.inventory 的值:") (setf *a3* (read))
  (format t "请输入第一个月 end.inventory 的值:") (setf *a4* (read))
  (format t "请输入第二个月 end.inventory 的值:") (setf *a5* (read))

  (setf *a6* (* *a0* *a1*))
  (setf *a7* (* *a00* *a1*))
  (setf *a8* (+ *a6* *a4*))
  (setf *a9* (+ *a7* *a5*))
  (setf *a10* (- *a8* *a3*))
  (setf *a11* (- *a9* *a4*))
  (setf *a12* (* *a10* *a2*))
  (setf *a13* (* *a11* *a2*))


  
  (format t "~%~35A~10A~10A" "DM budget" "" "")
  (format t "~%|~35A|~10A|~10A|~%" " " "month i" "month ii")
  (format t "|~35A|~10A|~10A|~%" "No.of unit produced" *a0* *a00*)
  (format t "|~35A|~10A|~10A|~%" "No.of goods per unit" *a1* *a1*)
  (format t "|~35A|~10A|~10A|~%" "Total No.of goods" *a6* *a7*)
  (format t "|~35A|~10A|~10A|~%" "Required ending inventory" *a4* *a5*)
  (format t "|~35A|~10A|~10A|~%" "Total requirements" *a8* *a9*)
  (format t "|~35A|~10A|~10A|~%" " -Beg.inventory" *a3* *a4*)
  (format t "|~35A|~10A|~10A|~%" "Budgeted No.of goods purduced" *a10* *a11*)
  (format t "|~35A|~10A|~10A|~%" "Unit price" *a2* *a2*)
  (format t "|~35A|~10A|~10A|~%" "Budgeted costs of goods" *a12* *a13*))



;;MOH budget


(defvar *a111*)
(defvar *a222*)
(defvar *a333*)
(defvar *a444*)
(defvar *a555*)
(defvar *a666*)


(defun MOH ()
  (format t "请输入 Variable MOH 每单位价格: ") (setf *a111* (read))
  (format t "请输入 Fixed MOH 的价格: ") (setf *a222* (read))

  (setf *a333* (* *a12* *a111*))
  (setf *a444* (* *a13* *a111*))
  (setf *a555* (+ *a333* *a222*))
  (setf *a666* (+ *a444* *a222*))

  (format t "~% ~35A ~10A ~10A" "MOH budget" "" "")
  (format t "~%|~35A|~10A|~10A|~%" " " "month i" "month ii")
  (format t "|~35A|~10A|~10A|~%" "No. of unit produced" *a0* *a00*)
  (format t "|~35A|~10A|~10A|~%" "Variable MOH per unit" *a111* *a111*)
  (format t "|~35A|~10A|~10A|~%" "Budgeted variable MOH" *a333* *a444*)
  (format t "|~35A|~10A|~10A|~%" "Budgeted Fixed MOH" *a222* *a222*)
  (format t "|~35A|~10A|~10A|~%" "Budgeted MOH" *a555* *a666*))




;;DL budget

(defvar *b1*)
(defvar *b2*)
(defvar *b3*)
(defvar *b4*)
(defvar *b5*)
(defvar *b6*)
(defvar *b0*)
(defvar *b00*)



(defun DL ()
  (format t "(上文）请输入第一个月 prduction (unit）的值: ")  (setf *b0* (read))
  (format t "（上文）请输入第二个月 prduction (unit）的值: ")  (setf *b00* (read))
  (format t "请输入 direct labor hours:")(setf *b1*(read))
  (format t "请输入单位劳动时间的价格：")(setf *b2*(read))

  (setf *b3* (* *b0* *b1*))
  (setf *b4* (* *b00* *b1*))
  (setf *b5* (round(* *b3* *b2*)))
  (setf *b6* (round(* *b4* *b2*)))

  (format t "~% ~35A ~10A ~10A" "DL budget" "" "")
  (format t "~%|~35A|~10A|~10A|~%" " " "month i" "month ii")
  (format t "|~35A|~10A|~10A|~%" "No. of unit produced" *b0* *b00*)
  (format t "|~35A|~10A|~10A|~%" "DL hours per unit" *b1* *b1*)
  (format t "|~35A|~10A|~10A|~%" "Total DL hours required" *b3* *b4*)
  (format t "|~35A|~10A|~10A|~%" "Direct Labor rate" *b2* *b2*)
  (format t "|~35A|~10A|~10A|~%" "Budgeted Direct Labor costs" *b5* *b6*))
 


