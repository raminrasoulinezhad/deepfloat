######################################################
# Script for Cadence RTL Compiler synthesis      
######################################################

#####################################################################################################################
# Libraries #########################################################################################################
#####################################################################################################################
# Tutorial sample in the RTL compiler install directory:
# 	/home/eda/cadence/installs/CTOS142/share/synth/tutorials/tech/tutorial.lib
# ############################################################################################################
# FreePDK - 45nm
# 		~/Download/NCSU/NCSU-FreePDK45-1.4/ncsu-FreePDK45-1.4/FreePDK45/osu_soc/lib/files/gscl45nm.lib
# ############################################################################################################
# STMicro - 28nm
#	Worked (all of them, each one is a corner):
#		/mnt/edatools/PDKs/STMicro28nm/cmos28fdsoi_29/C28SOI_SC_12_CORE_LL/5.1-05/libs 
#			i.g. C28SOI_SC_12_CORE_LL_ff28_1.15V_0.00V_0.00V_0.00V_m40C.lib
#		/mnt/edatools/PDKs/STMicro28nm/cmos28fdsoi_29/C28SOI_SC_12_CORE_LR/5.1-03/libs/
#			i.g. C28SOI_SC_12_CORE_LR_tt28_1.20V_25C.lib
# ############################################################################################################
# STMicro - 130nm
#	Worked (all of them, each one is a corner):
#		/mnt/edatools/PDKs/ST130nm_HCMOS9A_NVM200Addon/hcmos9a_109/CORE9A85L035/5.2-00/libs
#			i.g. CORE9A85L035_bc_1.98V_125C.lib
#		/mnt/edatools/PDKs/ST130nm_HCMOS9A_NVM200Addon/hcmos9a_109/CORE9A85L05/5.3-00/libs
#			i.g. CORE9A85L05_wc_1.65V_170C.lib
#		/mnt/edatools/PDKs/ST130nm_HCMOS9A_NVM200Addon/hcmos9a_109/CORE9ALPULL/2.0/libs
#			i.g. CORE9ALPULL_bc_1.40V_125C.lib
#		/mnt/edatools/PDKs/ST130nm_HCMOS9A_NVM200Addon/hcmos9a_109/CORX9ALPULL/3.1-01/libs
#			i.g. CORX9ALPULL_nom_1.20V_25C.lib
#####################################################################################################################

set_attribute hdl_search_path {../}

set_attribute lib_search_path {/mnt/edatools/PDKs/STMicro28nm/cmos28fdsoi_29/C28SOI_SC_12_CORE_LR/5.1-03/libs/}
set_attribute library [list C28SOI_SC_12_CORE_LR_tt28_1.20V_25C.lib]
set_attribute information_level 6 

#set extra_pkg [list VFLOAT_May_2015/GM/float_pkg.vhd];

# using: find . -name "*.sv"
set myFiles [list posit/PositRoundToNearestEvenTest.sv  posit/PositRoundStochastic.sv  posit/QuireAddTest.sv  posit/PositCompare.sv  posit/operators/PositInstanceParams.sv  posit/operators/PositMathInstance.sv  posit/operators/PositMath.sv  posit/operators/PositConvertInstance.sv  posit/operators/PositConvert.sv  posit/operators/PositMathSpecial.sv  posit/operators/PositMathCompareInstance.sv  posit/operators/PositQuireMath.sv  posit/operators/PositQuireMathInstance.sv  posit/operators/PositMathCompare.sv  posit/PositDecode.sv  posit/PositMax.sv  posit/PositStubsForVCS.sv  posit/tools/PositProperties.sv  posit/tools/FloatToPositTool.sv  posit/PositScaleTest.sv  posit/PositToFloat.sv  posit/PositFromFloat.sv  posit/PositRoundHelper.sv  posit/PositFromFloatTest.sv  posit/PositQuireConvert.sv  posit/PositAddVersusQuireTest.sv  posit/PositPacked.sv  posit/PositEncodeTest.sv  posit/PositMultiply.sv  posit/PositUnpacked.sv  posit/PositMultiplyTest.sv  posit/PositMin.sv  posit/QuireAdd.sv  posit/QuireToPosit.sv  posit/PositEncode.sv  posit/QuireToPositTest.sv  posit/PositAdd.sv  posit/PositRoundToNearestEven.sv  posit/PositMultiplyForQuire.sv  posit/PositDecodeTest.sv  posit/PositDef_pkg.sv  posit/PositRoundStochasticTest.sv  posit/PositAddTest.sv  posit/PositToFloatTest.sv  posit/PositQuireMultiplyAddTest.sv  posit/PositDivideTest.sv  posit/QuireDivideTest.sv  posit/PositQuireConvertTest.sv  posit/PositCompareTest.sv  posit/PositRound.sv  posit/lut_func/PositLUTGenerator.sv  posit/lut_func/PositLUT.sv  posit/lut_func/PositLUT_Sqrt.sv  posit/lut_func/PositLUT_Exp.sv  posit/lut_func/PositLUT_Sigmoid.sv  posit/lut_func/PositLUT_Inv.sv  posit/lut_func/PositLUT_Ln.sv  posit/QuireDef_pkg.sv  posit/PositDivide.sv  float/Float.sv  float/operators/FloatConvert.sv  float/FloatMultiply.sv  float/FloatContractTest.sv  float/FloatAdd.sv  float/tools/FloatToFloatTool.sv  float/FloatMultiplyAddWithFloat.sv  float/FloatExpand.sv  float/FloatRoundStochastic.sv  float/FloatMultiplyTest.sv  float/FloatRoundToNearestEven.sv  float/FloatAddTest.sv  float/FloatProperties.sv  float/KulischToFloat.sv  float/FloatDef_pkg.sv  float/FloatContract.sv  float/FloatExpandTest.sv  float/FloatStubsForVCS.sv  float/FloatMultiplyAdd.sv  utils/Comparison_pkg.sv  utils/Add.sv  utils/ShiftLeftSticky.sv  utils/KulischDef_pkg.sv  utils/ZeroPadRight.sv  utils/Memory.sv  utils/TrailingStickySelect.sv  utils/DebugFunctions.sv  utils/KulischAccumulatorDivide.sv  utils/ShiftRightSticky.sv  utils/ShiftRegister.sv  utils/KulischConvertFixedTest.sv  utils/UtilsStubsForVCS.sv  utils/ShiftLeftStickyTest.sv  utils/CountLeadingZerosTest.sv  utils/Divider.sv  utils/PartSelectReduceOr.sv  utils/RoundToNearestEven.sv  utils/FieldRead.sv  utils/DividerTest.sv  utils/PartSelect.sv  utils/ZeroPadLeft.sv  utils/Kulisch.sv  utils/KulischConvertFixed.sv  utils/ShiftLeft.sv  utils/CountLeadingZerosShiftLeftTest.sv  utils/CountLeadingZeros.sv  utils/OneHotToBinary.sv  utils/LFSRTest.sv  utils/FieldWrite.sv  utils/CountLeadingZerosShiftLeft.sv  utils/DividerFixedPointTest.sv  utils/EndianByteSwap.sv  utils/LFSR.sv  utils/PipelineRegister.sv  utils/ShiftRightStickyTest.sv  utils/DividerFixedPoint.sv  utils/EndianByteSwapTest.sv  utils/ShiftRightArithmetic.sv  utils/ReduceOrTrailingBitsTest.sv  utils/Functions_pkg.sv  utils/MSBArbiter.sv  utils/ReduceOrTrailingBits.sv  utils/KulischAccumulatorAdd.sv  log/luts/Pow2DeltaLUT.sv  log/luts/Pow2Mem.sv  log/luts/Pow2LUT_4x11.sv  log/luts/Log2LUT_8x5.sv  log/luts/Pow2LUT_5x9.sv  log/luts/Pow2DeltaLUT_4x8.sv  log/luts/Log2LUT_5x4.sv  log/luts/Log2DeltaLUT.sv  log/luts/Pow2LUT.sv  log/luts/Log2DeltaLUTTest.sv  log/luts/Pow2LUT_10x11.sv  log/luts/Pow2LUT_8x9.sv  log/luts/Log2LUT_5x7.sv  log/luts/Pow2DeltaLUTTest.sv  log/luts/Log2LUT_8x8.sv  log/luts/Log2LUT_8x7.sv  log/luts/Pow2DeltaLUT_4x5.sv  log/luts/Pow2LUT_7x8.sv  log/luts/Log2Mem.sv  log/luts/Log2LUT.sv  log/luts/Log2Map.sv  log/luts/Pow2DeltaLUT_10x11.sv  log/luts/Pow2LUT_4x5.sv  log/luts/Log2DeltaLUT_8x7.sv  log/luts/Log2DeltaLUT_5x7.sv  log/luts/Log2LUT_11x10.sv  log/luts/Pow2LUT_4x8.sv  log/luts/Log2DeltaLUT_11x10.sv  log/luts/Log2LUT_9x8.sv  log/luts/Pow2LUT_5x8.sv  log/luts/Pow2Map.sv  log/luts/Log2LUT_8x4.sv  log/FloatSignedNarrow.sv  log/LogCompare.sv  log/LogMultiplyAddWithFloat.sv  log/LogStubsForVCS.sv  log/LogAddTest.sv  log/operators/LogMathCompare.sv  log/operators/LogMathInstance.sv  log/operators/LogLinearMathInstance.sv  log/operators/LogMathCompareInstance.sv  log/operators/LogInstanceParams.sv  log/operators/LogMath.sv  log/operators/LogConvertInstance.sv  log/operators/LogLinearMath.sv  log/operators/LogConvert.sv  log/tools/FloatToLogTool.sv  log/tools/LogProperties.sv  log/conversions/LogNumberUnpackedToFloatSigned.sv  log/conversions/LogCompactToLogUnpackedTest.sv  log/conversions/LinearFixedToFloatSignedTest.sv  log/conversions/LogNumberUnpackedToLogCompactTest.sv  log/conversions/LogCompactToLogUnpacked.sv  log/conversions/LinearFixedToFloatSigned.sv  log/conversions/LogNumberUnpackedToLogNumber.sv  log/conversions/LogNumberToLogNumberUnpacked.sv  log/conversions/LogNumberUnpackedToLogCompact.sv  log/conversions/FloatToFloatSigned.sv  log/conversions/FloatSignedToLinearFixedTest.sv  log/conversions/FloatSignedToFloat.sv  log/conversions/FloatSignedToLog.sv  log/conversions/FloatToFloatSignedTest.sv  log/conversions/FloatSignedToLinearFixed.sv  log/LogToLinearFixed.sv  log/LogToFloat.sv  log/LinearFixedToLogTest.sv  log/LogMultiplyAddTest.sv  log/LogMultiplyTest.sv  log/LogCompareTest.sv  log/LogAddWithFloat.sv  log/LinearFixedToLogCompact.sv  log/LogNumberUnpackedExtractTrailing.sv  log/LinearFixedToLog.sv  log/LogDef_pkg.sv  log/FloatSignedRoundToNearestEven.sv  log/LogMultiply.sv  log/LogMultiplyAdd.sv  log/types/FloatSigned.sv  log/types/LogNumberCompact.sv  log/types/LogNumber.sv  log/types/LogNumberUnpacked.sv  log/LogAdd.sv  log/FloatToLog.sv];
# name of top level module
set basename FloatMultiplyAddWithFloat;
set myClk clock                  ;# clock name
set myPeriod_ps 2000             ;# Clock period in ps
set myInDelay_ns 0.0             ;# delay from clock to inputs valid
set myOutDelay_ns 0.0            ;# delay from clock to output valid
set runname initialtest          ;# name appended to output files

# parameters
set a_e $paramters(a_e)
set a_f $paramters(a_f)
set b_e $paramters(b_e)
set b_f $paramters(b_f)
set acc_e $paramters(acc_e)
set acc_f $paramters(acc_f)
#set a_e [lindex $argv 0]
#set a_f [lindex $argv 1]
#set b_e [lindex $argv 2]
#set b_f [lindex $argv 3]
#set acc_e [lindex $argv 4]
#set acc_f [lindex $argv 5]

set t_b 1

#*********************************************************
#*   below here shouldn't need to be changed...          *
#*********************************************************

#read_hdl -sv -library fp_lib ${extra_pkg}

# Analyze and Elaborate the HDL files
read_hdl -sv ${myFiles}
# https://www.csee.umbc.edu/~tinoosh/cmpe641/tutorials/rc/rc_commandref.pdf, page 285
elaborate -parameters {{EXP_IN_A ${a_e}} {FRAC_IN_A ${a_f}} {EXP_IN_B ${b_e}} {FRAC_IN_B ${b_f}} {FRAC_IN_A ${acc_e}} {FRAC_IN_A ${acc_f}} {TRAILING_BITS ${t_b}}} ${basename}

# Apply Constraints and generate clocks
set clock [define_clock -period ${myPeriod_ps} -name ${myClk} [clock_ports]]	
external_delay -input $myInDelay_ns -clock ${myClk} [find / -port ports_in/*]
external_delay -output $myOutDelay_ns -clock ${myClk} [find / -port ports_out/*]

# Sets transition to default values for Synopsys SDC format, 
# fall/rise 400ps
dc::set_clock_transition .4 $myClk

# check that the design is OK so far
check_design -unresolved
report timing -lint

# Synthesize the design to the target library
synthesize -to_mapped

# Write out the reports
report timing > ${basename}_${runname}_timing.rep
report gates  > ${basename}_${runname}_cell.rep
report area > ${basename}_${runname}_area.rep
report power  > ${basename}_${runname}_power.rep

# Write out the structural Verilog and sdc files
write_hdl -mapped >  ${basename}_${runname}.v
write_sdc >  ${basename}_${runname}.sdc

quit

