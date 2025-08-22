#tag Class
Protected Class ExportSdtmigVariablesRow

	#tag Property, Flags = &h0
		Version As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		Variable_Order As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		EscapedClass As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		Dataset_Name As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		Variable_Name As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		Variable_Label As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		Type As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		Controlled_Terms_Codelist_or_Format As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		Role As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		CDISC_Notes As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		Core As Xoson.O.OptionalString
	#tag EndProperty





	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Version"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Variable_Order"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="EscapedClass"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dataset_Name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Variable_Name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Variable_Label"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Type"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Controlled_Terms_Codelist_or_Format"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Role"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CDISC_Notes"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Core"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


