//traits with no real impact that can be taken freely
//MAKE SURE THESE DO NOT MAJORLY IMPACT GAMEPLAY. those should be positive or negative traits.

/datum/trait/no_taste
	name = "Ageusia"
	desc = "You can't taste anything! Toxic food will still poison you."
	value = 0
	mob_trait = TRAIT_AGEUSIA
	gain_text = "<span class='notice'>You can't taste anything!</span>"
	lose_text = "<span class='notice'>You can taste again!</span>"
	medical_record_text = "Patient suffers from ageusia and is incapable of tasting food or reagents."



/datum/trait/deviant_tastes
	name = "Deviant Tastes"
	desc = "You dislike food that most people enjoy, and find delicious what they don't."
	value = 0
	gain_text = "<span class='notice'>You start craving something that tastes strange.</span>"
	lose_text = "<span class='notice'>You feel like eating normal food again.</span>"

/datum/trait/deviant_tastes/add()
	var/mob/living/carbon/human/H = trait_holder
	var/datum/species/species = H.dna.species
	var/liked = species.liked_food
	species.liked_food = species.disliked_food
	species.disliked_food = liked

/datum/trait/deviant_tastes/remove()
	var/mob/living/carbon/human/H = trait_holder
	var/datum/species/species = H.dna.species
	species.liked_food = initial(species.liked_food)
	species.disliked_food = initial(species.disliked_food)
