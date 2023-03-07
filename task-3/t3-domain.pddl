(define (domain t3-domain)
    (:requirements :typing)
    (:types space - object
		room storage - space)
    (:predicates  (prepared ?r - room)
		(haveHoover)
        (at ?s - space)
		(clean ?r - room)
    )

	(:action move
        :parameters (?x - space ?y - space)
        :precondition  (at ?x)
        :effect (and (at ?y)
			(not (at ?x))
		)
    )

	(:action getHoover
        :parameters (?s - storage)
        :precondition  (at ?s)
        :effect (haveHoover)
    )

    (:action cleanRoom
	    :parameters (?r - room)
	    :precondition (and (at ?r)
			(haveHoover)
		)
	    :effect (clean ?r)
    )
)