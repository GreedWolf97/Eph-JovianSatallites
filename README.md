# Eph-JovianSatallites
Use SPICE toolkit in Matlab to read .bsp file from JPL website
Instruction: Chinese version first, then English version. 
因为本人读博期间涉及到读取木星卫星的星历，多次调试后终于可行，分享于此，后人可参考。
代码包含读取星历代码，以及基础的与轨道递推、坐标转换相关的函数。

运行环境：Matlab 2020a

打包下载所有代码后，还需准备两样文件：
由于Github对上传文件大小的限制，不能一并上传至仓库，需要使用者自己下载
1，星历文件
星历下载地址：https://ssd.jpl.nasa.gov/sats/ephem/sep.html
包含：木星规则卫星 jup365.bsp；不规则木卫 jup344.bsp；2023新增 jup346.bsp（注：我于2023年左右使用星历时，“2023新增”对应的文件为 jup345.bsp，看来后来JPL更新过）
位置：放在与基础文件相同目录下
![image](https://github.com/GreedWolf97/Eph-JovianSatallites/assets/58545028/4debb83c-190d-4070-81b4-f1800ccbac13)
在使用时将文件名重命名为如图所示。
2，mice工具包
mice工具包下载地址：https://naif.jpl.nasa.gov/naif/toolkit_MATLAB_PC_Windows_VisualC_MATLAB9.x_64bit.html
解压后将名为mice、包含众多子文件的文件夹放在 当前目录/spice/spice 下，与名为 kernels 的文件夹并列
![image](https://github.com/GreedWolf97/Eph-JovianSatallites/assets/58545028/50496d04-e87c-467f-9d52-f1b754422348)
注：务必确保mice文件夹下有众多子文件
![image](https://github.com/GreedWolf97/Eph-JovianSatallites/assets/58545028/e0be6d6f-602f-4b6c-b21e-9afcfa815d1d)

两样文件就绪后，即可打开 Test.m，用来读取星历。该文件给出了一个示例。
