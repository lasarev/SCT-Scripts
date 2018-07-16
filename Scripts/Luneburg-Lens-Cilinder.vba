' Luneburg-Lens-Cilinder

Sub Main ()

	'@ switch Bounding Box on
	Plot.DrawBox True

	'@ switch working plane off
	Plot.DrawWorkplane "false"

	BeginHide
	StoreDoubleParameter "lens_radius_mm", 12
	StoreDoubleParameter "level_count", 6
	StoreDoubleParameter "fmin", 11
	StoreDoubleParameter "fmax", 13
	StoreDoubleParameter "fctrl", 12
	EndHide

	Dim sCommand As String

	sCommand = sCommand + "Dim d, EpsMaterial, Eps, a, Delta, fmin, fmax, fctrl As Double" + vbLf
	sCommand = sCommand + "Dim R, x, y, z As Integer" + vbLf

	sCommand = sCommand + "R = RestoreDoubleParameter(""lens_radius_mm"")" + vbLf
	sCommand = sCommand + "d = RestoreDoubleParameter(""level_count"")" + vbLf

	sCommand = sCommand + "fmin  = RestoreDoubleParameter(""fmin"")" + vbLf
	sCommand = sCommand + "fmax  = RestoreDoubleParameter(""fmax"")" + vbLf
	sCommand = sCommand + "fctrl = RestoreDoubleParameter(""fctrl"")" + vbLf

	sCommand = sCommand + "Delta = R / d" + vbLf
	sCommand = sCommand + "For x = 0 To (d - 1)" + vbLf

	sCommand = sCommand + "	Eps = 2 - (x*Delta / R)^2" + vbLf

	sCommand = sCommand + "	With Material" + vbLf
	sCommand = sCommand + "		 .Reset" + vbLf
	sCommand = sCommand + "		 .Name ""Plastic_"" + CStr(x)" + vbLf
	sCommand = sCommand + "		 .Folder """"" + vbLf
	sCommand = sCommand + "		 .FrqType ""all""" + vbLf
	sCommand = sCommand + "		 .Type ""Normal""" + vbLf
	sCommand = sCommand + "		 .MaterialUnit ""Frequency"", ""Hz""" + vbLf
	sCommand = sCommand + "		 .MaterialUnit ""Geometry"", ""m""" + vbLf
	sCommand = sCommand + "		 .MaterialUnit ""Time"", ""s""" + vbLf
	sCommand = sCommand + "		 .MaterialUnit ""Temperature"", ""Kelvin""" + vbLf
	sCommand = sCommand + "		 .Epsilon CStr(Eps)" + vbLf
	sCommand = sCommand + "		 .Mue ""1""" + vbLf
	sCommand = sCommand + "		 .Sigma ""0""" + vbLf
	sCommand = sCommand + "		 .TanD ""0.0""" + vbLf
	sCommand = sCommand + "		 .TanDFreq ""0.0""" + vbLf
	sCommand = sCommand + "		 .TanDGiven ""False""" + vbLf
	sCommand = sCommand + "		 .TanDModel ""ConstTanD""" + vbLf
	sCommand = sCommand + "		 .EnableUserConstTanDModelOrderEps ""False""" + vbLf
	sCommand = sCommand + "		 .ConstTanDModelOrderEps ""1""" + vbLf
	sCommand = sCommand + "		 .SetElParametricConductivity ""False""" + vbLf
	sCommand = sCommand + "		 .ReferenceCoordSystem ""Global""" + vbLf
	sCommand = sCommand + "		 .CoordSystemType ""Cartesian""" + vbLf
	sCommand = sCommand + "		 .SigmaM ""0""" + vbLf
	sCommand = sCommand + "		 .TanDM ""0.0""" + vbLf
	sCommand = sCommand + "		 .TanDMFreq ""0.0""" + vbLf
	sCommand = sCommand + "		 .TanDMGiven ""False""" + vbLf
	sCommand = sCommand + "		 .TanDMModel ""ConstTanD""" + vbLf
	sCommand = sCommand + "		 .EnableUserConstTanDModelOrderMue ""False""" + vbLf
	sCommand = sCommand + "		 .ConstTanDModelOrderMue ""1""" + vbLf
	sCommand = sCommand + "		 .SetMagParametricConductivity ""False""" + vbLf
	sCommand = sCommand + "		 .DispModelEps  ""None""" + vbLf
	sCommand = sCommand + "		 .DispModelMue ""None""" + vbLf
	sCommand = sCommand + "		 .DispersiveFittingSchemeEps ""Nth Order""" + vbLf
	sCommand = sCommand + "		 .MaximalOrderNthModelFitEps ""10""" + vbLf
	sCommand = sCommand + "		 .ErrorLimitNthModelFitEps ""0.1""" + vbLf
	sCommand = sCommand + "		 .UseOnlyDataInSimFreqRangeNthModelEps ""False""" + vbLf
	sCommand = sCommand + "		 .DispersiveFittingSchemeMue ""Nth Order""" + vbLf
	sCommand = sCommand + "		 .MaximalOrderNthModelFitMue ""10""" + vbLf
	sCommand = sCommand + "		 .ErrorLimitNthModelFitMue ""0.1""" + vbLf
	sCommand = sCommand + "		 .UseOnlyDataInSimFreqRangeNthModelMue ""False""" + vbLf
	sCommand = sCommand + "		 .UseGeneralDispersionEps ""False""" + vbLf
	sCommand = sCommand + "		 .UseGeneralDispersionMue ""False""" + vbLf
	sCommand = sCommand + "		 .NLAnisotropy ""False""" + vbLf
	sCommand = sCommand + "		 .NLAStackingFactor ""1""" + vbLf
	sCommand = sCommand + "		 .NLADirectionX ""1""" + vbLf
	sCommand = sCommand + "		 .NLADirectionY ""0""" + vbLf
	sCommand = sCommand + "		 .NLADirectionZ ""0""" + vbLf
	sCommand = sCommand + "		 .Rho ""0""" + vbLf
	sCommand = sCommand + "		 .ThermalType ""Normal""" + vbLf
	sCommand = sCommand + "		 .ThermalConductivity ""0""" + vbLf
	sCommand = sCommand + "		 .HeatCapacity ""0""" + vbLf
	sCommand = sCommand + "		 .DynamicViscosity ""0""" + vbLf
	sCommand = sCommand + "		 .MetabolicRate ""0""" + vbLf
	sCommand = sCommand + "		 .BloodFlow ""0""" + vbLf
	sCommand = sCommand + "		 .VoxelConvection ""0""" + vbLf
	sCommand = sCommand + "		 .MechanicsType ""Unused""" + vbLf
	sCommand = sCommand + "		 .Colour ""0"", ""1"", ""1""" + vbLf
	sCommand = sCommand + "		 .Wireframe ""False""" + vbLf
	sCommand = sCommand + "		 .Reflection ""False""" + vbLf
	sCommand = sCommand + "		 .Allowoutline ""True""" + vbLf
	sCommand = sCommand + "		 .Transparentoutline ""False""" + vbLf
	sCommand = sCommand + "		 .Transparency ""0""" + vbLf
	sCommand = sCommand + "		 .Create" + vbLf
	sCommand = sCommand + "	End With" + vbLf

	sCommand = sCommand + "	With Cylinder" + vbLf
	sCommand = sCommand + "	     .Reset" + vbLf
	sCommand = sCommand + "	     .Name ""level_"" + CStr(x)" + vbLf
	sCommand = sCommand + "	     .Component ""lens""" + vbLf
	sCommand = sCommand + "	     .Material ""Plastic_"" + CStr(x)" + vbLf
	sCommand = sCommand + "	     .OuterRadius CStr((x + 1)*Delta)" + vbLf
	sCommand = sCommand + "	     .InnerRadius CStr(x*Delta)" + vbLf
	sCommand = sCommand + "	     .Axis ""x""" + vbLf
	sCommand = sCommand + "	     .Xrange CStr(-R), CStr(R)" + vbLf
	sCommand = sCommand + "	     .Ycenter ""0""" + vbLf
	sCommand = sCommand + "	     .Zcenter ""0""" + vbLf
	sCommand = sCommand + "	     .Segments ""0""" + vbLf
	sCommand = sCommand + "	     .Create" + vbLf
	sCommand = sCommand + "	End With" + vbLf

	sCommand = sCommand + "Next" + vbLf

	sCommand = sCommand + "With PlaneWave" + vbLf
	sCommand = sCommand + "     .Reset" + vbLf
	sCommand = sCommand + "     .Normal ""0"", ""0"", ""1""" + vbLf
	sCommand = sCommand + "     .EVector ""1"", ""0"", ""0""" + vbLf
	sCommand = sCommand + "     .Polarization ""Linear""" + vbLf
	sCommand = sCommand + "     .ReferenceFrequency ""0""" + vbLf
	sCommand = sCommand + "     .PhaseDifference ""-90.0""" + vbLf
	sCommand = sCommand + "     .CircularDirection ""Left""" + vbLf
	sCommand = sCommand + "     .AxialRatio ""0.0""" + vbLf
	sCommand = sCommand + "     .SetUserDecouplingPlane ""False""" + vbLf
	sCommand = sCommand + "     .Store" + vbLf
	sCommand = sCommand + "End With" + vbLf

	sCommand = sCommand + "With Solver" + vbLf
	sCommand = sCommand + "	.FrequencyRange CStr(10), CStr(12)" + vbLf
	sCommand = sCommand + "End With" + vbLf

	sCommand = sCommand + "With Units" + vbLf
	sCommand = sCommand + "	.Geometry ""mm""" + vbLf
	sCommand = sCommand + "	.Frequency ""GHz""" + vbLf
	sCommand = sCommand + "	.Time ""ns""" + vbLf
	sCommand = sCommand + "End With" + vbLf

	sCommand = sCommand + "With Background" + vbLf
	sCommand = sCommand + "	.Reset" + vbLf
	sCommand = sCommand + "	.Type ""Normal""" + vbLf
	sCommand = sCommand + "	.Epsilon ""1.0""" + vbLf
	sCommand = sCommand + "	.Mue ""1.0""" + vbLf
	sCommand = sCommand + "	.ThermalType ""Normal""" + vbLf
	sCommand = sCommand + "	.ThermalConductivity ""0.0""" + vbLf
	sCommand = sCommand + "	.XminSpace ""lens_radius_mm/2""" + vbLf
	sCommand = sCommand + "	.XmaxSpace ""lens_radius_mm/2""" + vbLf
	sCommand = sCommand + "	.YminSpace ""lens_radius_mm/2""" + vbLf
	sCommand = sCommand + "	.YmaxSpace ""lens_radius_mm/2""" + vbLf
	sCommand = sCommand + "	.ZminSpace ""lens_radius_mm/2""" + vbLf
	sCommand = sCommand + "	.ZmaxSpace ""lens_radius_mm/2""" + vbLf
	sCommand = sCommand + "	.ApplyInAllDirections ""False""" + vbLf
	sCommand = sCommand + "End With" + vbLf

	sCommand = sCommand + "With Boundary" + vbLf
	sCommand = sCommand + "	.Xmin ""open""" + vbLf
	sCommand = sCommand + "	.Xmax ""open""" + vbLf
	sCommand = sCommand + "	.Ymin ""open""" + vbLf
	sCommand = sCommand + "	.Ymax ""open""" + vbLf
	sCommand = sCommand + "	.Zmin ""open""" + vbLf
	sCommand = sCommand + "	.Zmax ""open""" + vbLf
	sCommand = sCommand + "	.Zsymmetry ""none""" + vbLf
	sCommand = sCommand + "	.Zsymmetry ""none""" + vbLf
	sCommand = sCommand + "End With" + vbLf

	sCommand = sCommand + "With Boundary" + vbLf
	sCommand = sCommand + "	.MinimumDistanceReferenceFrequencyType ""CenterNMonitors""" + vbLf
	sCommand = sCommand + "End With" + vbLf

	sCommand = sCommand + "With Monitor" + vbLf
	sCommand = sCommand + "     .Reset" + vbLf
	sCommand = sCommand + "     .Name ""e-field (f="" + CStr(fctrl) + "";x=0)""" + vbLf
	sCommand = sCommand + "     .Dimension ""Volume""" + vbLf
	sCommand = sCommand + "     .Domain ""Frequency""" + vbLf
	sCommand = sCommand + "     .FieldType ""Efield""" + vbLf
	sCommand = sCommand + "     .Frequency CStr(fctrl)" + vbLf
	sCommand = sCommand + "     .UseSubvolume ""True""" + vbLf
	sCommand = sCommand + "     .Coordinates ""Structure""" + vbLf
	sCommand = sCommand + "     .SetSubvolume ""-lens_radius_mm*2"", ""lens_radius_mm*2"", ""-lens_radius_mm*2"", ""lens_radius_mm*2"", ""-lens_radius_mm*2"", ""lens_radius_mm*2""" + vbLf
	sCommand = sCommand + "     .SetSubvolumeOffset ""0.0"", ""0.0"", ""0.0"", ""0.0"", ""0.0"", ""0.0""" + vbLf
	sCommand = sCommand + "     .PlaneNormal ""x""" + vbLf
	sCommand = sCommand + "     .PlanePosition ""0""" + vbLf
	sCommand = sCommand + "     .Create" + vbLf
	sCommand = sCommand + "End With" + vbLf

	sCommand = sCommand + "With Solver" + vbLf
	sCommand = sCommand + "	.CalculationType ""TD-S""" + vbLf
	sCommand = sCommand + "	.StimulationPort ""All""" + vbLf
	sCommand = sCommand + "	.StimulationMode ""All""" + vbLf
	sCommand = sCommand + "	.SteadyStateLimit ""-40""" + vbLf
	sCommand = sCommand + "	.AdaptivePortMeshing False" + vbLf
	sCommand = sCommand + "End With" + vbLf

	sCommand = sCommand + "With PostProcess1D" + vbLf
	sCommand = sCommand + "	.ActivateOperation ""vswr"", ""True""" + vbLf
	sCommand = sCommand + "End With" + vbLf

	sCommand = sCommand + "With PostProcess1D" + vbLf
	sCommand = sCommand + "	.ActivateOperation ""yz-matrices"", ""True""" + vbLf
	sCommand = sCommand + "End With" + vbLf

	AddToHistory "Construct Lens", sCommand

End Sub
