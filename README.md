# Eph-JovianSatallites
Use SPICE toolkit in Matlab to read .bsp file from JPL website
Instruction: Chinese version first, then English version. 

因为本人读博期间涉及到读取木星卫星的星历，多次调试后终于可行，分享于此，后人可参考。

代码包含读取星历代码，以及基础的与轨道递推、坐标转换相关的函数。


运行环境：Matlab 2020a


打包下载所有代码后，还需准备两样文件：

由于Github对上传文件大小的限制，不能一并上传至仓库，需要使用者自己下载。若您有百度网盘，也可直接在这里下载：链接：https://pan.baidu.com/s/1c8_7qGzHTZPqf6xvGWRkUQ?pwd=2222 
提取码：2222 

1，星历文件

星历下载地址：https://ssd.jpl.nasa.gov/sats/ephem/sep.html

包含：木星规则卫星（含伽利略卫星） jup365.bsp；不规则木卫 jup344.bsp；2023新增 jup346.bsp（注：我于2023年左右使用星历时，“2023新增”对应的文件为 jup345.bsp，看来后来JPL更新过）

位置：放在与基础文件相同目录下、和/spice/spice/kernels中

![image](https://github.com/GreedWolf97/Eph-JovianSatallites/assets/58545028/4debb83c-190d-4070-81b4-f1800ccbac13)
![image](https://github.com/GreedWolf97/Eph-JovianSatallites/assets/58545028/c92d1d40-f4f4-4126-b312-d822db7bf86b)

在使用时将文件名重命名为如图所示。


2，mice工具包

mice工具包下载地址：https://naif.jpl.nasa.gov/naif/toolkit_MATLAB_PC_Windows_VisualC_MATLAB9.x_64bit.html

解压后将名为mice、包含众多子文件的文件夹放在 当前目录/spice/spice 下，与名为 kernels 的文件夹并列

![image](https://github.com/GreedWolf97/Eph-JovianSatallites/assets/58545028/50496d04-e87c-467f-9d52-f1b754422348)

注：务必确保mice文件夹下有众多子文件

![image](https://github.com/GreedWolf97/Eph-JovianSatallites/assets/58545028/e0be6d6f-602f-4b6c-b21e-9afcfa815d1d)

两样文件就绪后，即可打开 Test.m，用来读取星历。该文件给出了一个示例。

%%

During my doctoral studies, I was involved in reading the ephemeris of Jupiter’s satellites. After multiple debugging sessions, I finally made it work and I am sharing it here for future reference. The code includes functions for reading the ephemeris, as well as basic functions related to orbit propagation and coordinate transformation.


The code runs on Matlab 2020a.


After downloading all the code, two additional files need to be prepared: (if you have BaiDu disk, you also can find them here: https://pan.baidu.com/s/1c8_7qGzHTZPqf6xvGWRkUQ?pwd=2222 
code：2222 )


1，Ephemeris File: 

Due to Github’s file size restrictions, it cannot be uploaded to the repository and needs to be downloaded by the user. 

The ephemeris can be downloaded from here. https://ssd.jpl.nasa.gov/sats/ephem/sep.html

It includes: regular Jovian satellite (include Galilean Moons) jup365.bsp; irregular Jovian satellite jup344.bsp; and the 2023 addition jup346.bsp (Note: When I used the ephemeris around 2023, the “2023 addition” corresponded to the file jup345.bsp, it seems that JPL has updated it since then). 

The file should be placed in the same directory as the base file, and in /spice/spice/kernels. 

![image](https://github.com/GreedWolf97/Eph-JovianSatallites/assets/58545028/4debb83c-190d-4070-81b4-f1800ccbac13)
![image](https://github.com/GreedWolf97/Eph-JovianSatallites/assets/58545028/855ffefc-94dd-48ad-8049-59ada79ada02)

When using, rename the file as shown in the image.


2，Mice Toolkit: The Mice toolkit can be downloaded from here. 

After decompressing, place the folder named mice, which contains many subfiles, under current directory/spice/spice, parallel to the folder named kernels. 

![image](https://github.com/GreedWolf97/Eph-JovianSatallites/assets/58545028/50496d04-e87c-467f-9d52-f1b754422348)

Note: Make sure there are many subfiles in the mice folder.

![image](https://github.com/GreedWolf97/Eph-JovianSatallites/assets/58545028/e0be6d6f-602f-4b6c-b21e-9afcfa815d1d)


Once both files are ready, you can run Test.m to read the ephemeris. This file provides an example.
