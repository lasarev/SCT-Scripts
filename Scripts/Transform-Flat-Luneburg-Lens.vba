' Transform-Flat-Luneburg-Lens

Sub Main ()

'@ define curve spline: curve1:spline1

With Spline 
     .Reset 
     .Name "spline1" 
     .Curve "curve1" 
     .Point "0.36", "0" 
     .SetInterpolationType "PointInterpolation" 
     .LineTo "0.4", "-0.3" 
     .LineTo "0.5", "-0.49" 
     .LineTo "0.6", "-0.49"  
     .LineTo "0.85", "0"  
     .LineTo "0.6", "0,49" 
     .LineTo "0.5", "0.49" 
     .LineTo "0.4", "0.3" 
     .LineTo "0.36", "0" 
     .Create 
End With

'@ new component: component1

Component.New "component1"

'@ define coverprofile: component1:solid1

With CoverCurve
     .Reset 
     .Name "solid1" 
     .Component "component1" 
     .Material "Vacuum" 
     .Curve "curve1" 
     .Create
End With

'@ pick face

Pick.PickFaceFromId "component1:solid1", "1"

'@ define extrude: component2:solid2

With Extrude 
     .Reset 
     .Name "solid2" 
     .Component "component1" 
     .Material "Vacuum" 
     .Mode "Picks" 
     .Height "2.0" 
     .Twist "0.0" 
     .Taper "0.0" 
     .UsePicksForHeight "False" 
     .DeleteBaseFaceSolid "False" 
     .ClearPickedFace "True" 
     .Create 
End With

'@ delete shape: component1:solid1

Solid.Delete "component1:solid1"

'@ define curve spline: curve1:spline1

With Spline 
     .Reset 
     .Name "spline1" 
     .Curve "curve1" 
     .Point "0.26", "0" 
     .SetInterpolationType "PointInterpolation" 
     .LineTo "0.3", "-0.48" 
     .LineTo "0.5", "-0.8" 
     .LineTo "0.93", "0" 
     .LineTo "0.5", "0.8"
     .LineTo "0.3", "0.48" 
     .LineTo "0.26", "0" 
     .Create 
End With

'@ define coverprofile: component1:solid3

With CoverCurve
     .Reset 
     .Name "solid3" 
     .Component "component1" 
     .Material "Vacuum" 
     .Curve "curve1" 
     .Create
End With

'@ pick face

Pick.PickFaceFromId "component1:solid3", "1"

'@ define extrude: component2:solid4

With Extrude 
     .Reset 
     .Name "solid4" 
     .Component "component1" 
     .Material "Vacuum" 
     .Mode "Picks" 
     .Height "2" 
     .Twist "0.0" 
     .Taper "0.0" 
     .UsePicksForHeight "False" 
     .DeleteBaseFaceSolid "False" 
     .ClearPickedFace "True" 
     .Create 
End With

'@ delete shape: component1:solid1

Solid.Delete "component1:solid3"

'@ define curve spline: curve1:spline1

With Spline 
     .Reset 
     .Name "spline1" 
     .Curve "curve1" 
     .Point "0.2", "-0.9" 
     .SetInterpolationType "PointInterpolation" 
     .LineTo "0.3", "-1" 
     .LineTo "0.4", "-1" 
     .LineTo "1.1", "-0.2" 
     .LineTo "1.11", "0" 
     .LineTo "1.1", "0.2" 
     .LineTo "0.4", "1" 
     .LineTo "0.3", "1" 
     .LineTo "0.2", "0.9" 
     .LineTo "0.06", "0" 
     .LineTo "0.2", "-0.9" 
     .Create 
End With

'@ define coverprofile: component1:solid3

With CoverCurve
     .Reset 
     .Name "solid3" 
     .Component "component1" 
     .Material "Vacuum" 
     .Curve "curve1" 
     .Create
End With

'@ pick face

Pick.PickFaceFromId "component1:solid3", "1"

'@ define extrude: component2:solid4

With Extrude 
     .Reset 
     .Name "solid6" 
     .Component "component1" 
     .Material "Vacuum" 
     .Mode "Picks" 
     .Height "2" 
     .Twist "0.0" 
     .Taper "0.0" 
     .UsePicksForHeight "False" 
     .DeleteBaseFaceSolid "False" 
     .ClearPickedFace "True" 
     .Create 
End With

'@ delete shape: component1:solid1

Solid.Delete "component1:solid3"

'@ define curve spline: curve1:spline1

With Spline 
     .Reset 
     .Name "spline1" 
     .Curve "curve1" 
     .Point "0", "-1.22" 
     .SetInterpolationType "PointInterpolation" 
     .LineTo "0.3", "-1.2" 
     .LineTo "0.7", "-1" 
     .LineTo "1.15", "-0.4" 
     .LineTo "1.225", "0" 
     .LineTo "1.15", "0.4" 
     .LineTo "0.7", "1" 
     .LineTo "0.3", "1.2" 
     .LineTo "0", "1.22" 
     .Create 
End With

'@ define curve line: curve1:line1

With Line
     .Reset 
     .Name "line1" 
     .Curve "curve1" 
     .X1 "-0" 
     .Y1 "-1.22" 
     .X2 "0" 
     .Y2 "1.22" 
     .Create
End With

'@ define coverprofile: component1:solid7

With CoverCurve
     .Reset 
     .Name "solid7" 
     .Component "component1" 
     .Material "Vacuum" 
     .Curve "curve1" 
     .Create
End With

'@ pick face

Pick.PickFaceFromId "component1:solid7", "1"

'@ define extrude: component1:solid8

With Extrude 
     .Reset 
     .Name "solid8" 
     .Component "component1" 
     .Material "Vacuum" 
     .Mode "Picks" 
     .Height "2" 
     .Twist "0.0" 
     .Taper "0.0" 
     .UsePicksForHeight "False" 
     .DeleteBaseFaceSolid "False" 
     .ClearPickedFace "True" 
     .Create 
End With

'@ transform: translate component2

With Transform 
     .Reset 
     .Name "component1" 
     .Vector "0", "0", "-1" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ transform: scale component2

With Transform 
     .Reset 
     .Name "component1" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "60", "60", "60" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ define brick: component2:solid9

With Brick
     .Reset 
     .Name "solid9" 
     .Component "component2" 
     .Material "PEC" 
     .Xrange "0", "-20" 
     .Yrange "-7.9", "7.9" 
     .Zrange "-3.95", "3.95" 
     .Create
End With
With Brick
     .Reset 
     .Name "solid10" 
     .Component "component2" 
     .Material "PEC" 
     .Xrange "0", "-20" 
     .Yrange "-8.92", "8.92" 
     .Zrange "-4.97", "4.97" 
     .Create
End With

'@ boolean subtract shapes: component2:solid10, component2:solid9

Solid.Subtract "component2:solid10", "component2:solid9"

'@ pick face

Pick.PickFaceFromId "component2:solid10", "10"

'@ switch working plane

Plot.DrawWorkplane "false"

'@ switch bounding box

Plot.DrawBox "True"

'@ define port: 1

With Port 
     .Reset 
     .PortNumber "1" 
     .Label "" 
     .NumberOfModes "1" 
     .AdjustPolarization "True" 
     .PolarizationAngle "90" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "0" 
     .Coordinates "Picks" 
     .Orientation "positive" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "-20", "-20" 
     .Yrange "-8.92", "8.92" 
     .Zrange "-4.97", "4.97" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Create 
End With

'@ define background

With Background 
     .ResetBackground 
     .XminSpace "10" 
     .XmaxSpace "30" 
     .YminSpace "10" 
     .YmaxSpace "10" 
     .ZminSpace "0" 
     .ZmaxSpace "0" 
     .ApplyInAllDirections "False" 
End With 
With Material 
     .Reset 
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "Hz"
     .MaterialUnit "Geometry", "m"
     .MaterialUnit "Time", "s"
     .MaterialUnit "Temperature", "Kelvin"
     .Epsilon "1"
     .Mue "1"
     .Sigma "0.0"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstSigma"
     .EnableUserConstTanDModelOrderEps "False"
     .ConstTanDModelOrderEps "1"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstSigma"
     .EnableUserConstTanDModelOrderMue "False"
     .ConstTanDModelOrderMue "1"
     .SetMagParametricConductivity "False"
     .DispModelEps  "None"
     .DispModelMue "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMue "Nth Order"
     .MaximalOrderNthModelFitMue "10"
     .ErrorLimitNthModelFitMue "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMue "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMue "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .HeatCapacity "0"
     .DynamicViscosity "0"
     .MetabolicRate "0"
     .BloodFlow "0"
     .VoxelConvection "0"
     .MechanicsType "Unused"
     .Colour "0.6", "0.6", "0.6" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .ChangeBackgroundMaterial
End With

'@ define frequency range

Solver.FrequencyRange "10", "20"

'@ define pml specials

With Boundary
     .ReflectionLevel "0.0001" 
     .MinimumDistanceType "Fraction" 
     .MinimumDistancePerWavelengthNewMeshEngine "4" 
     .MinimumDistanceReferenceFrequencyType "Center" 
     .FrequencyForMinimumDistance "15" 
     .SetAbsoluteDistance "0.0" 
End With

'@ define monitors (using linear step)

With Monitor
          .Reset 
          .Domain "Frequency"
          .FieldType "Efield"
          .Dimension "Volume" 
          .UseSubvolume "False" 
          .Coordinates "Structure" 
          .SetSubvolume "-20", "65.961681880243", "-60.695566883028", "60.695566883028", "-60", "60" 
          .SetSubvolumeOffset "0.0", "0.0", "0.0", "0.0", "0.0", "0.0" 
          .CreateUsingLinearStep "10", "20", "1"
End With

'@ define monitors (using linear step)

With Monitor
          .Reset 
          .Domain "Frequency"
          .FieldType "Farfield"
          .ExportFarfieldSource "False" 
          .UseSubvolume "False" 
          .Coordinates "Structure" 
          .SetSubvolume "-20", "65.961681880243", "-60.695566883028", "60.695566883028", "-60", "60" 
          .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
          .SetSubvolumeOffsetType "FractionOfWavelength" 
          .CreateUsingLinearStep "10", "20", "1"
End With

'@ define time domain solver parameters

Mesh.SetCreator "High Frequency" 
With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "All"
     .StimulationMode "All"
     .SteadyStateLimit "-30.0"
     .MeshAdaption "False"
     .AutoNormImpedance "False"
     .NormingImpedance "50"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ change solver type

ChangeSolverType "HF Time Domain"

'@ define pml specials

With Boundary
     .ReflectionLevel "0.0001" 
     .MinimumDistanceType "Fraction" 
     .MinimumDistancePerWavelengthNewMeshEngine "4" 
     .MinimumDistanceReferenceFrequencyType "CenterNMonitors" 
     .FrequencyForMinimumDistance "10" 
     .SetAbsoluteDistance "0.0" 
End With

'@ define units

With Units 
     .Geometry "mm" 
     .Frequency "GHz" 
     .Time "s" 
     .TemperatureUnit "Kelvin" 
     .Voltage "V" 
     .Current "A" 
     .Resistance "Ohm" 
     .Conductance "Siemens" 
     .Capacitance "PikoF" 
     .Inductance "NanoH" 
End With

'@ define pml specials

With Boundary
     .ReflectionLevel "0.0001" 
     .MinimumDistanceType "Fraction" 
     .MinimumDistancePerWavelengthNewMeshEngine "4" 
     .MinimumDistanceReferenceFrequencyType "CenterNMonitors" 
     .FrequencyForMinimumDistance "10" 
     .SetAbsoluteDistance "0.0" 
End With

'@ define boundaries

With Boundary
     .Xmin "expanded open"
     .Xmax "expanded open"
     .Ymin "expanded open"
     .Ymax "expanded open"
     .Zmin "expanded open"
     .Zmax "expanded open"
     .Xsymmetry "none"
     .Ysymmetry "none"
     .Zsymmetry "none"
     .ApplyInAllDirections "True"
End With

'@ delete shape: component1:solid7

Solid.Delete "component1:solid7"

'@ paste structure data: 1

With SAT 
     .Reset 
     .FileName "*1.cby" 
     .SubProjectScaleFactor "0.001" 
     .ImportToActiveCoordinateSystem "True" 
     .ScaleToUnit "True" 
     .Curves "False" 
     .Read 
End With

'@ paste structure data: 2

With SAT 
     .Reset 
     .FileName "*2.cby" 
     .SubProjectScaleFactor "0.001" 
     .ImportToActiveCoordinateSystem "True" 
     .ScaleToUnit "True" 
     .Curves "False" 
     .Read 
End With

'@ paste structure data: 3

With SAT 
     .Reset 
     .FileName "*3.cby" 
     .SubProjectScaleFactor "0.001" 
     .ImportToActiveCoordinateSystem "True" 
     .ScaleToUnit "True" 
     .Curves "False" 
     .Read 
End With

'@ boolean subtract shapes: component1:solid8, component1:solid6_1

Solid.Subtract "component1:solid8", "component1:solid6_1"

'@ boolean subtract shapes: component1:solid6, component1:solid4_1

Solid.Subtract "component1:solid6", "component1:solid4_1"

'@ boolean subtract shapes: component1:solid4, component1:solid2_1

Solid.Subtract "component1:solid4", "component1:solid2_1"

'@ define material: material1

With Material 
     .Reset 
     .Name "material1"
     .Folder ""
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "s"
     .MaterialUnit "Temperature", "Kelvin"
     .Epsilon "3.75"
     .Mue "1"
     .Sigma "0"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .EnableUserConstTanDModelOrderEps "False"
     .ConstTanDModelOrderEps "1"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .EnableUserConstTanDModelOrderMue "False"
     .ConstTanDModelOrderMue "1"
     .SetMagParametricConductivity "False"
     .DispModelEps  "None"
     .DispModelMue "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMue "Nth Order"
     .MaximalOrderNthModelFitMue "10"
     .ErrorLimitNthModelFitMue "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMue "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMue "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .HeatCapacity "0"
     .DynamicViscosity "0"
     .MetabolicRate "0"
     .BloodFlow "0"
     .VoxelConvection "0"
     .MechanicsType "Unused"
     .Colour "0", "1", "1" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ change material: component1:solid2 to: material1

Solid.ChangeMaterial "component1:solid2", "material1"

'@ define material: material2

With Material 
     .Reset 
     .Name "material2"
     .Folder ""
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "s"
     .MaterialUnit "Temperature", "Kelvin"
     .Epsilon "3.25"
     .Mue "1"
     .Sigma "0"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .EnableUserConstTanDModelOrderEps "False"
     .ConstTanDModelOrderEps "1"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .EnableUserConstTanDModelOrderMue "False"
     .ConstTanDModelOrderMue "1"
     .SetMagParametricConductivity "False"
     .DispModelEps  "None"
     .DispModelMue "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMue "Nth Order"
     .MaximalOrderNthModelFitMue "10"
     .ErrorLimitNthModelFitMue "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMue "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMue "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .HeatCapacity "0"
     .DynamicViscosity "0"
     .MetabolicRate "0"
     .BloodFlow "0"
     .VoxelConvection "0"
     .MechanicsType "Unused"
     .Colour "0", "1", "1" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ change material: component1:solid4 to: material2

Solid.ChangeMaterial "component1:solid4", "material2"

'@ define material: material3

With Material 
     .Reset 
     .Name "material3"
     .Folder ""
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "s"
     .MaterialUnit "Temperature", "Kelvin"
     .Epsilon "2.5"
     .Mue "1"
     .Sigma "0"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .EnableUserConstTanDModelOrderEps "False"
     .ConstTanDModelOrderEps "1"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .EnableUserConstTanDModelOrderMue "False"
     .ConstTanDModelOrderMue "1"
     .SetMagParametricConductivity "False"
     .DispModelEps  "None"
     .DispModelMue "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMue "Nth Order"
     .MaximalOrderNthModelFitMue "10"
     .ErrorLimitNthModelFitMue "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMue "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMue "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .HeatCapacity "0"
     .DynamicViscosity "0"
     .MetabolicRate "0"
     .BloodFlow "0"
     .VoxelConvection "0"
     .MechanicsType "Unused"
     .Colour "0", "1", "1" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ change material: component1:solid6 to: material3

Solid.ChangeMaterial "component1:solid6", "material3"

'@ define material: material4

With Material 
     .Reset 
     .Name "material4"
     .Folder ""
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "s"
     .MaterialUnit "Temperature", "Kelvin"
     .Epsilon "1.5"
     .Mue "1"
     .Sigma "0"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .EnableUserConstTanDModelOrderEps "False"
     .ConstTanDModelOrderEps "1"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .EnableUserConstTanDModelOrderMue "False"
     .ConstTanDModelOrderMue "1"
     .SetMagParametricConductivity "False"
     .DispModelEps  "None"
     .DispModelMue "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMue "Nth Order"
     .MaximalOrderNthModelFitMue "10"
     .ErrorLimitNthModelFitMue "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMue "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMue "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .HeatCapacity "0"
     .DynamicViscosity "0"
     .MetabolicRate "0"
     .BloodFlow "0"
     .VoxelConvection "0"
     .MechanicsType "Unused"
     .Colour "0", "1", "1" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ change material: component1:solid8 to: material4

Solid.ChangeMaterial "component1:solid8", "material4"

'@ farfield plot options

With FarfieldPlot 
     .Plottype "Polar" 
     .Vary "angle2" 
     .Theta "90" 
     .Phi "90" 
     .Step "1" 
     .Step2 "1" 
     .SetLockSteps "True" 
     .SetPlotRangeOnly "False" 
     .SetThetaStart "0" 
     .SetThetaEnd "180" 
     .SetPhiStart "0" 
     .SetPhiEnd "360" 
     .SetTheta360 "False" 
     .SymmetricRange "False" 
     .SetTimeDomainFF "False" 
     .SetFrequency "-1" 
     .SetTime "0" 
     .SetColorByValue "True" 
     .DrawStepLines "False" 
     .DrawIsoLongitudeLatitudeLines "False" 
     .ShowStructure "False" 
     .ShowStructureProfile "False" 
     .SetStructureTransparent "False" 
     .SetFarfieldTransparent "False" 
     .SetSpecials "enablepolarextralines" 
     .SetPlotMode "Directivity" 
     .Distance "1" 
     .UseFarfieldApproximation "True" 
     .SetScaleLinear "False" 
     .SetLogRange "40" 
     .SetLogNorm "0" 
     .DBUnit "0" 
     .EnableFixPlotMaximum "False" 
     .SetFixPlotMaximumValue "1" 
     .SetInverseAxialRatio "False" 
     .SetAxesType "user" 
     .SetAntennaType "unknown" 
     .Phistart "1.000000e+000", "0.000000e+000", "0.000000e+000" 
     .Thetastart "0.000000e+000", "0.000000e+000", "1.000000e+000" 
     .PolarizationVector "0.000000e+000", "1.000000e+000", "0.000000e+000" 
     .SetCoordinateSystemType "spherical" 
     .SetAutomaticCoordinateSystem "True" 
     .SetPolarizationType "Linear" 
     .SlantAngle 0.000000e+000 
     .Origin "bbox" 
     .Userorigin "0.000000e+000", "0.000000e+000", "0.000000e+000" 
     .SetUserDecouplingPlane "False" 
     .UseDecouplingPlane "False" 
     .DecouplingPlaneAxis "X" 
     .DecouplingPlanePosition "0.000000e+000" 
     .LossyGround "False" 
     .GroundEpsilon "1" 
     .GroundKappa "0" 
     .EnablePhaseCenterCalculation "False" 
     .SetPhaseCenterAngularLimit "3.000000e+001" 
     .SetPhaseCenterComponent "boresight" 
     .SetPhaseCenterPlane "both" 
     .ShowPhaseCenter "True" 
     .StoreSettings
End With

End Sub
