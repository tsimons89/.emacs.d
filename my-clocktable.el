(defun my-clocktable--insert-header ()
  (insert-before-markers
   "|Tag| Task | Total Time | Task Time |\n"
   "|--|\n"))

(defun my-clocktable--insert-body (params)
  (let ((tags (org-get-buffer-tags)))
    (mapc 'my-clocktable--insert-tag-summary
            tags)))

(defun my-clocktable--insert-tag-summary (tag)
  (debug)
  (let* ((tag (car tag))
         (data (org-clock-get-table-data nil (list :tags tag :block 'today))))
    (my-clocktable--insert-tag-tot tag data)
    (my-clocktable--insert-tag-entries data)))

(defun my-clocktable--insert-tag-entries (data)
  (let* ((entries-data (nth 2 data)))
    (mapc 'my-clocktable--insert-entry-line entries-data)))

(defun my-clocktable--insert-entry-line (data)
  (let* ((level (nth 0 data))
        (heading (nth 1 data))
        (min (nth 3 data))
        (time-str (my-clocktable--get-hr-min min)))
    (when (eq level 2)
      (insert-before-markers
       (format "|   | %s |  | %s |\n" heading time-str)))))

(defun my-clocktable--insert-tag-tot (tag data)
  (let* ((tot-min (nth 1 data))
         (tot-str (my-clocktable--get-hr-min tot-min)))
    (insert-before-markers
     (format "| %s |  | %s |\n"  tag tot-str))))

(defun my-clocktable--get-hr-min (tot-min)
  (let* ((hr (/ tot-min 60))
         (min (mod tot-min 60)))
    (format "%s:%s" hr min)))
  
(defun org-dblock-write:my-clocktable (params)
  (my-clocktable--insert-header)
  (my-clocktable--insert-body params)
  (org-table-align))

