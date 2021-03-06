#!/usr/bin/env gxi-build-script
;; -*- Gerbil -*-

(import :std/build-script)

(defbuild-script
  `(;; standard scheme
    "scheme/stubs"
    "scheme/base-etc"
    "scheme/base-vectors"
    (gxc: "scheme/base-ports" "-e" "(include \"~~lib/_gambit#.scm\")")
    "scheme/base-impl"
    "scheme/base"
    "scheme/case-lambda"
    "scheme/char-impl"
    "scheme/char"
    "scheme/complex"
    "scheme/cxr"
    "scheme/eval-impl"
    "scheme/eval"
    "scheme/file"
    "scheme/inexact-impl"
    "scheme/inexact"
    "scheme/lazy-impl"
    "scheme/lazy"
    "scheme/load-impl"
    "scheme/load"
    "scheme/process-context-impl"
    "scheme/process-context"
    "scheme/read"
    "scheme/repl-impl"
    "scheme/repl"
    ,@(cond-expand
        (,(> (system-version) 409001) '())
        (else '("scheme/time-impl")))
    "scheme/time"
    "scheme/write-impl"
    "scheme/write"
    "scheme/r5rs"
    "scheme/r5rs-null"
    "scheme/r7rs"
    ;; gerbil variants
    (gxc: "gerbil/polydactyl" "-e" "(include \"~~lib/_gambit#.scm\")")
    ))

;; necessary because gxi-build-script doesn't autoinvoke main
(main)
