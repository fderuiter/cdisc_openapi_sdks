#tag Class
Protected Class SdtmigProduct

	#tag Property, Flags = &h0
		name As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		label As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		description As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		source As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		effectiveDate As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		registrationStatus As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		version As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		_links As OpenAPIClient.Models.SdtmigProductLinks
	#tag EndProperty


	#tag Property, Flags = &h0
		classes() As OpenAPIClient.Models.SdtmigClass
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
			Name="name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="label"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="source"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="effectiveDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="registrationStatus"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="version"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="_links"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmigProductLinks"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="classes"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmigClass"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


