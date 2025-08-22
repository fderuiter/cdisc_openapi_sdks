#tag Class
Protected Class SdtmClass

	#tag Property, Flags = &h0
		ordinal As Xoson.O.OptionalString
	#tag EndProperty


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
		_links As OpenAPIClient.Models.SdtmClassLinks
	#tag EndProperty


	#tag Property, Flags = &h0
		classVariables() As OpenAPIClient.Models.SdtmClassVariable
	#tag EndProperty


	#tag Property, Flags = &h0
		datasets() As OpenAPIClient.Models.SdtmDataset
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
			Name="ordinal"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
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
			Name="_links"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmClassLinks"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="classVariables"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmClassVariable"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="datasets"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmDataset"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


