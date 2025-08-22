#tag Class
Protected Class CdashDomain

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
		_links As OpenAPIClient.Models.CdashDomainLinks
	#tag EndProperty


	#tag Property, Flags = &h0
		fields() As OpenAPIClient.Models.CdashDomainField
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
			Name="_links"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CdashDomainLinks"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="fields"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CdashDomainField"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


