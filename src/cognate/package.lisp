;;; Copyright (c) 2014, James M. Lawrence. All rights reserved.
;;;
;;; Redistribution and use in source and binary forms, with or without
;;; modification, are permitted provided that the following conditions
;;; are met:
;;;
;;;     * Redistributions of source code must retain the above copyright
;;;       notice, this list of conditions and the following disclaimer.
;;;
;;;     * Redistributions in binary form must reproduce the above
;;;       copyright notice, this list of conditions and the following
;;;       disclaimer in the documentation and/or other materials provided
;;;       with the distribution.
;;;
;;;     * Neither the name of the project nor the names of its
;;;       contributors may be used to endorse or promote products derived
;;;       from this software without specific prior written permission.
;;;
;;; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
;;; "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
;;; LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
;;; A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
;;; HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
;;; SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
;;; LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
;;; DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
;;; THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
;;; (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
;;; OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

(defpackage #:lparallel.cognate
  (:documentation
   "Parallelized versions of some Common Lisp functions.")
  (:use #:cl
        #:lparallel.util
        #:lparallel.kernel
        #:lparallel.kernel-util
        #:lparallel.promise
        #:lparallel.defpun
        #:lparallel.slet)
  (:import-from #:alexandria
                #:remove-from-plist
                #:simple-style-warning)
  (:import-from #:lparallel.slet
                #:parse-bindings)
  (:import-from #:trivial-cltl2
                #:declaration-information)
  (:export #:pand
           #:pcount
           #:pcount-if
           #:pcount-if-not
           #:pdotimes
           #:pevery
           #:pfind
           #:pfind-if
           #:pfind-if-not
           #:pfuncall
           #:plet
           #:plet-if
           #:pmap
           #:pmapc
           #:pmapcan
           #:pmapcar
           #:pmapcon
           #:pmap-into
           #:pmapl
           #:pmaplist
           #:pmaplist-into
           #:pmap-reduce
           #:pnotany
           #:pnotevery
           #:por
           #:preduce
           #:preduce-partial
           #:premove
           #:premove-if
           #:premove-if-not
           #:psome
           #:psort
           #:psort*
           #:slet))

(in-package #:lparallel.cognate)
