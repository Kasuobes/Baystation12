/obj/item/attackby(var/obj/item/thing, var/mob/user)
	for(var/decl/crafting_stage/initial_stage in SSfabrication.find_crafting_recipes(type))
		if(initial_stage.can_begin_with(src) && initial_stage.progress_to(thing, user, src))
			return new /obj/item/crafting_holder(get_turf(src), initial_stage, src, thing, user)
	. = ..()
