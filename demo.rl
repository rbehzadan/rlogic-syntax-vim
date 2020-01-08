; (this fact is disabled momentarily .)
;; this line is a comment

;; syntax error (out side of parentheses):
this is ?R not really a test!

;; simple facts:
(this is a test)
(this is a simple fact without any variables)
(this is another one, but with ?R as a variable inside it .)

;; Reza is older than Ali:
(isOlderThan Reza Ali)
;; same thing as above:
(> (ageOf Reza) (ageOf Ali))
;; same thing as above:
(< (birthDayOf Reza) (birthDayOf Ali))

(iff
  (isOlderThan ?X ?Y)
  (> (ageOf ?X) (ageOf ?Y)))

(iff
  (isOlderThan ?X ?Y)
  (> (ageOf ?X) (ageOf ?Y)))

(if
  (and 
    (> (ageOf ?X) (ageOf ?Y))
    (isBrotherOf(?X ?Y)))
  (isOlderBrotherOf ?X ?Y))

(if
  (> (ageOf ?X) (ageOf ?Y))
  (isOlderThan ?X ?Y))
