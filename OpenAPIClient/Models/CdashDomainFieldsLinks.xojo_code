#tag Class
Protected Class CdashDomainFieldsLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.CdashDomainFieldsRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentProduct As OpenAPIClient.Models.CdashProductRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentClass As OpenAPIClient.Models.CdashClassRef
	#tag EndProperty


	#tag Property, Flags = &h0
		fields() As OpenAPIClient.Models.CdashDomainFieldRefElement
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
			Type="CdashDomainFieldsRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="parentProduct"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CdashProductRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="parentClass"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CdashClassRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="fields"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CdashDomainFieldRefElement"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


