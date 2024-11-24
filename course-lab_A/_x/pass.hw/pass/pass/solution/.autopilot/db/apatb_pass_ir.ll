; ModuleID = '/mnt/HLSNAS/02.IZunsR/course-lab_A/Vitis-Tutorials/Hardware_Acceleration/Design_Tutorials/07-host-code-opt/reference-files/_x/pass.hw/pass/pass/solution/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<512>" = type { %"struct.ap_int_base<512, true>" }
%"struct.ap_int_base<512, true>" = type { %"struct.ssdm_int<512, true>" }
%"struct.ssdm_int<512, true>" = type { i512 }

; Function Attrs: noinline
define void @apatb_pass_ir(%"struct.ap_int<512>"* noalias nocapture nonnull readonly %input, %"struct.ap_int<512>"* noalias nocapture nonnull %output, i32 %numInputs, i32 %processDelay) local_unnamed_addr #0 {
entry:
  %input_copy = alloca i512, align 512
  %output_copy = alloca i512, align 512
  call fastcc void @copy_in(%"struct.ap_int<512>"* nonnull %input, i512* nonnull align 512 %input_copy, %"struct.ap_int<512>"* nonnull %output, i512* nonnull align 512 %output_copy)
  call void @apatb_pass_hw(i512* %input_copy, i512* %output_copy, i32 %numInputs, i32 %processDelay)
  call void @copy_back(%"struct.ap_int<512>"* %input, i512* %input_copy, %"struct.ap_int<512>"* %output, i512* %output_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in(%"struct.ap_int<512>"* noalias readonly, i512* noalias align 512, %"struct.ap_int<512>"* noalias readonly, i512* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<512>.11"(i512* align 512 %1, %"struct.ap_int<512>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<512>.11"(i512* align 512 %3, %"struct.ap_int<512>"* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out(%"struct.ap_int<512>"* noalias, i512* noalias readonly align 512, %"struct.ap_int<512>"* noalias, i512* noalias readonly align 512) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<512>"(%"struct.ap_int<512>"* %0, i512* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<512>"(%"struct.ap_int<512>"* %2, i512* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<512>"(%"struct.ap_int<512>"* noalias, i512* noalias readonly align 512) unnamed_addr #3 {
entry:
  %2 = icmp eq %"struct.ap_int<512>"* %0, null
  %3 = icmp eq i512* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_int<512>", %"struct.ap_int<512>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = load i512, i512* %1, align 512
  store i512 %5, i512* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<512>.11"(i512* noalias align 512, %"struct.ap_int<512>"* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq i512* %0, null
  %3 = icmp eq %"struct.ap_int<512>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_int<512>", %"struct.ap_int<512>"* %1, i32 0, i32 0, i32 0, i32 0
  %5 = load i512, i512* %.0.0.04, align 64
  store i512 %5, i512* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_pass_hw(i512*, i512*, i32, i32)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back(%"struct.ap_int<512>"* noalias, i512* noalias readonly align 512, %"struct.ap_int<512>"* noalias, i512* noalias readonly align 512) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<512>"(%"struct.ap_int<512>"* %2, i512* align 512 %3)
  ret void
}

define void @pass_hw_stub_wrapper(i512*, i512*, i32, i32) #4 {
entry:
  %4 = alloca %"struct.ap_int<512>"
  %5 = alloca %"struct.ap_int<512>"
  call void @copy_out(%"struct.ap_int<512>"* %4, i512* %0, %"struct.ap_int<512>"* %5, i512* %1)
  call void @pass_hw_stub(%"struct.ap_int<512>"* %4, %"struct.ap_int<512>"* %5, i32 %2, i32 %3)
  call void @copy_in(%"struct.ap_int<512>"* %4, i512* %0, %"struct.ap_int<512>"* %5, i512* %1)
  ret void
}

declare void @pass_hw_stub(%"struct.ap_int<512>"*, %"struct.ap_int<512>"*, i32, i32)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
