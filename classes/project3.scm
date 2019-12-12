;;; dislakoglu15@ku.edu.tr    Thu Nov  2 11:02:27 2017
;;;  	  	   	   
;;; Comp200 Project 3  	  	   	   
;;;  	  	   	   
;;; Due November ?, 2017  	  	   	   
;;;  	  	   	   
;;;  	  	   	   
;;; Before you start:  	  	   	   
;;;  	  	   	   
;;; * Please read the detailed instructions for this project from the
;;; file project3.pdf available in the course website.
;;;  	  	   	   
;;;  	  	   	   
;;; While you are working:  	  	   	   
;;; * Type all your work and notes in the appropriate sections of this file.
;;; * Please do not delete any of the existing lines.
;;; * Use the procedure names given in the instructions.
;;; * Remember to frequently save your file.
;;; * Use semicolon (;) to comment out text, tests and unused code.
;;; * Remember to document your code.
;;; * Remember our collaboration policy: you can discuss with your friends but:
;;;  	  	   	   
;;;   *** NOTHING WRITTEN GETS EXCHANGED ***
;;;  	  	   	   
;;; !!! Do that before submitting the project:
;;;  When you are done with the project3.scm, please click on the "file" button at
;;;  the upper left side, go to the "Save Other" section and click on the
;;; "Save Definitions As Text..." item. It is important for you to do that before the submission.
;;;  Don't worry, this won't change anything in your code; but is required for grading.
;;;  	  	   	   
;;;  	  	   	   
;;; When you are done:  	  	   	   
;;;  	  	   	   
;;; * Perform a final save and submit your work following the instructions.
;;; * Please do not make any modifications after midnight on the due date.
;;; * Please send an email comp200@ku.edu.tr if you have any questions.
;;; * Make sure your file loads without errors:
;;;  	  	   	   
;;; *** IF LOADING GIVES ERRORS YOUR PROJECT WILL NOT BE GRADED ***
;;;  	  	   	   
;;; Before the definition of each procedure, please write a description
;;; about what the procedure does and what its input and output should
;;; be, making sure the lines are commented out with semi-colons.
;;;  	  	   	   
;;; Code for this project: "databases.scm". You should read this file
;;; since you will use the procedures defined in it.
;;;  	  	   	   
;;;   Completing assignment by using Racket/DrRacket
;;;   By default DrRacket does not allow you to redefine primitives and
;;;   also load external files via load procedure. To fix these problems,
;;;   in the "Choose Language" panel, select R5RS language in "Other
;;;   Languages" section, click on "Show Details" and uncheck "Disallow
;;;   redefinition of initial bindings".
  	  	   	   
;;; The following lines are necessary, please do not delete:
  	  	   	   
(define your-answer-here -1)  	  	   	   
(load "databases.scm")  	  	   	   
  	  	   	   
;;; Let's start 0_0  	  	   	   
;;; problem 1 ;;;  	  	   	   
  	  	   	   
;; your code should have the following general form


(define example-table
  (make-empty-table (list (make-column 'name 'symbol)
                          (make-column 'major 'number)))
  )

(table-insert! (list 'ben 6) example-table)	   	   
(table-insert! (list 'jen 3) example-table)
(table-insert! (list 'amy 12) example-table)
(table-insert! (list 'kim 12) example-table)
(table-insert! (list 'alex 6) example-table)

  	  	   	   
;; test cases  	  	   	   
;(table-display example-table)
  	  	   	   
;;; problem 2 ;;;  	  	   	   
(define (table-insert-all! lst table)
  (if (null? lst)
      '()
      (cons (table-insert! (car lst) table) (table-insert-all! (cdr lst) table))
      ))	   	   
;; test cases  	  	   	   
  	  	   	   
;(define books (make-empty-table
; 	       (list (make-column 'title 'symbol)
; 		     (make-column 'author 'symbol)
; 		     (make-column 'rating 'number))))
  	  	   	   
  	  	   	   
;(table-insert-all! '((sicp abelson-sussman 8)
; 		     (return-of-the-king jrr-tolkien 9)
; 		     (treatment-of-subordinates darth-vader 4)
; 		     (project-grading tom 2)
; 		     (all-things-stata frank-gehry 5)
; 		     (biting-the-hand-that-feeds-me my-cat 1))
;		   books)

; (table-display books)  	  	   	   
  	  	   	   
;;; problem 3 ;;;  	  	   	   
;; Hint: Writing (filter predicate lst) might be helpful


(define (table-select selector table)
  (make-table (get-table-columns table) (filter selector (get-table-data table))))	  	   	   
  	  	   	   
;; test cases  	  	   	   
  	  	   	   
;(display "Testing Problem 3\n")
; (table-display  	  	   	   
;  (table-select  	  	   	   
;   (lambda (row)  	  	   	   
;    (> (get 'rating row) 4))
;  books))  	  	   	   
  	  	   	   
;;; problem 4 ;;;  	  	   	   
  	  	   	   
;; Hint: Be careful about the comparator operator of the corresponding
;; row.  Writing a (get-column-type row column-name) might be helpful.

(define (get-column-type row columnname)
  (cdaar (filter (lambda (a) (equal? columnname (column-name (car a)))) (cdr row)))
)


(define (comparator type)
  (cond ((equal? type '(number)) <)
        ((equal? type '(symbol)) symbol<?)
        ((equal? type '(string)) string<?)
        ((equal? type '(day)) day-comparator)
        ((equal? type '(gender)) gender-comparator)
        ((equal? type '(race)) race-comparator)))

(define (table-order-by column table)
 (define new-rows (sort (lambda (a b) ((comparator (get-column-type (car (get-table-data table)) column)) (get column a) (get column b))) (get-table-data table)))
 (make-table (get-table-columns table) new-rows)
)
  
;; test cases  	  	   	   
;;(display "Testing Problem 4\n")
;(table-display  	  	   	   
; (table-order-by 'rating books))
 	  	   	   
;;  	  	   	   
;(table-display  	  	   	   
;  (table-order-by 'title books)
 ;)  	  	   	   
  	  	   	   
;;; problem 5 ;;;  	  	   	   
  	  	   	   
(define (table-delete! pred table)
  
  (define (not-pred row) (if (pred row)
                       #f
                       #t))
  

  (change-table-data! table (filter not-pred (get-table-data table))))
  
	  	   	   
  	  	   	   
;; test cases  	  	   	   
 ;(display "Testing Problem 5\n")
 ;(table-delete!  	  	   	   
 ; (lambda (row)  	  	   	   
 ;  (eq? (get 'author row) 'my-cat))
 ;books)  	  	   	   
  	  	   	   
 ;(table-display books)  	  	   	   
  	  	   	   
;;; problem 6 ;;;

(define (table-update! pred column proc table)
  

  (define updated
    (map (lambda (row)
           (row-col-replace row column (proc row))
           )
         (filter pred (get-table-data table))))
  
  (define (error-free-updated updated)
    (map (lambda (row) (if (row-type-check row)
                           row
                           (error "The value does not match with the column type")
                           ))
         updated))
  
  (table-delete! pred table)
  
  (change-table-data! table   (append (get-table-data table) (error-free-updated updated)))

  )

  	  	   	   
;; test cases  	  	   	   
  	  	   	   
; (display "Testing Problem 6\n")
 ;(table-update! (lambda (row) (or (eq? (get 'name row) 'amy) (eq? (get 'name row) 'alex)))
  ;             'major  	  	   	   
   ;            (lambda (row) '9)
    ;           example-table)
 ;(table-display example-table)
  	  	   	   
;;; problem 7 ;;;  	  	   	   
  	  	   	   
(define *type-table*  	  	   	   
  	   	   
  (list  	  	   	   
        (list 'number number? <)
        (list 'string string? string<?))
)	  	   	   
 	   	   	   
(define example-table2  	  	   	   

  (make-empty-table (list (make-column 'name 'string)
                          (make-column 'major 'number)
                          ))
 )
 
;; test cases  	  	   	   
; (display "Testing Problem 7\n")
; (table-insert! '("jen" 3) example-table2)
; (table-insert! '("ben" 6) example-table2)
; (table-insert! '("alex" 6) example-table2)
; (table-insert! '("amy" 12) example-table2)
; (table-insert! '("kim" 13) example-table2)
  	  	   	   
  	  	   	   
; (table-display example-table2)
; (display "\nordered example-table2\n")
; (table-display  	  	   	   
; (table-order-by 'name example-table2)
; )  	  	   	   
  	  	   	   
;;; problem 8 ;;;  	  	   	   
  	  	   	   
;; Hint: Writing these two procedures might be helpful (contains? lst
;; x) returns true if x in the lst and (get-pos lst x) returns the
;; position of x if it is in the list.
;; Ex: (get-pos '(1 2 3 4) 2) => 2
;;     (get-pos '(1 2 3 4) 5) => 0

(define (contains? lst x)
  
      (cond ((null? lst) #f)
            ((equal? x (car lst)) #t)
            (else (contains? (cdr lst) x))))


(define (get-pos lst x)
    (if (equal? x (car lst))
        0
        (+ (get-pos  (cdr lst) x) 1)))

(define (make-enum-checker lst)
  (lambda (a)
    (if (contains? lst a)
        #t
        #f
    )))

(define (make-enum-comparator lst)
  (lambda (x y)
    (if (< (get-pos lst x) (get-pos lst y))
        #t
        #f
        )))

(define *days* '(sunday monday tuesday Wednesday thursday friday saturday))
(define day-checker (make-enum-checker *days*))
(define day-comparator (make-enum-comparator *days*))
  	  	   	   
;; test cases  	  	   	   
; (display "Testing Problem 8\n")
; (day-checker 'monday)   ;=> #t
; (day-checker 7)         ;=> #f
; (day-comparator 'monday 'tuesday)   ;=> #t (monday is "less than" tuesday)
; (day-comparator 'friday 'sunday)    ;=> #f (sunday is before friday)
  	  	   	   
  	  	   	   
(define *type-table*  	  	   	   
	  	   	   
  	   	   
  (list  	  	   	   
        (list 'number number? <)
        (list 'string string? string<?)
        (list 'day day-checker day-comparator))
 	  	   	   
)  	  	   	   
  	  	   	   
;(define example-table3  	  	   	   
;   (make-empty-table  	  	   	   
;    (list (make-column 'name 'string)
 ;         (make-column 'date 'day)
;          (make-column 'major 'number)))
 ;   )  	  	   	   
  	  	   	   
; (table-insert! '("jen" monday 3) example-table3)
; (table-insert! '("ben" sunday 6) example-table3)
; (table-insert! '("alex" friday 6) example-table3)
; (table-insert! '("amy" tuesday 1) example-table3)
; (table-insert! '("kim" saturday 2) example-table3)
  	  	   	   
;(table-display example-table3)
; (display "\nordered example-table3\n")
; (table-display  	  	   	   
;  (table-order-by 'date example-table3)
; )  	  	   	   
  	  	   	   
;;; Problem 9  	  	   	   
;; Hint: Similar with Problem 8
(define *gender* '(male female))	  	   	   

(define gender-checker
  (make-enum-checker *gender*))

(define gender-comparator  	  	   	   
(make-enum-comparator *gender*)  	  	   	   
)


(define *race* '(white black red))
  	  	   	   
(define race-checker  	  	   	   
(make-enum-checker *race*)	  	   	   
)  	  	   	   
(define race-comparator  	  	   	   
(make-enum-comparator *race*)	  	   	   
)  	  	   	   
  	  	   	   
(define *type-table*  	  	   	     	   	   
  (list  	  	   	   
        (list 'number number? <)
        (list 'string string? string<?)
        (list 'day day-checker day-comparator)
        (list 'gender gender-checker gender-comparator)
        (list 'race race-checker race-comparator)
))  	  	   	   
  	  	   	   
  	  	   	   
;;; Problem 10  	  	   	   
  	  	   	   
(define person-table  	  	   	   
 (make-empty-table (list (make-column 'name 'string)
                         (make-column 'race 'race)
                         (make-column 'gender 'gender)
                         (make-column 'birthyear 'number))) 	  	   	   
)


;;; tests

; (display "Testing Problem 10\n")
; (table-insert! '("jen" white female 1983) person-table)
; (table-insert! '("axe" black male 1982) person-table)
;; My persons:
; (table-insert! '("duygu" white female 1996) person-table)
; (table-insert! '("sezen" black male 2000) person-table)

 ;(table-display person-table)

  	  	   	   
  	  	   	   
;;; Problem 11  	  	   	   
  	  	   	   
(define (make-person name race gender birthyear)

  (table-insert! (list name race gender birthyear) person-table)
  
  name)  	  	   	   
  	  	   	   
;; test cases  	  	   	   
  	  	   	   
; (display "Testing Problem 11\n")
 	  	   	   
; (define p1 (make-person "Alex" 'white 'male 1983))
; (define p2 (make-person "Clark" 'black 'male 1982))
;My people
; (define p4 (make-person "Man" 'black 'male 1950))
; (define p3 (make-person "Super" 'black 'female 1900))


; (table-display person-table)
  	  	   	   
;;; Note that you might delete the test people you created by typing
;(table-delete! (lambda (x) #t) person-table)
;;; And you can verify the removal operation by typing
;(display "\nDeleted Person Table\n")
;(table-display person-table)
;;;  	  	   	   
;;; Note that, you might need to create test people again in later questions
; (define p1 (make-person "Alex" 'white 'male 1983))
 ;(define p2 (make-person "Clark" 'black 'male 1982))

;;; Problem 12  	  	   	   
  	  	   	   
(define (person-name person) person)
  	  	   	   
(define (lookup-person-row person)

  (define data (filter (lambda (row) (equal? (get 'name row) (person-name person)))
                      (get-table-data person-table)
                      ))
  
    (if (equal? data '())  	  	   	   
        (error "Bogus name.")	  	   	   
        (car data)))
      	  	   	   
  	  	   	   
(define (person-race person)  	  	   	   
  (get 'race (lookup-person-row person)))
  	  	   	   
(define (person-gender person)  	  	   	   
  (get 'gender (lookup-person-row person)))
  	  	   	   
(define (person-birthyear person)
  (get 'birthyear (lookup-person-row person)))
  	  	   	   
(define (person-age person)  	  	   	   
 ;returns an approximation to the person's age in years
 (let ((*current-year* 2017))  	  	   	   
   (- *current-year* (person-birthyear person))))
  	  	   	   
;; test cases  	  	   	   
;;; Note that, you can create test people to check the selectors.
; (display "Testing Problem 12\n")
; (lookup-person-row p1)  	  	   	   
; (person-race p1)  	  	   	   
;(person-gender p1)  	  	   	   
; (person-birthyear p1)  	  	   	   
 ;(person-age p1)  	  	   	   
; (lookup-person-row "Sneijder")

;;My Tests
;(define p3 (make-person "Duygu" 'white 'female 1996))
 ;(person-birthyear p3)
; (person-age p3) 
  	  	   	   
;;; Problem 13  	  	   	   
  	  	   	   
(define (update-person-row! person colname newvalue)
  (table-update! (lambda (row) (equal? (get 'name row) person)) colname (lambda (row) newvalue) person-table)
  )  	  	   	   
  	  	   	   
;(define (set-person-name! person newname)
;  (update-person-row! person 'name newname))
  	  	   	   
(define (set-person-race! person newrace)
  (update-person-row! person 'race newrace))
  	  	   	   
(define (set-person-gender! person newgender)
  (update-person-row! person 'gender newgender))
  	  	   	   
(define (set-person-birthyear! person newbirthyear)
  (update-person-row! person 'birthyear newbirthyear))
  	  	   	   
;; QUESTION What happens? Why? Comments?
;Since we set new name for table, we cannot access it with calling with old name. It does not exist anymore that's why we get an error.  

  	  	   	   
;;; test cases  	  	   	   
  	  	   	   
; (display "Testing Problem 13\n")
; (define alyssa (make-person "alyssa-p-hacker" 'black 'female 1978))
; (set-person-name! alyssa "alyssa-p-hacker-bitdiddle")  ; got married!
; (table-display person-table)
; (person-name alyssa)  	  	   	   
; (person-race alyssa)  	  	   	   
  	  	   	   
;;; Note: after running the test cases above, please comment out them again.
  	  	   	   
;;; Problem 14  	  	   	   
  	  	   	   
(define life-table  	  	   	   
  (make-empty-table (list (make-column 'year 'number)
                          (make-column 'all-all 'number)
                          (make-column 'all-male 'number)
                          (make-column 'all-female 'number)
                          (make-column 'white-all 'number)
                          (make-column 'white-male 'number)
                          (make-column 'white-female 'number)
                          (make-column 'black-all 'number)
                          (make-column 'black-male 'number)
                          (make-column 'black-female 'number)
                          )) 	  	   	   
)  	  	   	   
  	  	   	   
;(table-insert-all! life-expect-data life-table)
  	  	   	   
 ;(display "Selecting 1950\n")
 ;(table-display  	  	   	   
  ;(table-select  	  	   	   
  ;(lambda (row)  	   	   
   ;(= (get 'year row) 1950))
  ;life-table))  	  	   	   
  	  	   	   
;;; Problem 15  	  	   	   
(define (nth n lst)
  (if (or (< n 0) (> n (length lst)) )
    (error "Error.")
    (if (equal? n 0)
      (car lst)
      (nth (- n 1) (cdr lst)))))

  	  	   	   



(define (convert-lifetable lst)
;; Converts the data to the (year race gender expected) format
  (define new (list '()))
  
  (define (helper lst converted)
    (if (null? lst)
        converted
        (helper (cdr lst) (append (list
                            (list (caar lst) 'white 'male (nth 5 (car lst)))
                            (list (caar lst) 'white 'female (nth 6 (car lst)))
                            (list (caar lst) 'black 'male (nth 8 (car lst)))
                            (list (caar lst) 'black 'female (nth 9 (car lst)))) converted))))
  (define empty '())
  (helper lst empty)

  

    )
	  	   	   
;; test cases


(define life-expect-data-new (convert-lifetable life-expect-data))

(define life-table-new  	  	   	   
   (make-empty-table  	  	   	   
   (list (make-column 'year 'number)
         (make-column 'race 'race)
         (make-column 'gender 'gender)
         (make-column 'expected 'number)
   )))

(table-insert-all! life-expect-data-new life-table-new)
(display "Selecting 1950 from new data\n")
(table-display  	  	   	   
(table-select  	  	   	   
 (lambda (row)  	  	   	   
  (= (get 'year row) 1950))  	  	   	   
  life-table-new))  	  	   	   
  	  	   	   
  	  	   	   
;;; Problem 16  	  	   	   
;(display "\nTesting Problem 16\n")


(define problem16-table
  (table-select (lambda (row) (and (equal? 'black (get 'race row)) (equal? 'female (get 'gender row)) (and (<= (get 'year row) 1959) (>= (get 'year row) 1950)))) life-table-new)
)




  	  	   	   
;;; QUESTION Was life expectancy for white women steadily increasing
;;; in this decade?  	  	   	   
; No. Consider 1956-1957, it is decreasing in this period of time. 	  	   	   
  	   	   	   
;(table-display  	  	   	   
;  (table-order-by 'expected problem16-table)
;)  	  	   	   
  	  	   	   
;; Paste the output of Problem 16 for black female
;; between 1950 and 1959  	  	   	   
;;
;;;;ORDERED EXPECTED YEAR;;;;
;year	race	gender	expected	
;1950	black	female	62.9	
;1951	black	female	63.4	
;1952	black	female	63.8	
;1953	black	female	64.5	
;1957	black	female	65.5	
;1958	black	female	65.8	
;1954	black	female	65.9	
;1955	black	female	66.1	
;1956	black	female	66.1	
;1959	black	female	66.5

;;;;NOT ORDERED;;;;
;year	race	gender	expected	
;1959	black	female	66.5	
;1958	black	female	65.8	
;1957	black	female	65.5	
;1956	black	female	66.1	
;1955	black	female	66.1	
;1954	black	female	65.9	
;1953	black	female	64.5	
;1952	black	female	63.8	
;1951	black	female	63.4	
;1950	black	female	62.9
  	  	   	   
;;; Problem 17  	  	   	   
  	  	   	   
;(define p3 (make-person "GeorgeBest" 'white 'female 1987))
;(define p4 (make-person "Lizarazu" 'white 'male 1940))
  	  	   	   
;(define (expected-years person)

;(define desired-row (car (get-table-data (table-select
                                       ;   (lambda (row) (and (equal? (get 'race row) (person-race person)) (equal? (get 'gender row) (person-gender person)) (equal? (get 'birthyear row) (person-birthyear person))))
                                        ;  life-table-new))))
;(define expected (rlookup 'expected desired-row))

 ; (- expected
   ; (- 2017 (person-birthyear person)))
 ; )


    	  	   	   
;; test cases  	  	   	   
;(display "Testing problem 17")  	  	   	   
;(expected-years p3)  	  	   	   
;(expected-years p4)  	  	   	   
