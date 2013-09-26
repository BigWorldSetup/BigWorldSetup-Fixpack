Creature Fixer v2 by Miloch
http://www.shsforums.net/index.php?showtopic=42943

This is a small utility that fixes some issues with BG2/BGT/Tutu creature item and slot assignments, both in the unmodded game and with mods installed. These issues can lead to game crashes or other problems. Such issues include:

- Shield slot item does not exist
- Invalid shield slot assignment
- Weapon slot item does not exist
- Weapon slot item misspelled
- Two-handed weapon equipped with off-hand item
- Item of wrong type in weapon slot
- Invalid weapon slot assignment

If it finds any of these issues, it will attempt to fix them as best as it can and output a list of the specific problems to /crefixer/cre_log.txt for further analysis. A sample output from unmodded BG2 is:

Creature   Item     Slot   Issue
amlich01   ring46   0x14   Item of wrong type 10 in weapon slot
arntra01   sh1h04   0x12   Weapon slot item does not exist
cor        2hsw02   0x12   Weapon slot item does not exist
daqilue    N/A      0x4    Invalid shield slot assignment
ddguard4   key17    0x12   Item of wrong type 8 in weapon slot
dragyell   dragyell 0x12   Weapon slot item does not exist
firarc01   bow01    0x12   Two-handed weapon equipped with off-hand item shld05
genie01    b3-18    0x12   Weapon slot item does not exist
genie02    b3-18    0x12   Weapon slot item does not exist
genie03    b3-18    0x12   Weapon slot item does not exist
genie04    b3-18    0x12   Weapon slot item does not exist
gorsta10   umber1   0x12   Weapon slot item does not exist
impqua01   reghp1   0x12   Item of wrong type 10 in weapon slot
kuocle20   kuoring  0x12   Item of wrong type 10 in weapon slot
laune      vamp01   0x12   Weapon slot item does not exist
pirexe01   blunt06  0x14   Weapon slot item does not exist
ppdjinn    b3-18    0x12   Weapon slot item does not exist
ppsail03   leat01   0x12   Item of wrong type 2 in weapon slot
rielev     mage01   0x12   Item of wrong type 10 in weapon slot
tirthold   staff01  0x12   Weapon slot item does not exist
trgeni02   b3-18    0x12   Weapon slot item does not exist
trgeni03   b3-18    0x12   Weapon slot item does not exist
trple01    xbow01   0x14   Two-handed weapon equipped with off-hand item shld03

This utility is included by default in BiG World Project installs. It is available separately for other types of installs, or as a tool for modders to ensure such issues are not present in their mods. As a stand-alone mod, it should be installed after other mods (except perhaps GUI and biffing mods) to detect and fix as many issues as possible.

Note: This should not be confused with Taimon's Creature Fixer for zeroed offsets or Nythrun's Resource Fixer macros for buggered creature and item ordering, both of which are also included in BWP and have separate (but related) uses.

Version History:

Version 2: 2 Dec 2009
- Tweaked slightly after BWP testing to improve fix results
- Added non-zero setting for stackable/chargeable item fixes

Version 1: 2 Nov 2009
- Initial release
