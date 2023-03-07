(define (problem t3-problem)
  (:domain t3-domain)
  (:objects
    room1 - room
    storage1 - storage
    reception1 - space
  )
  (:init
    (at reception1)
  )

  (:goal
    (clean room1)
   )
)