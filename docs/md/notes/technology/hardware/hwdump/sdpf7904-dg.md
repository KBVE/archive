---
layout: default
title: sdpf7904-dg
parent: HWDump
grand_parent: Hardware
has_children: false
nav_order: 7
---
# Sylvania SDPF7904-DG
- So I was gifted several of these digital picture frames and the pre-loaded "Frameo" / "FrameOS" was trash. So I decided to spend some time while playing league to mess around with it.

## Guide
-   Download ADB (will provide some links but just search it up, [https://ddg.cm/#adb+install+windows](https://ddg.cm/#adb+install+windows))
-   Enter developer mode on the table, by going to settings and tapping the duck out of the version software.
-   Once inside the developer mode, make sure debugging is enabled. By default it was for my tablet / 7inch picture frame.
-   Run this command ->
-   `.\adb.exe shell monkey -p com.android.browser -c android.intent.category.LAUNCHER 1`
-   Browser window should open up! Enjoy! Just a side note, it is extremely slow.

## Note
- My personal suggestion would be to build a wooden or plastic frame around an old tablet and you basically have this exact product.
-   Chipset is Rockchip 3126 - [https://rockchip.fr/RK3126%20datasheet%20V1.0.pdf](https://rockchip.fr/RK3126%20datasheet%20V1.0.pdf)
-   Make sure to have display set to `never turn off`. 