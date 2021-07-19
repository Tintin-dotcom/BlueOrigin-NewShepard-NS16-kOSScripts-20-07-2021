# BlueOrigin-NewShepard-NS16-kOSScripts-20-07-2021

Craft files for the rocket, and a version without the parts needed for kOS, are included.

The modified configs for the RealPlume Mod used in the video, are also included.

Link to Youtube video: 

This is the Kerbal Operating System code for a New Shepard rocket launch.

It includes a second file for the capsule landing, and a third one which is a boot file and has to be placed inside a directory called "Boot", inside the /KSP/Ships/Script directory.

The newshepard.ks code launches the rocket, throttles down, separates the capusle, deployes fins and airbrakes, and lands the rocket.

The nscapsule.ks script reorients the capsule, waits until it reaches the propper altitude to deploy it's drogue chutes, cuts the drogue chutes and deployes the main chutes, and ignites some small thrusters to lower the capsule's speed just before touchdown.

The boot.ks file opens the kOS Terminal of the booster's processor directly after launching the vessel. This only works if you right-click the kOS-processor located at the top of the first stage's tank and select boot file "boot.ks".

As for the RealPlume configs, I modified the one for the Thud liquid fuel engine, if you want to use it, go to the /KSP/GameData/RealPlume-Stock/Squad directory, and replace the old one with it. You should keep the old config file somewhere so that you can switch them again if you want to. The new config file makes the plume much closer to Blue Origin's BE-3 engine's plume.

There is also a config file for the SmokeScreen mod, a dependency of RealPlume. It has to be in the /KSP/GameData/SmokeScreen directory, and all it does is increasing the particle limit from 1000 to 3000.

///NOTES///

-> You have to lock the hinge of the landing gear manually, if you want to lower the chance of the booster tipping over after landing.

-> Tested in Kerbal Space Program Version 1.12.
