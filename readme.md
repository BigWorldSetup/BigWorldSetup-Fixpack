# BiG World Fixpack

This is the repository for the BiG World Project's Fixpack - a set of tools and patches that fix/update/support mods for all Infinity Engine games (focusing on Baldur's Gate series, but including PST and IWD also).

This is a community project; you are welcome to fork this repository and contribute to it.  For an incomplete (hand-maintained) list of patches included, look at the [_BWP fixes.txt](BiG World Fixpack/_BWP fixes.txt) file.  For a complete record, view the [commit history](https://github.com/BiGWorldProject/BiG-World-Fixpack/commits/master). The support page for this package is [here](http://www.shsforums.net/topic/56752-the-official-bwp-fixpack-thread/).

Click [here](https://github.com/BiGWorldProject/BiG-World-Fixpack/archive/master.zip) to download the latest version.

# Usage

The BiG World Fixpack has a WeiDU-based cross-platform install script (Windows: run _ApplyPatches.bat,  OSX/Linux/other:  run weidu _ApplyPatches.tp2) and will validate each patch before applying it by checking the VERSION of the target mod in your game folder and comparing it to the VERSION in the Fixpack patches.  If there is a mismatch, it will pause and ask you whether you want to patch anyway or skip that mod.  It is also safe to run the WeiDU Fixpack script multiple times, because it will skip mods that have already been patched.
 
The Fixpack is different from other WeiDU patches because it does not modify content in the game directly:  instead, it modifies specific files in each unpacked mod folder in your game directory, which will affect what those mods do to the game when you run their individual installers later.  For example, the Fixpack patches WeiDU .baf script and .D dialogue and .tra translation files before they are compiled into the game.  This type of patching has no effect on any mods that have already been installed, so only run the "setup-modname.exe" (or weidu installer equivalent for OSX/Linux/other) for a mod after running the Fixpack script (so:  unpack a mod, run the Fixpack script, then at some later time run the mod's own installer).

If you use the Windows-only [BiG World Setup](https://forums.beamdog.com/discussion/44476/tool-big-world-setup-bws-mod-manager-for-baldurs-gate-enhanced-edition-trilogy-for-windows/p1) automated mod installation tool, this BiG World Fixpack will be downloaded and installed for you automatically.

# Enhanced Edition Trilogy (EET) Patches Are Included

See http://gibberlings3.net/forums/index.php?showtopic=27741&page=33#entry248962 for details.  These patches make all of the EET-compatible mods also compatible with Enhanced Edition games without EET.
