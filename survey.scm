(define srfis
  '((0 cond-expand)
    (1 list lists)
    (2 and-let)
    (3 lset lsets)
    (4 vector vectors)
    (5 let)
    (6 string-port string-ports)
    ;; 7 does not define any Scheme identifiers.
    (8 receive)
    (9 record records)
    ;; 10 does not define any Scheme identifiers.
    (11 let-values)
    (12 exception exceptions)
    (13 string strings)
    (14 char-set char-sets)
    (15 fluid-let)
    (16 case-lambda)
    (17 set!)
    (18 thread threads)
    (19 time)
    (20 object objects)
    (21 thread threads)
    ;; 22 does not define any Scheme identifiers.
    (23 error errors)
    (24 syntax)
    (25 array arrays)
    (26 cut)
    (27 random)
    (28 format)
    (29 localization)
    ;; 30 does not define any Scheme identifiers.
    (31 rec)
    (32 sort sorting)
    (33 bitwise)
    (34 exception exceptions)
    (35 condition conditions)
    (36 condition conditions)  ; Specifically, I/O conditions.
    (37 args-fold)
    (38 shared)
    (39 parameter parameters)
    (40 stream streams)
    (41 stream streams)
    (42 ec)
    (43 vector vectors)
    (44 collection collections)
    (45 lazy)
    (46 syntax-rules)
    (47 array arrays)
    (48 format)
    ;; 49 does not define any Scheme identifiers.
    (50 c-binding c-bindings)
    (51 rest-values)
    (52 unicode)  ; Actually handles other charsets besides Unicode too.
    (53 syntax)
    (54 cat)
    (55 extension extensions)
    (56 binary)
    (57 record records)
    ;; 58 does not define any Scheme identifiers.
    (59 vicinity vicinities)
    (60 bitwise)
    (61 cond)
    ;; 62 does not define any Scheme identifiers.
    (63 array arrays)
    (64 test testing)
    (65 define-immutable)
    (66 u8vector u8vectors)
    (67 compare)
    (68 io)
    (69 hash-table hash-tables)
    (70 arithmetic)
    (71 let)
    (72 syntax)  ; Or "syntax-case"?
    (73 infinity infinities)
    (74 blob blobs)
    (75 unicode)
    (76 record records)
    (77 arithmetic)
    (78 test testing)
    (79 io)
    (80 io)
    (81 io)
    (82 io)
    (83 io)
    ;; 84 does not define any Scheme identifiers.
    (85 equiv)
    (86 values)
    (87 case)
    (88 keyword keywords)
    (89 define)
    (90 table tables)
    (91 io)
    (92 alambda)
    (93 syntax-case)
    (94 arithmetic)
    (95 sort sorting)
    (96 slib)
    ;; 97 does not define any Scheme identifiers.
    (98 environment)
    (99 record records)
    (100 object objects)
    (101 list lists)
    (102 arity)
    ;; 103 does not define any Scheme identifiers.
    (104 library libraries)
    (105 infix)
    (106 socket sockets)
    ;; 107 does not define any Scheme identifiers. [???]
    ;; 108 does not define any Scheme identifiers.
    ;; 109 does not define any Scheme identifiers. [???]
    ;; 110 does not define any Scheme identifiers.
    (111 box boxes)
    (112 environment)
    (113 set sets)
    (114 comparator comparators)
    (115 regexp regexps)
    (116 ilist ilists)
    (117 list-queue list-queues)
    (118 string strings)
    ;; 119 does not define any Scheme identifiers.
    (120 timer timers)
    (121 generator generators)
    (122 array arrays)
    (123 ref-set!)
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
    (136 record records)
    (127 lseq)
    (128 comparator comparators)
    (129 titlecase)
    (130 string strings)
    (131 record records)
    (132 sort sorting)
    (133 vector vectors)
    (134 ideque ideques)
    (135 text texts)
    (136 record records)
    (137 reia)
    ;; 138 does not define any Scheme identifiers.
    (139 syntax syntax)
    (140 string strings)
    (141 division)
    (142 bitwise)
    (143 fixnum fixnums)
    (144 flonum flonums)
    (145 assume)
    (146 mapping mappings)
    (147 syntax)
    (148 em-syntax-rules)
    (149 syntax-rules)
    (150 record records)
    (151 bitwise)
    (152 string strings)
    (153 oset osets)
    (154 dynamic)
    (155 lazy)
    (156 is)
    (157 continuation continuations)
    (158 generator generators)
    (159 show)
    (160 vector vectors)
    (161 ubox uboxes)
    (162 comparator comparators)
    ;; 163 does not define any Scheme identifiers.
    (164 array arrays)
    (165 computation computations)
    (166 show)
    (167 okvs)
    (168 nstore)
    ;; 169 does not define any Scheme identifiers.
    (170 posix)
    (171 transducer transducers)
    (172 safe)
    (173 hook hooks)
    (174 timespec timespecs)
    (175 ascii)
    (176 version)
    (177 keyword keywords)
    (178 bitvector bitvectors)
    (179 array arrays)
    (180 json)
    (181 io)
    (182 adbmal)
    (183 fox)
    (184 record records)
    (185 string strings)
    (186 io)
    (187 alambda)
    (188 syntax)
    (189 maybe-either)
    (190 coroutine coroutines)
    (191 arity)
    (192 io)
    (193 command)
    (194 random)
    (195 box boxes)
    (196 range ranges)
    (197 chain)
    (198 foreign-status)
    (199 errno)
    (200 match)
    (201 base)  ; let, lambda, define, ...
    (202 and-let)
    (203 canvas)
    (204 match)
    (205 terminal)
    (206 auxiliary-syntax)
    (207 bytestring)
    (208 nan)
    (209 enum enums)
    (210 mv)
    (211 syntax)
    (212 alias aliases)
    (213 property properties)
    (214 flexvector flexvectors)
    (215 log logging)
    (216 sicp)
    (217 iset isets)
    (218 unicode)
    (219 define)
    ;; 220 does not define any Scheme identifiers.
    (221 generator generators)
    (222 compound compounds)
    (223 bisect bisections)
    (224 fxmapping fxmappings)
    (225 dict dictionaries)
    (226 control)
    (227 optional optionals)
    (228 comparator comparators)
    (229 tag tagging)
    (230 atomic)))

(define r6rs
  '(bytevectors
    conditions
    control
    enums
    eval
    exceptions
    files
    hashtables
    lists
    mutable-pairs
    mutable-strings
    programs
    r5rs
    sorting
    syntax-case
    unicode

    ;; (arithmetic bitwise)
    ;; (arithmetic fixnums)
    ;; (arithmetic flonums)
    arithmetic
    bitwise
    fixnums
    flonums

    ;; (io ports)
    ;; (io simple)
    io
    ports

    ;; (records inspection)
    ;; (records procedural)
    ;; (records syntactic)
    records))

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
    bytevector
    charset
    comparator
    division
    ephemeron
    fixnum
    flonum
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
