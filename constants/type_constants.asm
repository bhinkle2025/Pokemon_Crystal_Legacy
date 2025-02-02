; TypeNames indexes (see data/types/names.asm)
; also used in:
; - PokedexTypeSearchConversionTable (see data/types/search_types.asm)
; - PokedexTypeSearchStrings (see data/types/search_strings.asm)
; - TypeMatchups (see data/types/type_matchups.asm)
; - TypeBoostItems (see data/types/type_boost_items.asm)
	const_def

PHYSICAL EQU const_value
	const NORMAL
	const FIGHTING
	const FLYING
	const POISON
	const GROUND
	const ROCK
	const BIRD
	const BUG
	const GHOST ; Ghost is made special whenever psysical/special checks are made, this preserves trade compatability
	const STEEL

UNUSED_TYPES EQU const_value
	const_next 19
	const CURSE_TYPE
UNUSED_TYPES_END EQU const_value

SPECIAL EQU const_value
	const FIRE
	const WATER
	const GRASS
	const ELECTRIC
	const PSYCHIC_TYPE
	const ICE
	const DRAGON
	const DARK ; Dark is made physical whenever psysical/special checks are made, this preserves trade compatability
	const FAIRY
TYPES_END EQU const_value

NUM_TYPES EQU TYPES_END + UNUSED_TYPES - UNUSED_TYPES_END - 1 ; discount BIRD

POKEDEX_TYPE_STRING_LENGTH EQU 9
