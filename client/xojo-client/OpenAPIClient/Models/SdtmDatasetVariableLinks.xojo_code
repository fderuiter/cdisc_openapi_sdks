#tag Class
Protected Class SdtmDatasetVariableLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.SdtmDatasetVariableRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentProduct As OpenAPIClient.Models.SdtmProductRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentDataset As OpenAPIClient.Models.SdtmDatasetRef
	#tag EndProperty


	#tag Property, Flags = &h0
		rootItem As OpenAPIClient.Models.RootSdtmDatasetVariableRef
	#tag EndProperty


	#tag Property, Flags = &h0
		priorVersion As OpenAPIClient.Models.SdtmDatasetVariableRef
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
			Type="SdtmDatasetVariableRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="parentProduct"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmProductRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="parentDataset"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmDatasetRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="rootItem"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="RootSdtmDatasetVariableRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="priorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmDatasetVariableRef"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


