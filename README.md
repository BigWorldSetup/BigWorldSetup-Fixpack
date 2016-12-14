# BiG World Fixpack

This is the repository for the BiG World Project's Fixpack - a set of tools and patches that fix/update/support mods for all Infinity Engine games (focusing on Baldur's Gate series, but including PST and IWD also).

This is a community project; you are welcome to fork this repository and contribute to it.  For an incomplete (hand-maintained) list of patches included, look at the [_BWP fixes.txt](BiG World Fixpack/_BWP fixes.txt) file.  For a complete record, view the [commit history](https://github.com/BiGWorldProject/BiG-World-Fixpack/commits/master). The support page for this package is [here](http://www.shsforums.net/topic/56752-the-official-bwp-fixpack-thread/).

Click [here](https://github.com/BiGWorldProject/BiG-World-Fixpack/archive/master.zip) to download the latest version.

# Enhanced Edition Trilogy (EET) Patches Are Included

See http://gibberlings3.net/forums/index.php?showtopic=27741&page=33#entry248962 for details.  These patches make all of the EET-compatible mods also compatible with Enhanced Edition games without EET.

# Usage when installing mods manually

The BiG World Fixpack has a WeiDU-based cross-platform install script (Windows: run _ApplyPatches.bat,  OSX/Linux/other:  run weidu _ApplyPatches.tp2) and will validate each patch before applying it by checking the VERSION of the target mod in your game folder and comparing it to the VERSION in the Fixpack patches.  If there is a mismatch, it will pause and ask you whether you want to patch anyway or skip that mod.  It is also safe to run the WeiDU Fixpack script multiple times, because it will skip mods that have already been patched.
 
The Fixpack is different from other WeiDU patches because it does not modify content in the game directly:  instead, it modifies specific files in each unpacked mod folder in your game directory, which will affect what those mods do to the game when you run their individual installers later.  For example, the Fixpack patches WeiDU .baf script and .D dialogue and .tra translation files before they are compiled into the game.  This type of patching has no effect on any mods that have already been installed, so only run the "setup-modname.exe" (or weidu installer equivalent for OSX/Linux/other) for a mod after running the Fixpack script (so:  unpack a mod, run the Fixpack script, then at some later time run the mod's own installer).

NOTE:  On Linux, before applying these patches, due to case sensitivity, you must either place all of the game and mod files in a case-insensitive filesystem partition or use ciopfs (case-insensitive on-purpose file-system) as a workaround.  Note that if you use ciopfs, you must also recursively convert all filenames in the game directory to lowercase (e.g., using a tolower command as in https://linuxconfig.org/rename-all-files-from-uppercase-to-lowercase-characters), as that command works by converting all paths accessed on the file system to lowercase, therefore ignoring any filenames containing uppercase letters.  Since the game itself contains hard-coded paths to files that include upper-case letters, you will also need to launch the game inside ciopfs or convert all filenames back to their original case after installing all patches and mods.  Also note that if some patches fail due to mismatched line endings, you can run the dos2unix utility on the patch files to convert CRLF (Windows-style line endings) to LF (Linux-style line endings).  Patch failures will be logged in the _ApplyPatches.debug file, and .rej (reject) files will be created in the same folder as each file that could not be patched successfully.

# Usage with BiG World Setup or BiG World Project (not the same!)

If you use the Windows-only [BiG World Setup](https://forums.beamdog.com/discussion/44476/tool-big-world-setup-bws-mod-manager-for-baldurs-gate-enhanced-edition-trilogy-for-windows/p1) mod selection and automated download+extract+installation tool, this BiG World Fixpack will be downloaded automatically and applied to all of the mods you selected without requiring you to take any manual action.

Indeed, you should not manually apply any hotfixes or patches to any mods until at least after the automated BiG World Fixpack patching at the beginning of the installation process has completed.  Any manual changes to mod files can cause the automated patching to fail, possibly resulting in partial/incomplete patching.

If you want to edit mod files manually when using BWS, after Fixpack patching, one option is to use the 'OverwriteFiles' advanced feature of BWS to supply your own replacement copies of certain files, which BWS will automatically copy into the game folder for you; alternatively, you can configure BWS to pause (via right-click during the mod/component selection phase) before installing the particular mods you want to modify manually, and then at any time after the Fixpack patching is done you can make whatever additional changes you want.

If you use the Windows-only [BiG World Project](https://kerzenburg.baldurs-gate.eu/downloads.php?cat=10) command-line automated installation scripts, you may wish to download the Fixpack from this page rather than the from the BWP link.  The BWP author (Leonardo Watson) prefers to release snapshot versions of the Fixpack periodically and does not contribute directly to this repository, so shortly after each BWP release there may be some newer fixes available from the BWP version of the Fixpack, but such fixes are generally incorporated into this repository within a day or two.
