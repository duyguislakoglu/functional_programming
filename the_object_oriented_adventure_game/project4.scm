;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:;;;::;:;:
;;;   The Object-Oriented Adventure Game
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:;;;::;::;
;;;  	  	   	   
;;; dislakoglu15@ku.edu.tr     Mon Nov 20 18:12:04 2017
;;;  	  	   	   
;;; Before you start:  	  	   	   
;;; * Please read the project handout available on the course
;;;   web site first to get a basic idea about the project and the
;;;   logic behind it, then to find out the details about what
;;;   your tasks are for the rest of the project.
;;;  	  	   	   
;;; * The following code should be studied and loaded for this
;;;   project.  Please do not modify these files, put all your work in
;;;   this file.  	  	   	   
;;;  	  	   	   
;;; - objsys.scm: support for an elementary object system
;;; - objtypes.scm: a few nice object classes
;;; - setup.scm: a bizarre world constructed using these classes
;;;  	  	   	   
;;; * Plan your work with pencil and paper before starting to code.
;;;  	  	   	   
;;; While you are working:  	  	   	   
;;; * Type all your work and notes in the appropriate sections of this file.
;;; * Please do not delete any of the existing lines.
;;; * Use the procedure names given in the instructions.
;;; * Remember to frequently save your file.
;;; * Use semicolon (;) to comment out text, tests and unused code.
;;; * Remember to document your code (in this file)
;;; * Remember our collaboration policy: you can discuss with your friends but:
;;;  	  	   	   
;;;   *** NOTHING WRITTEN GETS EXCHANGED ***
;;;  	  	   	   
;;;  	  	   	   
;;; When you are done:  	  	   	   
;;; * Perform a final save and submit your work following the instructions.
;;; * Please do not make any modifications after midnight on the due date.
;;; * Please send an email comp200-common@ku.edu.tr if you have any questions.
;;; * Make sure your file loads without errors:
;;; ****************************************************************************
;;; ***  Your code should run without any syntactic errors. Projects  causing error will NOT be graded. ***
;;; ****************************************************************************
;;;  	  	   	   
;; Do NOT modify or delete the lines below.
(#%require (only racket/base random))
(load "objsys.scm")  	  	   	   
(load "objtypes.scm")  	  	   	   
(load "setup.scm")  	  	   	   
(define nil '())  	  	   	   
(define your-answer-here #f)  	  	   	   
;;;;;;;;;  	  	   	   
  	  	   	   
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:;;;::;:::
;;; PART II. Programming Assignment
;;;  	  	   	   
;;; The answers to the computer exercises in Section 5 go in the
;;; appropriate sections below.
;;;  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:;;;:::;;;
;;;;;;;;;;;;; Computer Exercise 0: Setting up ;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  	  	   	   
;;;;;;;;;;;;; CODES: ;;;;;;;;;;;;;
;;  	  	   	   
;(setup 'duygu)
;(ask screen 'DEITY-MODE #t) 
;(ask (ask me 'location) 'name)
;(ask me 'name)  	 	   	   
;(ask me 'SAY '("Hello World"))
;(ask me 'go 'east)
;(ask me 'take (thing-named 'engineering-book))
;(ask me 'drop (thing-named 'engineering-book))
;(ask me 'DIE)


;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:;;;:::;;:
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;  	  	   	   
  	  	   	   
;> (setup 'duygu)
;ready
;> (ask screen 'DEITY-MODE #t) 
;> (ask (ask me 'location) 'name)
;gym
;> (ask me 'name)  
;duygu
;> (ask me 'SAY '("Hello World"))

;At gym duygu says -- Hello World said-and-heard
;> (ask me 'go 'east)

;duygu moves from gym to library 
;suzy moves from suzy-cafe to cici-bufe 
;At cici-bufe suzy says -- Hi cici 
;At cici-bufe suzy says -- Prepare to suffer, cici ! 
;At cici-bufe cici says -- Ouch! 3 hits is more than I want! 
;At cici-bufe cici says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;cici moves from cici-bufe to heaven 
;lambda-man moves from parking-lot to eng-building 
;lambda-man moves from eng-building to soccer-field 
;comp200-student moves from student-center to great-court 
;comp200-student moves from great-court to adm-building 
;At adm-building comp200-student says -- Hi prof-yuret 
;prof-yuret moves from adm-building to dorms 
;At dorms prof-yuret says -- I take tons-of-code from dorms 
;alyssa-p-hacker moves from bookstore to suzy-cafe 
;At suzy-cafe alyssa-p-hacker says -- I take coke from suzy-cafe 
;ben-bitdiddle moves from bursar-office to registrar-office 
;ben-bitdiddle moves from registrar-office to adm-building 
;At adm-building ben-bitdiddle says -- Hi comp200-student 
;--- the-clock Tick 0 --- 
;You are in library 
;You are not holding anything. 
;You see stuff in the room: engineering-book 
;There are no other people around you. 
;The exits are in directions: west east #t
;> (ask me 'take (thing-named 'engineering-book))

;At library duygu says -- I take engineering-book from library 
;> (ask me 'drop (thing-named 'engineering-book))

;At library duygu says -- I drop engineering-book at library 

;> (ask me 'DIE)

;At library duygu says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;duygu moves from library to heaven 
;game-over-for-you-dude


  	  	   	   
;;  	  	   	   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:;:;::;;;;
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:;:;::;;;:
;;;;;; Computer Exercise 1: Understanding installation;;;;;
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:;:;::;;:;
;;  	  	   	   
;;;;;;;;;;;;; ANSWER: ;;;;;;;;;;;;;
;;  	  	   	   
  	  	   	   
;;
;; Since install has two parts as thing and autonomous person, we need to delegate which is used when
;; we have "internal" object's method.
;;


;;

;;
  	  	   	   
;;  	  	   	   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:;:;::;;::
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:;:;::;:;;
;;;;;;;;;;;; Computer Exercise 2: Who just died? ;;;;;;;;;;
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:;:;::;:;:
;;  	  	   	   
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;;  	  	   	   


;(car (names-of (ask heaven 'THINGS)))

;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:;:;::;::;
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;;  	  	   	   
  	  	   	   
;Since dead people go to heaven, we need to check last person who is added to heaven container.

  	  	   	   
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:;:;::;:::
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;  	  	   	   
  	  	   	   
;> (setup 'derya)
;ready
;> (ask (ask me 'location) 'name)
;eng-building
;> (ask me 'go 'south)
;
;derya moves from eng-building to sci-building 
;lambda-man moves from cas-building to great-court 
;lambda-man moves from great-court to student-center 
;lambda-man moves from student-center to suzy-cafe 
;At suzy-cafe lambda-man says -- Hi suzy 
;comp200-student moves from computer-club to cici-bufe 
;At cici-bufe comp200-student says -- Hi cici 
;At cici-bufe comp200-student says -- I take kofte from cici-bufe 
;prof-yuret moves from graduation-stage to great-court 
;At great-court prof-yuret says -- I try but cannot take flag-pole 
;alyssa-p-hacker moves from eng-building to sci-building 
;At sci-building alyssa-p-hacker says -- Hi derya 
;alyssa-p-hacker moves from sci-building to sos-building 
;ben-bitdiddle moves from registrar-office to bursar-office 
;--- the-clock Tick 0 --- 
;You are in sci-building 
;You are not holding anything. 
;There is no stuff in the room. 
;There are no other people around you. 
;The exits are in directions: south north #t
;> (ask me 'go 'south)
;
;derya moves from sci-building to sos-building 
;At sos-building derya says -- Hi alyssa-p-hacker 
;cici moves from cici-bufe to migros 
;At suzy-cafe suzy says -- Prepare to suffer, lambda-man ! 
;At suzy-cafe lambda-man says -- Ouch! 2 hits is more than I want! 
;lambda-man moves from suzy-cafe to student-center 
;lambda-man moves from student-center to suzy-cafe 
;At suzy-cafe lambda-man says -- Hi suzy 
;lambda-man moves from suzy-cafe to cici-bufe 
;At cici-bufe lambda-man says -- Hi comp200-student 
;At cici-bufe lambda-man says -- I take kofte from comp200-student 
;At cici-bufe comp200-student says -- I lose kofte 
;At cici-bufe comp200-student says -- Yaaaah! I am upset! 
;comp200-student moves from cici-bufe to suzy-cafe 
;At suzy-cafe comp200-student says -- Hi suzy 
;At suzy-cafe comp200-student says -- I take coke from suzy-cafe 
;prof-yuret moves from great-court to cas-building 
;alyssa-p-hacker moves from sos-building to sci-building 
;alyssa-p-hacker moves from sci-building to sos-building 
;At sos-building alyssa-p-hacker says -- Hi derya 
;ben-bitdiddle moves from bursar-office to registrar-office 
;--- the-clock Tick 1 --- 
;You are in sos-building 
;You are not holding anything. 
;There is no stuff in the room. 
;You see other people: alyssa-p-hacker 
;The exits are in directions: east south north #t
;> (ask me 'go 'south)
;
;derya moves from sos-building to cas-building 
;At cas-building derya says -- Hi prof-yuret 
;cici moves from migros to cici-bufe 
;At cici-bufe cici says -- Hi lambda-man 
;At cici-bufe cici says -- Prepare to suffer, lambda-man ! 
;At cici-bufe lambda-man says -- Ouch! 3 hits is more than I want! 
;At cici-bufe lambda-man says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;At cici-bufe lambda-man says -- I lose kofte 
;At cici-bufe lambda-man says -- Yaaaah! I am upset! 
;An earth-shattering, soul-piercing scream is heard... 
;lambda-man moves from cici-bufe to heaven 
;suzy moves from suzy-cafe to student-center 
;comp200-student moves from suzy-cafe to bookstore 
;At bookstore comp200-student says -- I take sicp from bookstore 
;prof-yuret moves from cas-building to sos-building 
;At sos-building prof-yuret says -- Hi alyssa-p-hacker 
;alyssa-p-hacker moves from sos-building to sci-building 
;ben-bitdiddle moves from registrar-office to adm-building 
;ben-bitdiddle moves from adm-building to dorms 
;--- the-clock Tick 2 --- 
;You are in cas-building 
;You are not holding anything. 
;There is no stuff in the room. 
;There are no other people around you. 
;The exits are in directions: south north #t	  	   	   

;> (last (names-of (ask heaven 'THINGS)))
;lambda-man

;;  	  	   	   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:;:;:::;;;
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:;:;:::;;:
;;;;;;;; Computer exercise 3: Having a quick look ;;;;;;;;;
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;::;;::;;;;
;;  	  	   	   
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;;  	  	   	   
  	  	   	   
;From objtypes.scm,
       ;(ask self 'LOOK-AROUND)));;I changed this line to look around.
	   	   
  	  	   	   
  	  	   	   
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;::;;::;;;:
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;;  	  	   	   
  	  	   	   
; LOOK-AROUND enables us to check the room.	   	   
  	  	   	   
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;::;;::;;:;
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;  	  	   	   

;> (setup 'duygu)
;ready
;> (ask (ask me 'location) 'name)
;suzy-cafe
;
;> (ask me 'go 'down)
;
;duygu moves from suzy-cafe to cici-bufe 
;At cici-bufe duygu says -- Hi cici 
;At cici-bufe cici says -- Prepare to suffer, duygu ! 
;At cici-bufe duygu says -- Ouch! 2 hits is more than I want! 
;suzy moves from suzy-cafe to cici-bufe 
;At cici-bufe suzy says -- Hi duygu cici 
;At cici-bufe suzy says -- Prepare to suffer, cici ! 
;At cici-bufe cici says -- Ouch! 1 hits is more than I want! 
;lambda-man moves from great-court to cas-building 
;lambda-man moves from cas-building to sos-building 
;comp200-student moves from great-court to student-center 
;comp200-student moves from student-center to great-court 
;At great-court comp200-student says -- I try but cannot take flag-pole 
;prof-yuret moves from amphitheater to sos-building 
;At sos-building prof-yuret says -- Hi lambda-man 
;alyssa-p-hacker moves from suzy-cafe to cici-bufe 
;At cici-bufe alyssa-p-hacker says -- Hi suzy duygu cici 
;alyssa-p-hacker moves from cici-bufe to divan 
;ben-bitdiddle moves from suzy-cafe to bookstore 
;ben-bitdiddle moves from bookstore to suzy-cafe 
;--- the-clock Tick 0 --- 
;You are in cici-bufe 
;You are not holding anything. 
;You see stuff in the room: kofte 
;You see other people: suzy cici 
;The exits are in directions: down north west up 

;;  	  	   	   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;::;;::;;::
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;::;;::;:;;
;;;;;; Computer exercise 4: But I'm too young to die!! ;;;;
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;::;;::;:;:
;;  	  	   	   
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;;  	  	   	   
  	  	   	   
(define (make-person name birthplace) ; symbol, location -> person
  (let ((mobile-thing-part (make-mobile-thing name birthplace))
        (container-part    (make-container))
        (health            3)  	  	   	   
        (strength          1)  	  	   	   
        (lives             3))  	  	   	   
    (lambda (message)  	  	   	   
      (case message  	  	   	   
        ((PERSON?) (lambda (self) #T))
        ((STRENGTH) (lambda (self) strength))
        ((HEALTH) (lambda (self) health))
        ((SAY)  	  	   	   
         (lambda (self list-of-stuff)
           (ask screen 'TELL-ROOM (ask self 'location)
                (append (list "At" (ask (ask self 'LOCATION) 'NAME)
                              (ask self 'NAME) "says --")
                        list-of-stuff))
           'SAID-AND-HEARD))
        ((HAVE-FIT)  	  	   	   
         (lambda (self)  	  	   	   
           (ask self 'SAY '("Yaaaah! I am upset!"))
           'I-feel-better-now))
  	  	   	   
        ((PEOPLE-AROUND)	; other people in room...
         (lambda (self)  	  	   	   
           (let* ((in-room (ask (ask self 'LOCATION) 'THINGS))
                  (people (myfilter (lambda (x) (is-a x 'PERSON?)) in-room)))
             (delq self people))))
  	  	   	   
        ((STUFF-AROUND)		; stuff (non people) in room...
         (lambda (self)  	  	   	   
           (let* ((in-room (ask (ask self 'LOCATION) 'THINGS))
                  (stuff (myfilter (lambda (x) (not (is-a x 'PERSON?))) in-room)))
             stuff)))  	  	   	   
  	  	   	   
        ((PEEK-AROUND)		; other people's stuff...
         (lambda (self)  	  	   	   
           (let ((people (ask self 'PEOPLE-AROUND)))
             (accumulate append '() (map (lambda (p) (ask p 'THINGS)) people)))))
  	  	   	   
        ((TAKE)  	  	   	   
         (lambda (self thing)  	  	   	   
           (cond ((ask self 'HAVE-THING? thing)  ; already have it
                  (ask self 'SAY (list "I am already carrying"
                                       (ask thing 'NAME)))
                  #f)  	  	   	   
                 ((or (is-a thing 'PERSON?)
                      (not (is-a thing 'MOBILE-THING?)))
                  (ask self 'SAY (list "I try but cannot take"
                                       (ask thing 'NAME)))
                  #F)  	  	   	   
                 (else  	  	   	   
                  (let ((owner (ask thing 'LOCATION)))
                    (ask self 'SAY (list "I take" (ask thing 'NAME)
                                         "from" (ask owner 'NAME)))
                    (if (is-a owner 'PERSON?)
                        (ask owner 'LOSE thing self)
                        (ask thing 'CHANGE-LOCATION self))
                    thing)))))  	  	   	   
  	  	   	   
        ((LOSE)  	  	   	   
         (lambda (self thing lose-to)
           (ask self 'SAY (list "I lose" (ask thing 'NAME)))
           (ask self 'HAVE-FIT)
           (ask thing 'CHANGE-LOCATION lose-to)))
  	  	   	   
        ((DROP)  	  	   	   
         (lambda (self thing)  	  	   	   
           (ask self 'SAY (list "I drop" (ask thing 'NAME)
                                "at" (ask (ask self 'LOCATION) 'NAME)))
           (ask thing 'CHANGE-LOCATION (ask self 'LOCATION))))
  	  	   	   
        ((GO-EXIT)  	  	   	   
         (lambda (self exit)  	  	   	   
           (ask exit 'USE self)))
  	  	   	   
        ((GO)  	  	   	   
         (lambda (self direction) ; person, symbol -> boolean
           (let ((exit (ask (ask self 'LOCATION) 'EXIT-TOWARDS direction)))
             (if (is-a exit 'EXIT?)
                 (ask self 'GO-EXIT exit)
                 (begin (ask screen 'TELL-ROOM (ask self 'LOCATION)
                             (list "No exit in" direction "direction"))
                        #F)))))
        ((SUFFER)  	  	   	   
         (lambda (self hits)  	  	   	   
           (ask self 'SAY (list "Ouch!" hits "hits is more than I want!"))
           (set! health (- health hits))
           (if (<= health 0) (ask self 'DIE))
           health))  	  	   	   
  	  	   	   
        ((DEATH-SCREAM)  	  	   	   
         (lambda (self)  	  	   	   
           (ask screen 'TELL-WORLD
                '("An earth-shattering, soul-piercing scream is heard..."))))
  	  	   	   
        ((ENTER-ROOM)  	  	   	   
         (lambda (self)  	  	   	   
           (let ((others (ask self 'PEOPLE-AROUND)))
             (if (not (null? others))
                 (ask self 'SAY (cons "Hi" (names-of others)))))
           (ask (ask self 'location) 'make-noise self)
           #T))  	  	   	   
  	  	   	   
        ;; Here is the original DIE method
     	  	   	   
        ; ((DIE)  	  	   	   
        ;  (lambda (self)  	  	   	   
        ;   (ask self 'SAY '("SHREEEEK!  I, uh, suddenly feel very faint..."))
        ;    (for-each (lambda (item) (ask self 'LOSE item (ask self 'LOCATION)))
        ; 	     (ask self 'THINGS))
        ; (ask self 'DEATH-SCREAM)
        ; (ask death-exit 'USE self)
        ; 'GAME-OVER-FOR-YOU-DUDE))
     	  	   	   
        ;; Your version goes here:
  	  	   	   
        ((DIE)

         (lambda (self)  	  	   	   
           (ask self 'SAY '("SHREEEEK!  I, uh, suddenly feel very faint..."))
           (for-each (lambda (item) (ask self 'LOSE item (ask self 'LOCATION)))
                     (ask self 'THINGS))
           (ask self 'DEATH-SCREAM)

           (if (= lives 1)
               (and (set! death-exit (make-exit nil 'heaven heaven)))
               (and (set! death-exit (make-exit nil 'birthplace birthplace)) (set! lives (- lives 1)) (set! health 3))

               )
           
           (ask death-exit 'USE self)
           ))  	  	   	   
  	  	   	   
        (else (find-method message mobile-thing-part container-part))))))
  	  	   	   
  	  	   	   
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;::;;::;::;
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;;  	  	   	   
  	  	   	   
;; I have changed the code in order to change the death-exit
;; to birthplace when we have still lives. But when we are out of lives
;; death-exit will be heaven.
   
  	  	   	   
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;::;;::;:::
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;  	  	   	   

;> (setup 'duygu)
;ready
;> (ask me 'die)
;
;At eng-building duygu says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;duygu moves from eng-building to eng-building 
;At eng-building duygu says -- Hi comp200-student #t
;>  (ask me 'die)
;
;At eng-building duygu says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;duygu moves from eng-building to eng-building 
;At eng-building duygu says -- Hi comp200-student #t
;> (ask me 'go 'north)
;
;duygu moves from eng-building to soccer-field 
;At cici-bufe cici says -- Prepare to suffer, prof-yuret ! 
;At cici-bufe prof-yuret says -- Ouch! 1 hits is more than I want! 
;lambda-man moves from dorms to adm-building 
;lambda-man moves from adm-building to great-court 
;At great-court lambda-man says -- I try but cannot take flag-pole 
;comp200-student moves from eng-building to parking-lot 
;At parking-lot comp200-student says -- I try but cannot take fancy-cars 
;prof-yuret moves from cici-bufe to computer-club 
;At computer-club prof-yuret says -- Hi alyssa-p-hacker 
;At computer-club prof-yuret says -- I take scheme-manual from computer-club 
;alyssa-p-hacker moves from computer-club to cici-bufe 
;At cici-bufe alyssa-p-hacker says -- Hi cici 
;alyssa-p-hacker moves from cici-bufe to divan 
;At divan alyssa-p-hacker says -- I take profiterol from divan 
;ben-bitdiddle moves from sci-building to sos-building 
;At sos-building ben-bitdiddle says -- I take chair-of-the-faculty from sos-building 
;--- the-clock Tick 0 --- 
;You are in soccer-field 
;You are not holding anything. 
;You see stuff in the room: football 
;There are no other people around you. 
;The exits are in directions: south #t
;> (ask me 'die)
;
;At soccer-field duygu says -- SHREEEEK!  I, uh, suddenly feel very faint... 
;An earth-shattering, soul-piercing scream is heard... 
;duygu moves from soccer-field to heaven #t
  	  	   	   
;;  	  	   	   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;::;;:::;;;
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;::;;:::;;:
;;; Computer exercise 5: Perhaps to arm oneself against a sea of .... ;;;;
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:::;::;;;;
;;  	  	   	   
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;;  	  	   	   
(define (make-weapon name location max-damage)

  (let ((mobile-part (make-mobile-thing name location)))

    (lambda (msg)  	  	   	   
      (case msg  	  	   	   
        ((WEAPON?) (lambda (self) #t))
        ((DAMAGE)  (lambda (self) max-damage))
        ((HIT)   (lambda (self hitting being-hit) (ask being-hit 'SUFFER (random-number max-damage))))
        (else (get-method msg mobile-part))

        
        ))))	  	   	   

(define (create-weapon name location max-damage)
  (create make-weapon name location max-damage))


;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:::;::;;;:
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;;  	  	   	   

;; Weapons will make the being-hit person suffer with amount-of-suffer.
  	  	   	   
  	  	   	   
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:::;::;;:;
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;  	  	   	   


;;> (setup 'duygu)
;ready
;> (create-weapon 'silah (ask me 'location) 2)
;#<procedure:...ct4/project4.scm:595:4>

;> (ask (thing-named 'silah) 'hit me me)

;At bookstore duygu says -- Ouch! 1 hits is more than I want! 2
  	  	   	   
  	  	   	   
;;  	  	   	   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:::;::;;::
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:::;::;:;;
;;;;;;;; Computer exercise 6: Good thing I'm armed and dangerous ;;;;;;;;;
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:::;::;:;:
;;  	  	   	   
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;;  	  	   	   
(define (make-violent-person name birthplace activity miserly frequency)
  (let ((autonomous-part (make-autonomous-player name birthplace activity miserly)))

    (lambda (msg)
      (case msg
        ((INSTALL) (lambda (self)
                     (ask clock 'ADD-CALLBACK
                          (make-clock-callback 'violent-act self 'VIOLENT-ACT))
                                              
                     (delegate autonomous-part self 'INSTALL)))
        
        ((ACT-VIOLENTLY) (lambda (self)
                         (let* ((stuffs-in-room (ask self 'STUFF-AROUND))
                                (people-in-room (ask self 'PEOPLE-AROUND))
                                (weapons-in-room (myfilter (lambda (x) (is-a x 'WEAPON?)) stuffs-in-room)))

                           (cond  ((and (not (null? people-in-room))  (= (random-number frequency) 1) (not (null? weapons-in-room)))
                                   (ask (pick-random  weapons-in-room) 'hit self (pick-random people-in-room))
                                   ))
                                
                                
                           )))

        (else (get-method msg autonomous-part))))))


(define (create-violent-person name birthplace activity miserly frequency)
  (create make-violent-person name birthplace activity miserly frequency))


  	  	   	   
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:::;::;::;
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;

;; Violent people act violently when randomly choosen number 'frequency' is 1
;;and there is some people and weapons in room.


	  	   	   
  	  	   	   
	  	   	   
  	  	   	   
  	  	   	   
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:::;::;:::
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;  	  	   	   

;> (setup 'duygu)
;ready
;> (create-weapon 'silah (ask me 'location) 5)
;#<procedure:...ct4/project4.scm:595:4>
;
;> (ask (thing-named 'derya) 'act-violently)
;> (ask (thing-named 'derya) 'act-violently)
;
;At library duygu says -- Ouch! 2 hits is more than I want! 1
;> 
  	  	   	   
  	  	   	   
;;  	  	   	   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:::;:::;;;
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;::;:::;:::;;:
;;; Computer exercise 7: A good hacker could defuse this situation ;;;;;;;
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;:::;;;;::;;;;
;;  	  	   	   
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;;  	  	   	   

(define (make-bomb name location amount-of-suffer)
  (let ((mobile-part (make-mobile-thing name location))
        (aware-part (make-aware-thing))
        (ready #f))
    
    (lambda (msg)
      (case msg
        ((ARM) (lambda (self) (set! ready #t)))
        ((DISARM) (lambda (self) (set! ready #f)))
        ((TRIGGER) (lambda (self) (cond (ready (ask self 'ARM)))))
        ((HEARD-NOISE) (lambda (self) (and (ask self 'TRIGGER) 'triggered)))
        ((ACTIVATE) (lambda (self)
                      (for-each (lambda (people-in-room) (ask people-in-room 'SUFFER amount-of-suffer))
                                (myfilter (lambda (x) (is-a x 'person?)) (ask (ask self 'location) 'things)))
                      
                      (ask self 'DESTROY)))
                 

        (else (find-method msg mobile-part aware-part))
      
        ))))


(define (create-bomb name location damage)
  (create make-bomb name location damage))	   	   
  	  	   	   
  	  	   	   
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;:::;;;;::;;;:
;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
;;  	  	   	   
  	  	   	   
;; The new class bomb make the people in the room suffer with the parameter 'amount-of-suffer'
;; and then destroy itself.

;;
  	  	   	   
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;:::;;;;::;;:;
;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
;;  	  	   	   
;
;> (setup 'duygu)
;ready
;> (ask me 'go 'north)
;
;duygu moves from eng-building to soccer-field 
;At soccer-field duygu says -- Hi prof-yuret 
;suzy moves from suzy-cafe to student-center 
;lambda-man moves from gym to library 
;lambda-man moves from library to great-court 
;lambda-man moves from great-court to student-center 
;At student-center lambda-man says -- Hi suzy 
;comp200-student moves from computer-club to cici-bufe 
;At cici-bufe comp200-student says -- Hi cici 
;At cici-bufe comp200-student says -- I take kofte from cici-bufe 
;prof-yuret moves from soccer-field to eng-building 
;alyssa-p-hacker moves from eng-z21 to eng-auditorium 
;ben-bitdiddle moves from migros to cici-bufe 
;At cici-bufe ben-bitdiddle says -- Hi comp200-student cici 
;At cici-bufe ben-bitdiddle says -- I take kofte from comp200-student 
;At cici-bufe comp200-student says -- I lose kofte 
;At cici-bufe comp200-student says -- Yaaaah! I am upset! 
;--- the-clock Tick 0 --- 
;You are in soccer-field 
;You are not holding anything. 
;You see stuff in the room: stick-of-chalk football 
;There are no other people around you. 
;The exits are in directions: south #t
;> (ask me 'go 'south)
;
;duygu moves from soccer-field to eng-building 
;At eng-building duygu says -- Hi prof-yuret 
;At cici-bufe cici says -- Prepare to suffer, ben-bitdiddle ! 
;At cici-bufe ben-bitdiddle says -- Ouch! 1 hits is more than I want! 
;At student-center suzy says -- Prepare to suffer, lambda-man ! 
;At student-center lambda-man says -- Ouch! 1 hits is more than I want! 
;lambda-man moves from student-center to great-court 
;lambda-man moves from great-court to library 
;comp200-student moves from cici-bufe to computer-club 
;comp200-student moves from computer-club to cici-bufe 
;At cici-bufe comp200-student says -- Hi ben-bitdiddle cici 
;At cici-bufe comp200-student says -- I take kofte from ben-bitdiddle 
;At cici-bufe ben-bitdiddle says -- I lose kofte 
;At cici-bufe ben-bitdiddle says -- Yaaaah! I am upset! 
;prof-yuret moves from eng-building to sci-building 
;alyssa-p-hacker moves from eng-auditorium to eng-z21 
;alyssa-p-hacker moves from eng-z21 to eng-building 
;At eng-building alyssa-p-hacker says -- Hi duygu 
;ben-bitdiddle moves from cici-bufe to suzy-cafe 
;ben-bitdiddle moves from suzy-cafe to student-center 
;At student-center ben-bitdiddle says -- Hi suzy 
;--- the-clock Tick 1 --- 
;You are in eng-building 
;You are not holding anything. 
;You see stuff in the room: bomb 
;You see other people: alyssa-p-hacker 
;The exits are in directions: south in west north #t
;
;> (create-bomb 'bombi (ask me 'location) 2)
;#<procedure:...ct4/project4.scm:723:4>
;> (ask (thing-named 'bombi) 'ARM)
;> (ask (thing-named 'bombi) 'ACTIVATE)
;
;At eng-building alyssa-p-hacker says -- Ouch! 2 hits is more than I want! destroyed
;> 
;  	  	   	   
;;  	  	   	   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;:::;;;;::;;::
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;:::;;;;::;:;;
;;;; Computer exercise 8: Well, maybe only if they have enough time ;;;;;;
;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;:::;;;;::;:;:
;;  	  	   	   
;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
;;  	  	   	   
(define (make-bomb-with-timer name location amount-of-suffer)
  (let ((mobile-part (make-mobile-thing name location))
        (aware-part (make-aware-thing))
        (bomb-part (make-bomb name location amount-of-suffer))
        (ready #f)
        (timer 2))

    (lambda (msg)
      (case msg
        ((BOMB-WITH-TIMER?) (lambda (self) #t))
        

        
        ((INSTALL) (lambda (self)
                     (ask clock 'ADD-CALLBACK
                          (make-clock-callback 'BOMB-WITH-TIMER self 'BOMB-WITH-TIMER))
                                              
                     (delegate mobile-part self 'INSTALL)))


        ((BOMB-WITH-TIMER) (lambda (self)
                           
                            (if (= timer 0) (begin (ask self 'ARM) (ask self 'ACTIVATE) (set! timer -1) (ask self 'emit '(we all hurt.)))
                                 (set! timer (- timer 1)))))

     
        (else (find-method msg mobile-part aware-part bomb-part))	   	   
        ))))


(define (create-bomb-with-timer name location damage)
  (create make-bomb-with-timer name location damage))


    ;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;:::;;;;::;::;
    ;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
    ;;  	  	   	   
  	  	   	   
  ;; Our bombs-with-timer will be triggered when somebody enters the room and armed and activated when timer is zero.	  	   	   
  	  	   	   
  	  	   	   
    ;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;:::;;;;::;:::
    ;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
    ;;


;(ask screen 'deity-mode #f)
;(setup 'duygu)
;(create-bomb-with-timer 'ali-the-bomb (ask me 'location) 2)
;--- the-clock Tick 0 --- 
;--- the-clock Tick 1 --- 
;At graduation-stage duygu says -- Ouch! 2 hits is more than I want! 
;At graduation-stage we all hurt. 
;--- the-clock Tick 2 --- 
;An earth-shattering, soul-piercing scream is heard... 
;--- the-clock Tick 3 --- done 
;  	  	   	   
    ;;  	  	   	   
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;:::;;;;:::;;;
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
    ;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;:::;;;;:::;;:
    ;;;;;;;;; Computer Exercise 9: Even you can change the world! ;;;;;;;;;;;;
    ;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;:::;;:;::;;;;
  	  	   	   
  	  	   	   
    ;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;:::;;:;::;;;:
    ;;;;;;;;;;;;; DESCRIPTION: ;;;;;;;;;;;;;
    ;;  	  	   	   
    ;; I have a speacial violent person ATHENA who is also a weapon with timer.	   
  	  	   	   
    ;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;:::;;:;::;;:;
    ;;;;;;;;;;;;; CODE: ;;;;;;;;;;;;;
    ;;  	  	   	   
(define (make-athena name location max-damage birthplace activity miserly frequency)
   (let ((violent-part (make-violent-person name birthplace activity miserly frequency))
         (weapon-part (make-weapon name location max-damage))
         (bang-timer 3))

     
  (lambda (msg)
      (case msg
        ((ATHENA?) (lambda (self) #t))
        
     ((INSTALL) (lambda (self)
                     (ask clock 'ADD-CALLBACK
                          (make-clock-callback 'BANG-TIMER self 'BANG-TIMER))
                                              
                     (delegate violent-part self 'INSTALL)))

        ((BANG-TIMER) (lambda (self)
                           
                            (if (= bang-timer 0) (ask self 'emit '(you shot me down,bang bang)))
                                 (set! bang-timer (- timer 1))))

     
        (else (find-method msg violent-part weapon-part))	   	   
        ))))

(define (create-athena name location max-damage birthplace activity miserly frequency)
  (create make-athena name location max-damage birthplace activity miserly frequency))
         
  
  	  	   	   
  	  	   	   
    ;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;:::;;:;::;;::
    ;;;;;;;;;;;;; EXPLANATION: ;;;;;;;;;;;;;
    ;;  	  	   	   
  	  	   	   
    	  	   	   
     ;; I have a speacial violent person ATHENA who is also a weapon with timer.	   	  	   	   
  	  	   	   
    ;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;:::;;:;::;:;;
    ;;;;;;;;;;;;; TRANSCRIPT: ;;;;;;;;;;;;;
    ;;  	  	   	   

;> (setup 'duygu)
;ready
;> (create-athena 'derya (ask me 'location) 2 (ask me 'location) 3 2 1)
;#<procedure:...ct4/project4.scm:937:2>
;> (run-clock 5)
;
;derya moves from dorms to adm-building 
;derya moves from adm-building to dorms 
;At dorms derya says -- Hi duygu 
;At dorms derya says -- I take tons-of-code from dorms 
;  	  	   	   
  	  	   	   
    ;;  	  	   	   
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;:::;;:;::;:;:
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
    ;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;:::;;:;::;::;
    ;# DO NOT FORGET TO SUBMIT YOUR WORK BEFORE THE DEADLINE!         #
    ;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;:::;;:;::;:::
    ;# GOOD LUCK!                                                     #
    ;;;;;;;::;;:;;::;:;;::::;;::::;::;;::;;;;:::;:;::::;::::::;;:::::;::;;:::;:;:;::;;;:;::;:;:;::;;;:;:::;;:;:::;;:;:::;;;
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
  	  	   	   
    