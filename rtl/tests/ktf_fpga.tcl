create_project project [lindex $argv 0] -part [lindex $argv 5]

# using: find . -name "*.sv"
add_files {../posit/PositRoundToNearestEvenTest.sv}
add_files {../posit/PositRoundStochastic.sv}
add_files {../posit/QuireAddTest.sv}
add_files {../posit/PositCompare.sv}
add_files {../posit/operators/PositInstanceParams.sv}
add_files {../posit/operators/PositMathInstance.sv}
add_files {../posit/operators/PositMath.sv}
add_files {../posit/operators/PositConvertInstance.sv}
add_files {../posit/operators/PositConvert.sv}
add_files {../posit/operators/PositMathSpecial.sv}
add_files {../posit/operators/PositMathCompareInstance.sv}
add_files {../posit/operators/PositQuireMath.sv}
add_files {../posit/operators/PositQuireMathInstance.sv}
add_files {../posit/operators/PositMathCompare.sv}
add_files {../posit/PositDecode.sv}
add_files {../posit/PositMax.sv}
add_files {../posit/PositStubsForVCS.sv}
add_files {../posit/tools/PositProperties.sv}
add_files {../posit/tools/FloatToPositTool.sv}
add_files {../posit/PositScaleTest.sv}
add_files {../posit/PositToFloat.sv}
add_files {../posit/PositFromFloat.sv}
add_files {../posit/PositRoundHelper.sv}
add_files {../posit/PositFromFloatTest.sv}
add_files {../posit/PositQuireConvert.sv}
add_files {../posit/PositAddVersusQuireTest.sv}
add_files {../posit/PositPacked.sv}
add_files {../posit/PositEncodeTest.sv}
add_files {../posit/PositMultiply.sv}
add_files {../posit/PositUnpacked.sv}
add_files {../posit/PositMultiplyTest.sv}
add_files {../posit/PositMin.sv}
add_files {../posit/QuireAdd.sv}
add_files {../posit/QuireToPosit.sv}
add_files {../posit/PositEncode.sv}
add_files {../posit/QuireToPositTest.sv}
add_files {../posit/PositAdd.sv}
add_files {../posit/PositRoundToNearestEven.sv}
add_files {../posit/PositMultiplyForQuire.sv}
add_files {../posit/PositDecodeTest.sv}
add_files {../posit/PositDef_pkg.sv}
add_files {../posit/PositRoundStochasticTest.sv}
add_files {../posit/PositAddTest.sv}
add_files {../posit/PositToFloatTest.sv}
add_files {../posit/PositQuireMultiplyAddTest.sv}
add_files {../posit/PositDivideTest.sv}
add_files {../posit/QuireDivideTest.sv}
add_files {../posit/PositQuireConvertTest.sv}
add_files {../posit/PositCompareTest.sv}
add_files {../posit/PositRound.sv}
add_files {../posit/lut_func/PositLUTGenerator.sv}
add_files {../posit/lut_func/PositLUT.sv}
add_files {../posit/lut_func/PositLUT_Sqrt.sv}
add_files {../posit/lut_func/PositLUT_Exp.sv}
add_files {../posit/lut_func/PositLUT_Sigmoid.sv}
add_files {../posit/lut_func/PositLUT_Inv.sv}
add_files {../posit/lut_func/PositLUT_Ln.sv}
add_files {../posit/QuireDef_pkg.sv}
add_files {../posit/PositDivide.sv}
add_files {../float/Float.sv}
add_files {../float/operators/FloatConvert.sv}
add_files {../float/FloatMultiply.sv}
add_files {../float/FloatContractTest.sv}
add_files {../float/FloatAdd.sv}
add_files {../float/tools/FloatToFloatTool.sv}
add_files {../float/FloatMultiplyAddWithFloat.sv}
add_files {../float/FloatExpand.sv}
add_files {../float/FloatRoundStochastic.sv}
add_files {../float/FloatMultiplyTest.sv}
add_files {../float/FloatRoundToNearestEven.sv}
add_files {../float/FloatAddTest.sv}
add_files {../float/FloatProperties.sv}
add_files {../float/KulischToFloat.sv}
add_files {../float/FloatDef_pkg.sv}
add_files {../float/FloatContract.sv}
add_files {../float/FloatExpandTest.sv}
add_files {../float/FloatStubsForVCS.sv}
add_files {../float/FloatMultiplyAdd.sv}
add_files {../utils/Comparison_pkg.sv}
add_files {../utils/Add.sv}
add_files {../utils/ShiftLeftSticky.sv}
add_files {../utils/KulischDef_pkg.sv}
add_files {../utils/ZeroPadRight.sv}
add_files {../utils/Memory.sv}
add_files {../utils/TrailingStickySelect.sv}
add_files {../utils/DebugFunctions.sv}
add_files {../utils/KulischAccumulatorDivide.sv}
add_files {../utils/ShiftRightSticky.sv}
add_files {../utils/ShiftRegister.sv}
add_files {../utils/KulischConvertFixedTest.sv}
add_files {../utils/UtilsStubsForVCS.sv}
add_files {../utils/ShiftLeftStickyTest.sv}
add_files {../utils/CountLeadingZerosTest.sv}
add_files {../utils/Divider.sv}
add_files {../utils/PartSelectReduceOr.sv}
add_files {../utils/RoundToNearestEven.sv}
add_files {../utils/FieldRead.sv}
add_files {../utils/DividerTest.sv}
add_files {../utils/PartSelect.sv}
add_files {../utils/ZeroPadLeft.sv}
add_files {../utils/Kulisch.sv}
add_files {../utils/KulischConvertFixed.sv}
add_files {../utils/ShiftLeft.sv}
add_files {../utils/CountLeadingZerosShiftLeftTest.sv}
add_files {../utils/CountLeadingZeros.sv}
add_files {../utils/OneHotToBinary.sv}
add_files {../utils/LFSRTest.sv}
add_files {../utils/FieldWrite.sv}
add_files {../utils/CountLeadingZerosShiftLeft.sv}
add_files {../utils/DividerFixedPointTest.sv}
add_files {../utils/EndianByteSwap.sv}
add_files {../utils/LFSR.sv}
add_files {../utils/PipelineRegister.sv}
add_files {../utils/ShiftRightStickyTest.sv}
add_files {../utils/DividerFixedPoint.sv}
add_files {../utils/EndianByteSwapTest.sv}
add_files {../utils/ShiftRightArithmetic.sv}
add_files {../utils/ReduceOrTrailingBitsTest.sv}
add_files {../utils/Functions_pkg.sv}
add_files {../utils/MSBArbiter.sv}
add_files {../utils/ReduceOrTrailingBits.sv}
add_files {../utils/KulischAccumulatorAdd.sv}
add_files {../log/luts/Pow2DeltaLUT.sv}
add_files {../log/luts/Pow2Mem.sv}
add_files {../log/luts/Pow2LUT_4x11.sv}
add_files {../log/luts/Log2LUT_8x5.sv}
add_files {../log/luts/Pow2LUT_5x9.sv}
add_files {../log/luts/Pow2DeltaLUT_4x8.sv}
add_files {../log/luts/Log2LUT_5x4.sv}
add_files {../log/luts/Log2DeltaLUT.sv}
add_files {../log/luts/Pow2LUT.sv}
add_files {../log/luts/Log2DeltaLUTTest.sv}
add_files {../log/luts/Pow2LUT_10x11.sv}
add_files {../log/luts/Pow2LUT_8x9.sv}
add_files {../log/luts/Log2LUT_5x7.sv}
add_files {../log/luts/Pow2DeltaLUTTest.sv}
add_files {../log/luts/Log2LUT_8x8.sv}
add_files {../log/luts/Log2LUT_8x7.sv}
add_files {../log/luts/Pow2DeltaLUT_4x5.sv}
add_files {../log/luts/Pow2LUT_7x8.sv}
add_files {../log/luts/Log2Mem.sv}
add_files {../log/luts/Log2LUT.sv}
add_files {../log/luts/Log2Map.sv}
add_files {../log/luts/Pow2DeltaLUT_10x11.sv}
add_files {../log/luts/Pow2LUT_4x5.sv}
add_files {../log/luts/Log2DeltaLUT_8x7.sv}
add_files {../log/luts/Log2DeltaLUT_5x7.sv}
add_files {../log/luts/Log2LUT_11x10.sv}
add_files {../log/luts/Pow2LUT_4x8.sv}
add_files {../log/luts/Log2DeltaLUT_11x10.sv}
add_files {../log/luts/Log2LUT_9x8.sv}
add_files {../log/luts/Pow2LUT_5x8.sv}
add_files {../log/luts/Pow2Map.sv}
add_files {../log/luts/Log2LUT_8x4.sv}
add_files {../log/FloatSignedNarrow.sv}
add_files {../log/LogCompare.sv}
add_files {../log/LogMultiplyAddWithFloat.sv}
add_files {../log/LogStubsForVCS.sv}
add_files {../log/LogAddTest.sv}
add_files {../log/operators/LogMathCompare.sv}
add_files {../log/operators/LogMathInstance.sv}
add_files {../log/operators/LogLinearMathInstance.sv}
add_files {../log/operators/LogMathCompareInstance.sv}
add_files {../log/operators/LogInstanceParams.sv}
add_files {../log/operators/LogMath.sv}
add_files {../log/operators/LogConvertInstance.sv}
add_files {../log/operators/LogLinearMath.sv}
add_files {../log/operators/LogConvert.sv}
add_files {../log/tools/FloatToLogTool.sv}
add_files {../log/tools/LogProperties.sv}
add_files {../log/conversions/LogNumberUnpackedToFloatSigned.sv}
add_files {../log/conversions/LogCompactToLogUnpackedTest.sv}
add_files {../log/conversions/LinearFixedToFloatSignedTest.sv}
add_files {../log/conversions/LogNumberUnpackedToLogCompactTest.sv}
add_files {../log/conversions/LogCompactToLogUnpacked.sv}
add_files {../log/conversions/LinearFixedToFloatSigned.sv}
add_files {../log/conversions/LogNumberUnpackedToLogNumber.sv}
add_files {../log/conversions/LogNumberToLogNumberUnpacked.sv}
add_files {../log/conversions/LogNumberUnpackedToLogCompact.sv}
add_files {../log/conversions/FloatToFloatSigned.sv}
add_files {../log/conversions/FloatSignedToLinearFixedTest.sv}
add_files {../log/conversions/FloatSignedToFloat.sv}
add_files {../log/conversions/FloatSignedToLog.sv}
add_files {../log/conversions/FloatToFloatSignedTest.sv}
add_files {../log/conversions/FloatSignedToLinearFixed.sv}
add_files {../log/LogToLinearFixed.sv}
add_files {../log/LogToFloat.sv}
add_files {../log/LinearFixedToLogTest.sv}
add_files {../log/LogMultiplyAddTest.sv}
add_files {../log/LogMultiplyTest.sv}
add_files {../log/LogCompareTest.sv}
add_files {../log/LogAddWithFloat.sv}
add_files {../log/LinearFixedToLogCompact.sv}
add_files {../log/LogNumberUnpackedExtractTrailing.sv}
add_files {../log/LinearFixedToLog.sv}
add_files {../log/LogDef_pkg.sv}
add_files {../log/FloatSignedRoundToNearestEven.sv}
add_files {../log/LogMultiply.sv}
add_files {../log/LogMultiplyAdd.sv}
add_files {../log/types/FloatSigned.sv}
add_files {../log/types/LogNumberCompact.sv}
add_files {../log/types/LogNumber.sv}
add_files {../log/types/LogNumberUnpacked.sv}
add_files {../log/LogAdd.sv}
add_files {../log/FloatToLog.sv}

add_files -fileset constrs_1 -norecurse [lindex $argv 6]

update_compile_order -fileset sources_1
update_compile_order -fileset sources_1

create_run synth -flow {Vivado Synthesis 2018}
create_run impl -parent_run synth -flow {Vivado Implementation 2018}

set_property top KulischToFloat [current_fileset]
set_property generic "ACC_NON_FRAC=[lindex $argv 1] ACC_FRAC=[lindex $argv 2] EXP=[lindex $argv 3] FRAC=[lindex $argv 4] SATURATE_MAX=1" [current_fileset] 

set_property STEPS.SYNTH_DESIGN.ARGS.MAX_DSP 0 [get_runs synth]

reset_run synth
reset_run impl

#launch_runs synth -jobs 4
#wait_on_run synth

launch_runs impl -jobs 4
wait_on_run impl

exit 
