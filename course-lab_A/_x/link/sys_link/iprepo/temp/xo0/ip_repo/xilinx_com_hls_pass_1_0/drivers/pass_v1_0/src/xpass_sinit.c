// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xpass.h"

extern XPass_Config XPass_ConfigTable[];

XPass_Config *XPass_LookupConfig(u16 DeviceId) {
	XPass_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XPASS_NUM_INSTANCES; Index++) {
		if (XPass_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XPass_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XPass_Initialize(XPass *InstancePtr, u16 DeviceId) {
	XPass_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XPass_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XPass_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

