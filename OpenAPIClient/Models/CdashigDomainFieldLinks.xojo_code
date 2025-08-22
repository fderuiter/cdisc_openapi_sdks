#tag Class
Protected Class CdashigDomainFieldLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.CdashigDomainFieldRef
	#tag EndProperty


	#tag Property, Flags = &h0
		codelist() As OpenAPIClient.Models.RootCtCodelistRefElement
	#tag EndProperty


	#tag Property, Flags = &h0
		parentProduct As OpenAPIClient.Models.CdashigProductRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentDomain As OpenAPIClient.Models.CdashigDomainRef
	#tag EndProperty


	#tag Property, Flags = &h0
		rootItem As OpenAPIClient.Models.RootCdashigDomainFieldRef
	#tag EndProperty


	#tag Property, Flags = &h0
		priorVersion As OpenAPIClient.Models.CdashigDomainFieldRef
	#tag EndProperty


	#tag Property, Flags = &h0
		sdtmClassMappingTargets() As OpenAPIClient.Models.SdtmClassVariableRefTarget
	#tag EndProperty


	#tag Property, Flags = &h0
		sdtmigDatasetMappingTargets() As OpenAPIClient.Models.SdtmigDatasetVariableRefTarget
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
			Type="CdashigDomainFieldRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="codelist"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="RootCtCodelistRefElement"
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
			Name="parentDomain"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CdashigDomainRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="rootItem"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="RootCdashigDomainFieldRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="priorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CdashigDomainFieldRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="sdtmClassMappingTargets"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmClassVariableRefTarget"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="sdtmigDatasetMappingTargets"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmigDatasetVariableRefTarget"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


