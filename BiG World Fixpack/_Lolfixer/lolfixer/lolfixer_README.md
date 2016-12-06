# Lolfixer
*pleasuring DLTCEP since 2011*
### About the mod:

The Lolfixer is supposed to do fixups and cleanups in your BGII-ToB game. I'll detail exactly what this does with examples below.

Things to note though:
- The lolfixer always tries to never change stuff that requires an actual choice in the way to go about fixing it. It changes stuff that are KNOWN to cause problems and will never do something that could've been fixed in another better way. (yes I know 'better' is subjective)
- The lolfixer always tries to preserve data (which extends to content) so it will never actual REMOVE something from anything unless there's a copy of the same thing (in case of items and effects) or cause any change that might prevent access to content in anything

If you find a case where the above aren't true, I'm usually a really nice guy so would love to either change/remove whatever's bothersome (or make it optional and separate it into a new component :P)

Discuss and diss the mod [here](http://www.shsforums.net/topic/52508-lolfixer-thread/) :)

The lolfixer has the following components divided into 5 major groups based on the 5 major patchable file types in the BGII-ToB engine: (Area, Creature, Item, Spell, Store)

The *MAJESTIC Fixer* components are the ones that have the most obvious fixes. The others can be considered tweaks even though they do try to fix stuff.

### Area Stuff

#### MAJESTIC Area Fixer

- assigns unassigned & missing area scripts to areas
- invisible containers with items have their items dropped on the ground (prevents missing items)
- invalid items in containers are removed or converted to their closest equivalent if tutu or typo (prevents invisible items)
- missing ambients are removed (prevents stuttering)
- missing actors are removed (prevents crashes)
- actors referencing CREs don't have attached CREs set
- actors with removal timer = 0 are not removed (prevents missing NPCs)
- invalid/missing CREs in spawn triggers are removed (prevents crashes)
- invalid/missing CREs in rest spawn triggers are removed (prevents crashes on resting) 

### Creature Stuff

#### Creature Resource Fixer

- restructures CREs for following creature components to not fail
- soundset shifting for idle noises if relevant ToBEx component is installed
- fixes known error in infamous SENDRO03.CRE from BP if not already fixed

#### Inventory Unborker

- Adds non-critical items found in the creature's inventory table but not actually referenced by the creature's inventory into the creature's inventory
- Required for component #3 to work properly

#### Inventory Cleaner

- removes invalid items from the creatures inventory or tries to fix them if tutu or typo

#### Inventory Overhauler

- removes items from invalid slots and places them in inventory (eg: armor in weapons slot) and sets them to not-pickpocketable
- removes invalid combinations of items. Eg: 2-handed sword with shield etc (prevents crashes)
- equips any armor, weapon, helmet found in the inventory on the NPC if space allows it

#### MAJESTIC Creature Fixer

- assigns the Gibberling animation to creatures without a valid animation from the ANIMATE.IDS (prevents crashes)
- removes missing scripts from creatures or fixes them if typo
- removes missing dialogue from creatures or assigns unassigned dialogue if CRE-name matches DLG-name
- fixes wrong spell slots assignments. Eg: Minor Heal in the mage spell book
- fixes wrong spell levels. Eg: Horrid Wilting at level 1
- removes spells with invali levels. Eg: any level 9000 spell (prevents crashes)
- removes missing known/memorized spells from spellbook

#### Duplicate Creature Effect Remover

- deletes exactly matching duplicate creature effects (usually caused by many mods trying to do add the same effect on a creature without checking if it's already there)

### Item Stuff

#### Item Resource Fixer

- restructures ITM files for the following item stuff components
- BG2Fixpack's flaming sword fix extended to all mod flaming swords to prevent emo-self-damaging swords
- makes poison resist effect properly work if ToBEx is installed
- fixes crashing for helm animset JC if 1PPv4 installed

#### MAJESTIC Item Fixer

- sets 2-handed flag on 2-handed weapons (prevents crash)
- nulls non-existent used up items
- links container items (bags etc) to proper stores if missing
- sets proper type for items with an invalid type. Eg: BG1/IWD item types converted to BG2 types
- assigns placeholders/appropriate icons to items missing inventory/ground/description icons
- removes invalid abilities
- assigns item icon to ability if missing
- sets enchantment level if magical item
- sets proper ability slots. Eg: Claws marked as a spell
- assigns proper animation probabilities (overhand, backhand, thrust)
- removes animations from non/singular animating items. Eg: arrows, bows etc (prevents crashes)

#### Portrait Icon Assigner

- assigns portrait icons depending on item effects if missing them (cosmetic and informative but can clutter up the portrait)
- fixes bugs in portrait effects. Eg: items who assign portraits to the attacked creature instead of the user

#### Proper Immunity Assigner

- adds immunities based on BG2Fixpack standards to all items. Eg: immunity to domination will also provide immunity to charm

#### Duplicate Item Effect Remover

- same as Duplicate Creature Effect Remover but for ITMs

#### MAJESTIC Item Checker

- not recommended for players
- checks various stuff in ITMs for modders to fix themselves
- changes reported are subjective so lolfixer cannot automate their fixing

### Spell Stuff

#### Spell Resource Fixer

- restructures SPL files for following Spell Stuff components

#### MAJESTIC Spell Fixer

- innate spells set to level 1 for scripts
- innate abilities have their abilities properly set
- preset target spells target self (prevents crash)
- horred's code for patching scripts to use innates properly without crashes

### Store Stuff

#### MAJESTIC Store Fixer

- starts sale of items in inventory but not sold
- starts purchasing items that could be purchased but were not being purchased
- starts sale of services (drinks & cures) that could be offered but were not being offered
- missing items removed from inventory
