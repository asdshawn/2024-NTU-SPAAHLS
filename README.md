# 2024-NTU-SPAAHLS
This is my work in "Special Project on Application Acceleration with High-Level-Synthesis" course, and Study Journal is at: https://hackmd.io/@asdshawn/SPAAHLS

## Contents

1. [Installization](#Installization)
2. [Vivado Flow (Lab1&2)](#Vivado-Flow-Lab1-amp-Lab2)
3. [Vitis Flow (Lab3)](#Vitis-Flow-Lab3)
4. [Host Code Optimization (LabA)](#Host-Code-Optimization-LabA)
5. [Discrete Fourier Transform Implementation (LabB)](#Discrete-Fourier-Transform-Implementation-LabB)
6. [Softmax Function Implementation (Final Project)](#Softmax-Function-Implementation-Final-Project)

## Installization
![CAUTION]
Note that this method will cause the GUI to display incorrectly, I'm still trying to figure out how to solve it.
![image](https://hackmd.io/_uploads/SksKkUk6A.png)
### Xilinx Vitis
There are many ways to install Xilinx tools, such as using a virtual machine (VM) or directly on Windows, but I'm going to introduce another method I use: Windows Subsystem for Linux (WSL), it **solves the problems of high hardware resource requirements and poor operating efficiency in other methods**.

This tutorial applies only to Windows 11 or **Windows 10 version 1903** (build 18362 or newer).

Step 1. Open your terminal and enter ```wsl -l -o``` to check the online version of Ubuntu.
![image](https://hackmd.io/_uploads/SkUfiMq30.png)

Step 2. Enter ```wsl --install -d <NAME>```to install the Ubuntu you want, we use ```Ubuntu-20.04``` in this course.

Step 3. When the download finish, enter your username and password in Ubuntu and run:
```shell=
sudo apt update
sudo apt upgrade
sudo apt install libtinfo5 libncurses5 -y
sudo apt install build-essential -y
sudo apt install libgtk-3-0 libcanberra-gtk-module
```

Step 4. Go to [website](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vitis/archive-vitis.html) and download the version you need, here we use 2022.1 in course.
(Vesion -> Vitis Archive -> 2022 -> 2022.1, roll down and find *Xilinx Unified Installer 2022.1: Linux Self Extracting Web Installer*.)

Step 5. Put the installer into WSL and execute
```shell!
chmod +x Xilinx_Unified_2022.1_0420_0327_Lin64.bin && sudo ./Xilinx_Unified_2022.1_0420_0327_Lin64.bin
```

Step 6. Follow the [guide](https://github.com/bol-edu/course-lab_1/blob/2022.1/HLS%20Tools%20Installation%20Guide%202022.1.pdf), you should finish installation of the tools.

Setp 7. After finish the installation, enter:
```shell=
cd /tools/Xilinx/Vitis/2022.1/scripts
sudo installLibs.sh
echo 'source /tools/Xilinx/Vitis/2022.1/settings64.sh' >> ~/.bashrc
source ~/.bashrc
```
Step 8. Verify your installation.
![螢幕擷取畫面 2024-09-08 021916](https://hackmd.io/_uploads/S1FftpA3R.png)

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

## Vivado Flow (Lab1 & Lab2)
The first job is just to test the tool to make sure it works properly, Vitis HLS for IP design, Vivado for bitstream generation, and implement on OnlineFPGA through Jupyter Notebook, follow the workbook and you'll be done.
![CAUTION]
When using the Vivado tool, when adding a component to the "Diagram" tab, there may be no response. Re-opening the tool should solve the problem.

## Vitis Flow (Lab3)


## Host Code Optimization (LabA)
In this lab, you operate on a simple, single, generic C++ kernel implementation. This allows you to eliminate any aspects of the kernel code modifications, topological optimizations, and implementation choices from the analysis of host code implementations.

### Common Parameters:
* **numBuffers:** Not expected to be modified. This parameter is used to determine how many kernel invocations are performed.
* **oooQueue:** This boolean value is used to declare the kind of OpenCL event queue that is generated inside the ApiHandle.
* **processDelay:** This parameter can be used to artificially delay the computation time required by the kernel. This parameter is not used in this version of the tutorial.
* **bufferSize:** This parameter is used to declare the number of 512-bit values to be transferred per kernel invocation.
* **softwarePipelineInterval:** This parameter is used to determine how many operations can be pre-scheduled before synchronization occurs.

## Discrete Fourier Transform Implementation (LabB)
The goal of this project is to design architectures that implement the Discrete Fourier Transform (DFT). DFT is a common operation in signal processing which generates a discrete frequency domain representation of the discrete input signal. The input signal is a vector of samples and the matrix is a set of basis functions corresponding to discrete cosine and sine waveforms of different frequencies. The multiplication of the input signal with these basis functions describes how well the input signal correlates with those waveforms, which is the value of the Fourier series at that frequency.


### Definition

Given a sequence of N complex numbers x_0, x_1, ..., x_N-1, the DFT is defined as:

![image](https://hackmd.io/_uploads/BJkhyqrmkg.png)

### Properties

1. **Linearity**: The DFT of a sum of sequences is the sum of their DFTs.
2. **Periodicity**: The DFT is periodic with period \( N \).
3. **Symmetry**: The DFT of a real-valued sequence has symmetry properties that can be exploited to reduce computation.

### C Code Implementation
Target timing: 10ns
Clock uncertainty: 2.7ns

* At the begining, we directly use C code to synthesize and view the results:
```cpp=
// Directly Implementation

void dft(DTYPE real_sample[SIZE], DTYPE imag_sample[SIZE],DTYPE real_op[SIZE],DTYPE imag_op[SIZE])	//Use pointers while doing the demo for streaming
{
    int i, j, index;

    L1: for (int i = 0; i < SIZE; i++) {
            L2: for (int j = 0; j < SIZE; j++) {
                index = (i * j) % SIZE;
		// Multiply the current phasor with the appropriate input sample and keep running sum
            	 real_op[i] += real_sample[j] * cos_coefficients_table[index] - imag_sample[j] * sin_coefficients_table[index];
            	 imag_op[i] += real_sample[j] * sin_coefficients_table[index] + imag_sample[j] * cos_coefficients_table[index];
            }
        }
}
```

```bash
WARNING: [HLS 200-960] Cannot flatten loop 'L1' (Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:9:18) in function 'dft' the outer loop is not a perfect loop.
Resolution: For help on HLS 200-960 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.1;t=hls+guidance;d=200-960.html
```

```bash
WARNING: [HLS 200-880] The II Violation in module 'dft_Pipeline_L2' (loop 'L2'): Unable to enforce a carried dependence constraint (II = 1, distance = 1, offset = 0) between 'store' operation ('add3_write_ln16', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:16) of variable 'add', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:16 on local variable 'add3' and 'load' operation ('add3_load', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:16) on local variable 'add3'.
Resolution: For help on HLS 200-880 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.1;t=hls+guidance;d=200-880.html
WARNING: [HLS 200-880] The II Violation in module 'dft_Pipeline_L2' (loop 'L2'): Unable to enforce a carried dependence constraint (II = 2, distance = 1, offset = 0) between 'store' operation ('add3_write_ln16', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:16) of variable 'add', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:16 on local variable 'add3' and 'load' operation ('add3_load', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:16) on local variable 'add3'.
Resolution: For help on HLS 200-880 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.1;t=hls+guidance;d=200-880.html
WARNING: [HLS 200-880] The II Violation in module 'dft_Pipeline_L2' (loop 'L2'): Unable to enforce a carried dependence constraint (II = 3, distance = 1, offset = 0) between 'store' operation ('add3_write_ln16', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:16) of variable 'add', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:16 on local variable 'add3' and 'load' operation ('add3_load', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:16) on local variable 'add3'.
Resolution: For help on HLS 200-880 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.1;t=hls+guidance;d=200-880.html
WARNING: [HLS 200-880] The II Violation in module 'dft_Pipeline_L2' (loop 'L2'): Unable to enforce a carried dependence constraint (II = 4, distance = 1, offset = 0) between 'store' operation ('add3_write_ln16', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:16) of variable 'add', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:16 on local variable 'add3' and 'load' operation ('add3_load', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:16) on local variable 'add3'.
Resolution: For help on HLS 200-880 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.1;t=hls+guidance;d=200-880.html
INFO: [HLS 200-1470] Pipelining result : Target II = NA, Final II = 5, Depth = 21, loop 'L2'
```

* C Synthesis Result:
:::warning
II Violation & Not Perfect Loop.
:::
| Timing  | Latency(cycles) | BRAM | DSP | FF   | LUT  |
| ------- | --------------- | ---- | --- | ---- | ---- |
| 7.256ns | 5267457         | 4    | 5   | 1168 | 1233 |

* This results in a lot of violations, which is completely normal, let's try to improve it step by step.

* First we add the "pipeline pragma" in the inner loop and see what happens:
```cpp=
// Add Pipeline Pragma

L1: for (int i = 0; i < SIZE; i++) {

            L2: for (int j = 0; j < SIZE; j++) {

#pragma HLS PIPELINE II=1

            	index = (i * j) % SIZE;

		// Multiply the current phasor with the appropriate input sample and keep running sum
            	real_op[i] += real_sample[j] * cos_coefficients_table[index] - imag_sample[j] * sin_coefficients_table[index];
            	imag_op[i] += real_sample[j] * sin_coefficients_table[index] + imag_sample[j] * cos_coefficients_table[index];
            }
        }
```

```bash
WARNING: [HLS 200-960] Cannot flatten loop 'L1' (Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:9:18) in function 'dft' the outer loop is not a perfect loop.
Resolution: For help on HLS 200-960 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.1;t=hls+guidance;d=200-960.html
```

```bash
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-61] Pipelining loop 'L2'.
WARNING: [HLS 200-880] The II Violation in module 'dft_Pipeline_L2' (loop 'L2'): Unable to enforce a carried dependence constraint (II = 1, distance = 1, offset = 0) between 'store' operation ('add3_write_ln18', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:18) of variable 'add', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:18 on local variable 'add3' and 'load' operation ('add3_load', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:18) on local variable 'add3'.
Resolution: For help on HLS 200-880 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.1;t=hls+guidance;d=200-880.html
WARNING: [HLS 200-880] The II Violation in module 'dft_Pipeline_L2' (loop 'L2'): Unable to enforce a carried dependence constraint (II = 2, distance = 1, offset = 0) between 'store' operation ('add3_write_ln18', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:18) of variable 'add', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:18 on local variable 'add3' and 'load' operation ('add3_load', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:18) on local variable 'add3'.
Resolution: For help on HLS 200-880 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.1;t=hls+guidance;d=200-880.html
WARNING: [HLS 200-880] The II Violation in module 'dft_Pipeline_L2' (loop 'L2'): Unable to enforce a carried dependence constraint (II = 3, distance = 1, offset = 0) between 'store' operation ('add3_write_ln18', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:18) of variable 'add', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:18 on local variable 'add3' and 'load' operation ('add3_load', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:18) on local variable 'add3'.
Resolution: For help on HLS 200-880 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.1;t=hls+guidance;d=200-880.html
INFO: [HLS 200-1470] Pipelining result : Target II = 1, Final II = 4, Depth = 20, loop 'L2'
WARNING: [HLS 200-871] Estimated clock period (8.844ns) exceeds the target (target clock period: 10ns, clock uncertainty: 2.7ns, effective delay budget: 7.3ns).
Resolution: For help on HLS 200-871 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.1;t=hls+guidance;d=200-871.html
WARNING: [HLS 200-1016] The critical path in module 'dft_Pipeline_L2' consists of the following:	'fadd' operation ('add', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:18) [59]  (7.26 ns)
	'store' operation ('add3_write_ln18', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:18) of variable 'add', Read_the_docs/project_files/project3/dft_1024_precomputed/dft.cpp:18 on local variable 'add3' [75]  (1.59 ns)
Resolution: For help on HLS 200-1016 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.1;t=hls+guidance;d=200-1016.html
INFO: [SCHED 204-11] Finished scheduling.
```

C Synthesis Result:
:::warning
II Violation & Not Perfect Loop & Timing Violation.
:::
| Timing  | Latency(cycles) | BRAM | DSP | FF   | LUT  |
| ------- | --------------- | ---- | --- | ---- | ---- |
| 8.844ns | 4217857         | 4    | 5   | 1168 | 1227 |
* Because we forced the loop to "pipeline", the latency was reduced a bit, but timing violations occurred, which was not what we wanted.

* This time, let's add a "pipeline pragma" to the outer loop and see what happens:
```cpp=
// Function Pipeline

L1: for (int i = 0; i < SIZE; i++) {

#pragma HLS PIPELINE II=1

            L2: for (int j = 0; j < SIZE; j++) {
            	index = (i * j) % SIZE;

		// Multiply the current phasor with the appropriate input sample and keep running sum
            	real_op[i] += real_sample[j] * cos_coefficients_table[index] - imag_sample[j] * sin_coefficients_table[index];
            	imag_op[i] += real_sample[j] * sin_coefficients_table[index] + imag_sample[j] * cos_coefficients_table[index];
            }
        }
```

C Synthesis Result:
:::warning
Massive Resources Require.
:::
| Timing  | Latency(cycles) | BRAM | DSP | FF   | LUT  |
| ------- | --------------- | ---- | --- | ---- | ---- |
| 7.256ns | LOW | LARGE | LARGE | LARGE | LARGE |
* There are no violations! But if you've tried it yourself, you know that Vitis HLS can crash or take you a long time.
* This is because when there are two loops and you add a "pragma" in the outer loop, the inner loop will "unroll".
* Obviously we don't have unlimited hardware resources to do this, so we "relax" our constraints by increasing the II (initiation interval):
```cpp=
// Loop Pipeline with II = 7

L1: for (i = 0; i < SIZE * SIZE; ++i) {
    	
#pragma HLS PIPELINE II=7

        j = i / SIZE;
    	k = i % SIZE;
	index = (j * k) % SIZE;

	// Multiply the current phasor with the appropriate input sample and keep running sum
	real_op[j] += real_sample[k] * cos_coefficients_table[index] - imag_sample[k] * sin_coefficients_table[index];
	imag_op[j] += real_sample[k] * sin_coefficients_table[index] + imag_sample[k] * cos_coefficients_table[index];
    }
```

* C Synthesis Result:
:::info
II = 7 is the limit, or II violation occurs.
:::
| Timing  | Latency(cycles) | BRAM | DSP | FF   | LUT  |
| ------- | --------------- | ---- | --- | ---- | ---- |
| 7.256ns | 7340049         | 4    | 8   | 1496 | 1604 |
* Here it comes, a pipelined DFT! But as you can see, the price of II=7 is latency.
* Since the "store" operation takes cycles to complete, we cannot "load" the previous data for accumulation immediately.
* The trick we use here is to increase the "distance" of the calculation, try making II=1:
```cpp=
// Loop Pipeline with distance 8.

L1: for (i = 0; i < SIZE * SIZE; ++i) {

#pragma HLS PIPELINE II=1

        j = i / SIZE;
        k = i % SIZE;
    	index = (j * k) % SIZE;

    	// Multiply the current phasor with the appropriate input sample and keep running sum
    	real_temp[j][k % 8] += real_sample[k] * cos_coefficients_table[index] - imag_sample[k] * sin_coefficients_table[index];
    	imag_temp[j][k % 8] += real_sample[k] * sin_coefficients_table[index] + imag_sample[k] * cos_coefficients_table[index];
    }

    L2: for (i = 0; i < SIZE; i++) {
    	L3: for (j = 0; j < 8; j++){

#pragma HLS UNROLL

    		real_op[i] += real_temp[i][j];
    		imag_op[i] += imag_temp[i][j];
    	}
    }
```

C Synthesis Result:
:::success
Although it requires more resource usage, the latency is five times lower than other methods.
:::
| Timing  | Latency(cycles) | BRAM | DSP | FF   | LUT  |
| ------- | --------------- | ---- | --- | ---- | ---- |
| 7.256ns | 1049666         | 228  | 45  | 6963 | 8874 |

```cpp=
// Loop Pipeline with distance 8 & Rewind.

#pragma HLS BIND_STORAGE variable=real_buff type=ram_2p
#pragma HLS BIND_STORAGE variable=imag_buff type=ram_2p
RST: for (i = 0; i < SIZE * DIST; i++) {

#pragma HLS PIPELINE II=1 rewind

        j = i / DIST;
        k = i % DIST;

        real_buff[j][k] = 0;
        imag_buff[j][k] = 0;
}

CAL: for (i = 0; i < SIZE * SIZE; i++) {

#pragma HLS PIPELINE II=1 rewind

    j = i / SIZE;
    k = i % SIZE;
    index = (j * k) % SIZE;

    // Multiply the current phasor with the appropriate input sample and keep running sum
    real_buff[j][k % DIST] += real_sample[k] * cos_coefficients_table[index] - imag_sample[k] * sin_coefficients_table[index];
    imag_buff[j][k % DIST] += real_sample[k] * sin_coefficients_table[index] + imag_sample[k] * cos_coefficients_table[index];
}

ADD: for (i = 0; i < SIZE * DIST; i++) {

#pragma HLS PIPELINE II=8 rewind

        j = i / DIST;
        k = (i+1) % DIST;

        if (k != 0) {
            real_buff[j][0] += real_buff[j][k];
            imag_buff[j][0] += imag_buff[j][k];
        }
}

WB: for (i = 0; i < SIZE; i++) {

#pragma HLS PIPELINE II=1 rewind

    real_op[i] = real_buff[i][0];
    imag_op[i] = imag_buff[i][0];
}
```

C Synthesis Result:
:::success
Here, we use Pipeline Rewind to keep latency 5x lower than other approaches while also reducing resource usage by about 2.5x.
:::
| Timing  | Latency(cycles) | BRAM | DSP | FF   | LUT  |
| ------- | --------------- | ---- | --- | ---- | ---- |
| 7.256ns | 1123352         | 36   | 21  | 2433 | 3515 |

Cosimulation Result:
| Timing  | Latency(cycles) | BRAM | DSP | FF   | LUT  |
| ------- | --------------- | ---- | --- | ---- | ---- |
| 8.276ns | 1123352         | 36   | 21  | 1753 | 1596 |

or
```cpp=
DFT: for (i = 0; i < SIZE; i++) {
    CAL: for (j = 0; j < SIZE+DIST*DIST; j++) {
#pragma HLS PIPELINE II=1 rewind
        index = (i * j) % SIZE;
        k = j - SIZE;
        if (j < DIST) {
            real_buff[j] = real_sample[j] * cos_coefficients_table[index] - imag_sample[j] * sin_coefficients_table[index];
            imag_buff[j] = real_sample[j] * sin_coefficients_table[index] + imag_sample[j] * cos_coefficients_table[index];
        } else if (j < SIZE) {
            real_buff[j % DIST] += real_sample[j] * cos_coefficients_table[index] - imag_sample[j] * sin_coefficients_table[index];
            imag_buff[j % DIST] += real_sample[j] * sin_coefficients_table[index] + imag_sample[j] * cos_coefficients_table[index];
        } else if (k < DIST) {
            real_dist[k] = real_buff[k / DIST];
            imag_dist[k] = imag_buff[k / DIST];
        } else {
            real_dist[k % DIST] += real_buff[k / DIST];
            imag_dist[k % DIST] += imag_buff[k / DIST];
            real_temp = real_dist[k % DIST];
            imag_temp = imag_dist[k % DIST];
        }
    }
    real_op[i] = real_temp;
    imag_op[i] = imag_temp;
}
```

C Synthesis Result:
| Timing  | Latency(cycles) | BRAM | DSP | FF   | LUT  |
| ------- | --------------- | ---- | --- | ---- | ---- |
| 7.256ns | 1114173         | 4    | 24  | 4113 | 4757 |

Cosimulation Result:
| Timing  | Latency(cycles) | BRAM | DSP | FF   | LUT  |
| ------- | --------------- | ---- | --- | ---- | ---- |
| 8.373ns | 1114173         | 8    | 25  | 2882 | 2293 |

```cpp=
// Pipeline Rewind with Unroll factor 2.

#pragma HLS BIND_STORAGE variable=real_buff type=ram_t2p
#pragma HLS BIND_STORAGE variable=imag_buff type=ram_t2p
#pragma HLS ARRAY_PARTITION variable=real_buff type=cyclic factor=2 dim=2
#pragma HLS ARRAY_PARTITION variable=imag_buff type=cyclic factor=2 dim=2

LOAD: for (i = 0; i < SIZE * DIST; i++) {

#pragma HLS PIPELINE II=1 rewind

        j = i / DIST;
        k = i % DIST;

        real_sample_buff[j] = real_sample[j];
        imag_sample_buff[j] = imag_sample[j];
        real_buff[j][k] = 0;
        imag_buff[j][k] = 0;
}

CALC: for (i = 0; i < SIZE * SIZE; i++) {

#pragma HLS PIPELINE II=1 rewind
#pragma HLS UNROLL factor=2

    j = i / SIZE;
    k = i % SIZE;
    index = (j * k) % SIZE;

    // Multiply the current phasor with the appropriate input sample and keep running sum
    real_buff[j][k % DIST] += real_sample_buff[k] * cos_coefficients_table[index] - imag_sample_buff[k] * sin_coefficients_table[index];
    imag_buff[j][k % DIST] += real_sample_buff[k] * sin_coefficients_table[index] + imag_sample_buff[k] * cos_coefficients_table[index];
}

SUM: for (i = 0; i < SIZE * DIST; i++) {

#pragma HLS PIPELINE II=8 rewind

        j = i / DIST;
        k = (i+1) % DIST;

        if (k != 0) {
            real_buff[j][0] += real_buff[j][k];
            imag_buff[j][0] += imag_buff[j][k];
        }
}

WB: for (i = 0; i < SIZE; i++) {

#pragma HLS PIPELINE II=1 rewind

    real_op[i] = real_buff[i][0];
    imag_op[i] = imag_buff[i][0];
}
```

C Synthesis Result:
:::success
Use Unroll to cut latency in half.
:::
| Timing  | Latency(cycles) | BRAM | DSP | FF   | LUT  |
| ------- | --------------- | ---- | --- | ---- | ---- |
| 7.256ns | 599065          | 40   | 42  | 4522 | 6574 |

## Softmax Function Implementation (Final Project)
