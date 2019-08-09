# Big World Setup Fixpack

This is the repository for the Big World Setup Fixpack - a set of tools and patches that fix/update/support mods for all Infinity Engine games (focusing on Baldur's Gate series, but including PST and IWD also).

This is a community project; you are welcome to fork this repository and contribute to it.  For a complete record, view the [commit history](https://github.com/BigWorldSetup/BigWorldSetup-Fixpack/commits/master). The support page for this package is [here](http://www.shsforums.net/topic/56752-the-official-bwp-fixpack-thread/).

Click [here](https://github.com/BigWorldSetup/BigWorldSetup-Fixpack/archive/master.zip) to download the latest version.

## Usage when installing mods via Project Infinity  

You have to install it manually inside folder with extracted mods, before even starting PI. As advantage, you install it one time only. Also make sure you understand the below:  

## Usage when installing mods manually

Use caution when integrating it in manual installs and make sure you understand the below:

The Big World Setup Fixpack has a WeiDU-based cross-platform install script (Windows: run _ApplyPatches.bat,  OSX/Linux/other:  run weidu _ApplyPatches.tp2) and will validate each patch before applying it by checking the VERSION of the target mod in your game folder and comparing it to the VERSION in the Big World Setup patches.  If there is a mismatch, it will pause and ask you whether you want to patch anyway or skip that mod.  It is also safe to run it script multiple times, because it will skip mods that have already been patched.

The Big World Setup Fixpack is different from other WeiDU patches because it does not modify content in the game directly:  instead, it modifies specific files in each unpacked mod folder in your game directory, which will affect what those mods do to the game when you run their individual installers later.  For example, the Big World Setup Fixpack patches WeiDU .baf script and .D dialogue and .tra translation files before they are compiled into the game.  This type of patching has no effect on any mods that have already been installed, so only run the "setup-modname.exe" (or weidu installer equivalent for OSX/Linux/other) for a mod after running the Fixpack script (so:  unpack a mod, run the Fixpack script, then at some later time run the mod's own installer).

NOTE:  On Linux, before applying these patches, due to case sensitivity, you must either place all of the game and mod files in a case-insensitive filesystem partition.  Also note that if some patches fail due to mismatched line endings, you can run the dos2unix utility on the patch files to convert CRLF (Windows-style line endings) to LF (Linux-style line endings).  Patch failures will be logged in the _ApplyPatches.debug file, and .rej (reject) files will be created in the same folder as each file that could not be patched successfully.

Indeed, you should not manually apply any hotfixes or patches to any mods until at least after the automated Big World Setup Fixpack patching at the beginning of the installation process has completed.  Any manual changes to mod files can cause the automated patching to fail, possibly resulting in partial/incomplete patching.
