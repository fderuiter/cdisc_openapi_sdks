#tag Class
Protected Class CdashigDomainFieldsLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.CdashigDomainFieldsRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentProduct As OpenAPIClient.Models.CdashigProductRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentClass As OpenAPIClient.Models.CdashigClassRef
	#tag EndProperty


	#tag Property, Flags = &h0
		fields() As OpenAPIClient.Models.CdashigDomainFieldRefElement
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
			Name="Escapedself"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CdashigDomainFieldsRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="parentProduct"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CdashigProductRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="parentClass"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CdashigClassRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="fields"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CdashigDomainFieldRefElement"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


