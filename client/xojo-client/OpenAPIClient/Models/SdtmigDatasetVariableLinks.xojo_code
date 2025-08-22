#tag Class
Protected Class SdtmigDatasetVariableLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.SdtmigDatasetVariableRef
	#tag EndProperty


	#tag Property, Flags = &h0
		codelist() As OpenAPIClient.Models.RootCtCodelistRefElement
	#tag EndProperty


	#tag Property, Flags = &h0
		modelClassVariable As OpenAPIClient.Models.SdtmClassVariableRef
	#tag EndProperty


	#tag Property, Flags = &h0
		modelDatasetVariable As OpenAPIClient.Models.SdtmDatasetVariableRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentProduct As OpenAPIClient.Models.SdtmigProductRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentDataset As OpenAPIClient.Models.SdtmigDatasetRef
	#tag EndProperty


	#tag Property, Flags = &h0
		rootItem As OpenAPIClient.Models.RootSdtmigDatasetVariableRef
	#tag EndProperty


	#tag Property, Flags = &h0
		priorVersion As OpenAPIClient.Models.SdtmigDatasetVariableRef
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
			Type="SdtmigDatasetVariableRef"
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
			Name="modelClassVariable"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmClassVariableRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="modelDatasetVariable"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmDatasetVariableRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="parentProduct"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmigProductRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="parentDataset"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmigDatasetRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="rootItem"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="RootSdtmigDatasetVariableRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="priorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmigDatasetVariableRef"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


