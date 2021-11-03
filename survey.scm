(define srfis
  '((0 cond-expand)
    (1 list lists)
    (2 and-let*)
    (4 vector vectors)
    (5 let)
    (6 string-port string-ports)
    (8 receive)
    (9 record records)
    (11 let-values)
    (13 string strings)
    (14 char-set char-sets)
    (15 fluid-let)
    (16 case-lambda)
    (17 set!)
    (18 thread threads)
    (19 time)
    (21 thread threads)
    (23 error errors)
    (25 array arrays)
    (26 cut)
    (27 random)
    (28 format)
    (29 localization)
    (31 rec)
    (34 exception exceptions)
    (35 condition conditions)
    (37 args-fold)
    (38 shared)
    (39 parameter parameters)
    (41 stream streams)
    (42 ec)
    (43 vector vectors)
    (44 collection collections)
    (45 lazy)
    (46 syntax-rules)
    (47 array arrays)
    (48 format)
    (51 rest-values)
    (54 cat)
    (57 record records)
    (59 vicinity vicinities)
    (60 bitwise)
    (61 cond)
    (63 array arrays)
    (64 test testing)
    (66 u8vector u8vectors)
    (67 compare)
    (69 hash-table hash-tables)
    (71 let)
    (74 blob blobs)
    (78 test testing)
    (86 values)
    (87 case)
    (95 sort sorting)
    (98 environment-variable environment-variables)
    (99 record records)
    (101 list lists)
    (111 box boxes)
    (113 set sets)
    (115 regexp regexps)
    (116 ilist ilists)
    (117 list-queue list-queues)
    (121 generator generators)
    (124 ephemeron ephemerons)
    (125 hash-table hash-tables)
    (126 hashtable hashtables)
    (127 lseq lseqs)
    (128 comparator comparators)
    (129 titlecase)
    (130 string strings)
    (131 record records)
    (132 sort sorting)
    (133 vector vectors)
    (134 ideque ideques)
    (135 text texts)
    (141 division)
    (143 fixnum fixnums)
    (144 flonum flonums)
    (145 assume)
    (146 mapping mappings)
    (151 bitwise)
    (152 string strings)
    (156 is)
    (158 generator generators)
    (159 show)
    (160 vector vectors)
    (175 ascii)
    (219 define)))

(define r6rs
  '(bitwise  ; actually (arithmetic bitwise)
    bytevectors
    conditions
    control
    enums
    eval
    exceptions
    files
    fixnums  ; actually (arithmetic fixnums)
    flonums  ; actually (arithmetic flonums)
    hashtables
    io       ; actually (io simple)
    lists
    mutable-pairs
    mutable-strings
    ports    ; actually (io ports)
    programs
    r5rs
    records
    ;; actually three libraries:
    ;; (records inspection)
    ;; (records procedural)
    ;; (records syntactic)
    sorting
    syntax-case
    unicode))

(define r7rs-small
  '(base
    case-lambda
    char
    complex
    cxr
    eval
    file
    inexact
    lazy
    load
    process-context
    r5rs
    read
    repl
    time
    write))

(define r7rs-large
  '(bitwise
    box
    charset
    comparator
    division
    ephemeron
    fixnum
    flonum
    generator
    generator
    hash-table
    ideque
    ilist
    list
    list-queue
    lseq
    mapping
    regex
    rlist
    set
    show
    sort
    stream
    text
    vector
    vector))

(define r7rs
  (append r7rs-small
          r7rs-large))

(define (any f xs)
  (let loop ((xs xs))
    (and (not (null? xs))
         (let ((val (f (car xs))))
           (or val (loop (cdr xs)))))))

(define (list-ref-maybe list i)
  (cond ((null? list) #f)
        ((= i 0) (car list))
        (else (list-ref-maybe (cdr list) (- i 1)))))

(define (string-join strings sep)
  (if (null? strings) ""
      (let loop ((result (car strings)) (strings (cdr strings)))
        (if (null? strings) result
            (loop (string-append result sep (car strings)) (cdr strings))))))

(define (written obj)
  (call-with-port (open-output-string)
                  (lambda (out)
                    (write obj out)
                    (get-output-string out))))

(define (disp . xs)
  (for-each display xs)
  (newline))

(define (tagged tag)
  (lambda (string)
    (string-append "<" tag ">" string "</" tag ">")))

(define code (tagged "code"))

(define (brs strings) (string-join strings "<br>"))

(define table
  (map (lambda (srfi)
         (let* ((number (car srfi))
                (names (cdr srfi))
                (name0 (list-ref-maybe names 0))
                (name1 (list-ref-maybe names 1))
                (r6? (any (lambda (name) (member name r6rs))
                          names))
                (r7? (any (lambda (name) (member name r7rs))
                          names)))
           (list (brs (append
                       (if name0
                           (list (code (written `(srfi ,number ,name0))))
                           '())
                       (if name1
                           (list (code (written `(srfi ,number ,name1))))
                           '())))
                 (if r6? "R6RS" "")
                 (if r7? "R7RS" ""))))
       srfis))

(define (write-tr tag)
  (lambda (columns)
    (disp "<tr>")
    (for-each disp (map (tagged tag) columns))
    (disp "</tr>")))

(define (write-html)
  (disp "<style>")
  (disp "table, td, th { border: 1px solid black; }")
  (disp "table { border-collapse: collapse; }")
  (disp "td, th { padding: 3px; }")
  (disp "</style>")
  (disp "<table>")
  ((write-tr "th")
   '("Library names"
     "R6RS?"
     "R7RS?"))
  (for-each (write-tr "td") table)
  (disp "</table>"))

(define (main)
  (with-output-to-file "survey.html" write-html))

(main)
