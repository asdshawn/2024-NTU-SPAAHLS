// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XPASS_H
#define XPASS_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xpass_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XPass_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XPass;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XPass_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XPass_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XPass_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XPass_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XPass_Initialize(XPass *InstancePtr, u16 DeviceId);
XPass_Config* XPass_LookupConfig(u16 DeviceId);
int XPass_CfgInitialize(XPass *InstancePtr, XPass_Config *ConfigPtr);
#else
int XPass_Initialize(XPass *InstancePtr, const char* InstanceName);
int XPass_Release(XPass *InstancePtr);
#endif

void XPass_Start(XPass *InstancePtr);
u32 XPass_IsDone(XPass *InstancePtr);
u32 XPass_IsIdle(XPass *InstancePtr);
u32 XPass_IsReady(XPass *InstancePtr);
void XPass_Continue(XPass *InstancePtr);
void XPass_EnableAutoRestart(XPass *InstancePtr);
void XPass_DisableAutoRestart(XPass *InstancePtr);

void XPass_Set_input_r(XPass *InstancePtr, u64 Data);
u64 XPass_Get_input_r(XPass *InstancePtr);
void XPass_Set_output_r(XPass *InstancePtr, u64 Data);
u64 XPass_Get_output_r(XPass *InstancePtr);
void XPass_Set_numInputs(XPass *InstancePtr, u32 Data);
u32 XPass_Get_numInputs(XPass *InstancePtr);
void XPass_Set_processDelay(XPass *InstancePtr, u32 Data);
u32 XPass_Get_processDelay(XPass *InstancePtr);

void XPass_InterruptGlobalEnable(XPass *InstancePtr);
void XPass_InterruptGlobalDisable(XPass *InstancePtr);
void XPass_InterruptEnable(XPass *InstancePtr, u32 Mask);
void XPass_InterruptDisable(XPass *InstancePtr, u32 Mask);
void XPass_InterruptClear(XPass *InstancePtr, u32 Mask);
u32 XPass_InterruptGetEnabled(XPass *InstancePtr);
u32 XPass_InterruptGetStatus(XPass *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
