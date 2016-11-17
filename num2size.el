;; doc: 1. In emacs. (load-file num2size.el)
;;      2. Use it, or edit it, or add TB PB.
;; version: 1.0
;; example:
;;      (num2size #x21314312313) = (2124 GB 323 MB 72 KB 787 byte)
;;      (num2size #x4000000) = (0 GB 64 MB 0 KB 0 byte)
;;      (num2size 648126) = (0 GB 0 MB 632 KB 958 byte)

(defun num2size (tmp_var)
  "Input any format number, output size."
  (let* ((tmp tmp_var)
	 (GB_num 0)
	 (MB_num 0)
	 (KB_num 0))
    (if (>= (/ tmp (expt 1024 3)) 0)
	(progn (setq GB_num (/ tmp (expt 1024 3)))
	       (setq tmp (mod tmp (expt 1024 3)))))
    (if (>= (/ tmp (expt 1024 2)) 0)
	(progn (setq MB_num (/ tmp (expt 1024 2)))
	       (setq tmp (mod tmp (expt 1024 2)))))
    (if (>= (/ tmp 1024) 0)
	(progn (setq KB_num (/ tmp 1024))
	       (setq tmp (mod tmp 1024))))
    `(,GB_num GB ,MB_num MB ,KB_num KB ,tmp byte)))


