;; TODO: add more examples

; (this fact is disabled momentarily .)
;; this line is a comment

;; syntax error (out side of parentheses):
; this ?R is not really a test!

;; simple facts:
(this is a test)
(this is a simple fact without any variables)
(this is another one, but with ?R as a variable inside it .)

;; Robb is older than Jon:
(isOlderThan Robb Jon)
;; same thing as above:
(> (ageOf Robb) (ageOf Jon))
;; same thing as above:
(< (birthDayOf Robb) (birthDayOf Jon))

(isTransitiveRelation isOlderThan)
(isASymmetricRelation isOlderThan)
(isSubclassOf isOlderThan isGreaterThan)

(isSubclassOf isGreaterThan isBinaryRelation)
(isInverseOf isGreaterThan isLessThanOrEqualTo)
(isTransitiveRelation isGreaterThan)
(isASymmetricRelation isGreaterThan)

(iff
  (isOlderThan ?X ?Y)
  (> (ageOf ?X) (ageOf ?Y))
)

(iff
  (isOlderThan ?X ?Y)
  (and 
    (> (ageOf ?X) (ageOf ?Y))
    (< (birthDayOf ?X) (birthDayOf ?Y))
  )
)

(if
  (isOlderThan ?X ?Y)
  (assert
    (> (ageOf ?X) (ageOf ?Y))
    (< (birthDayOf ?X) (birthDayOf ?Y))
  )
)

(if
  (> (ageOf ?X) (ageOf ?Y))
  (assert
    (isOlderThan ?X ?Y)
  )
)


(if
  (and 
    (> (ageOf ?X) (ageOf ?Y))
    (isBrotherOf ?X ?Y))
  (isOlderBrotherOf ?X ?Y))

(if
  (> (ageOf ?X) (ageOf ?Y))
  (isOlderThan ?X ?Y))
