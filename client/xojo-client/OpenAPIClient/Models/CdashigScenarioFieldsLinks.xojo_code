#tag Class
Protected Class CdashigScenarioFieldsLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.CdashigScenarioFieldsRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentProduct As OpenAPIClient.Models.CdashigProductRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentClass As OpenAPIClient.Models.CdashigClassRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentDomain As OpenAPIClient.Models.CdashigDomainRef
	#tag EndProperty


	#tag Property, Flags = &h0
		fields() As OpenAPIClient.Models.CdashigScenarioFieldRefElement
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
			Type="CdashigScenarioFieldsRef"
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
			Name="parentDomain"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CdashigDomainRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="fields"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CdashigScenarioFieldRefElement"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


