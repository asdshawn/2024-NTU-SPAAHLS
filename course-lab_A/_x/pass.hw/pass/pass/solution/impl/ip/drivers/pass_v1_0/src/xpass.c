// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xpass.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XPass_CfgInitialize(XPass *InstancePtr, XPass_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XPass_Start(XPass *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPass_ReadReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_AP_CTRL) & 0x80;
    XPass_WriteReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XPass_IsDone(XPass *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPass_ReadReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XPass_IsIdle(XPass *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPass_ReadReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XPass_IsReady(XPass *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPass_ReadReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XPass_Continue(XPass *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPass_ReadReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_AP_CTRL) & 0x80;
    XPass_WriteReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XPass_EnableAutoRestart(XPass *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPass_WriteReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XPass_DisableAutoRestart(XPass *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPass_WriteReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_AP_CTRL, 0);
}

void XPass_Set_input_r(XPass *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPass_WriteReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_INPUT_R_DATA, (u32)(Data));
    XPass_WriteReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_INPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XPass_Get_input_r(XPass *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPass_ReadReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_INPUT_R_DATA);
    Data += (u64)XPass_ReadReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_INPUT_R_DATA + 4) << 32;
    return Data;
}

void XPass_Set_output_r(XPass *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPass_WriteReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_OUTPUT_R_DATA, (u32)(Data));
    XPass_WriteReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_OUTPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XPass_Get_output_r(XPass *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPass_ReadReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_OUTPUT_R_DATA);
    Data += (u64)XPass_ReadReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_OUTPUT_R_DATA + 4) << 32;
    return Data;
}

void XPass_Set_numInputs(XPass *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPass_WriteReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_NUMINPUTS_DATA, Data);
}

u32 XPass_Get_numInputs(XPass *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPass_ReadReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_NUMINPUTS_DATA);
    return Data;
}

void XPass_Set_processDelay(XPass *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPass_WriteReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_PROCESSDELAY_DATA, Data);
}

u32 XPass_Get_processDelay(XPass *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPass_ReadReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_PROCESSDELAY_DATA);
    return Data;
}

void XPass_InterruptGlobalEnable(XPass *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPass_WriteReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_GIE, 1);
}

void XPass_InterruptGlobalDisable(XPass *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPass_WriteReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_GIE, 0);
}

void XPass_InterruptEnable(XPass *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPass_ReadReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_IER);
    XPass_WriteReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_IER, Register | Mask);
}

void XPass_InterruptDisable(XPass *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPass_ReadReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_IER);
    XPass_WriteReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_IER, Register & (~Mask));
}

void XPass_InterruptClear(XPass *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XPass_WriteReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_ISR, Mask);
}

u32 XPass_InterruptGetEnabled(XPass *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPass_ReadReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_IER);
}

u32 XPass_InterruptGetStatus(XPass *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XPass_ReadReg(InstancePtr->Control_BaseAddress, XPASS_CONTROL_ADDR_ISR);
}

