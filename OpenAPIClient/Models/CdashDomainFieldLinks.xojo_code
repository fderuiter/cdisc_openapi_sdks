#tag Class
Protected Class CdashDomainFieldLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.CdashDomainFieldRef
	#tag EndProperty


	#tag Property, Flags = &h0
		codelist() As OpenAPIClient.Models.RootCtCodelistRefElement
	#tag EndProperty


	#tag Property, Flags = &h0
		parentProduct As OpenAPIClient.Models.CdashProductRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentClass As OpenAPIClient.Models.CdashClassRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentDomain As OpenAPIClient.Models.CdashDomainRef
	#tag EndProperty


	#tag Property, Flags = &h0
		rootItem As OpenAPIClient.Models.RootCdashDomainFieldRef
	#tag EndProperty


	#tag Property, Flags = &h0
		priorVersion As OpenAPIClient.Models.CdashDomainFieldRef
	#tag EndProperty


	#tag Property, Flags = &h0
		sdtmDatasetMappingTargets() As OpenAPIClient.Models.SdtmDatasetVariableRefTarget
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
			Type="CdashDomainFieldRef"
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
			Name="parentDomain"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CdashDomainRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="rootItem"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="RootCdashDomainFieldRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="priorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CdashDomainFieldRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="sdtmDatasetMappingTargets"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmDatasetVariableRefTarget"
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


