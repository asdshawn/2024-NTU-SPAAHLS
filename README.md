# 2024-NTU-SPAAHLS
Welcome to the "Special Project on Application Acceleration with High-Level-Synthesis" course. This course offers two discipline trainings: HLS and/or SOC Design.

## Installization

### Xilinx Vitis
There are many ways to install Xilinx tools, such as using a virtual machine (VM) or directly on Windows, but I'm going to introduce another method I use: Windows Subsystem for Linux (WSL), it **solves the problems of high hardware resource requirements and poor operating efficiency in other methods**.

Step 1. Open your terminal and enter ```wsl -l -o``` to check the online version of Ubuntu.
![image](https://hackmd.io/_uploads/SkUfiMq30.png)

Step 2. Enter ```wsl --install -d <NAME>```to install the Ubuntu you want, we use ```Ubuntu-20.04``` in this course.

Step 3. When the download finish, enter your username and password in Ubuntu and run:
```shell=
sudo apt update
sudo apt upgrade
sudo apt install libtinfo5 libncurses5 -y
sudo apt install build-essential -y
```

Step 4. Go to [website](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vitis/archive-vitis.html) and download the version you need, here we use 2022.1 in course.
(Vesion -> Vitis Archive -> 2022 -> 2022.1, roll down and find *Xilinx Unified Installer 2022.1: Linux Self Extracting Web Installer*.)

Step 5. Put the installer into WSL and execute
```shell!
chmod +x Xilinx_Unified_2022.1_0420_0327_Lin64.bin && sudo ./Xilinx_Unified_2022.1_0420_0327_Lin64.bin
```

Step 6. Follow the [guide](https://github.com/bol-edu/course-lab_1/blob/2022.1/HLS%20Tools%20Installation%20Guide%202022.1.pdf), you should finish installation of the tools.

### RISC-V GCC Toolchain (32-bit)
Step 1. Install necessary package.
```shell!
sudo apt install autoconf automake autotools-dev curl libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev
```

Step 2. Download the open source code of RISC-V toolchain.
```shell=
git clone --recursive https://github.com/riscv/riscv-gnu-toolchain
cd riscv-gnu-toolchain
```

Step 3. Set configuration and compile the toolchain, it will take some time. (Note that if errors like out of memory occur, modify to -j4 or less.)
```shell=
./configure --prefix=/opt/riscv --with-arch=rv32i --with-abi=ilp32
sudo make -j8
```

Step 4. Add the toolchain to system path.
```shell=
echo 'export PATH=/opt/riscv/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
```
