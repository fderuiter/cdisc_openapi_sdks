#tag Class
Protected Class SdtmDatasetVariablesLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.SdtmDatasetVariablesRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentProduct As OpenAPIClient.Models.SdtmProductRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentClass As OpenAPIClient.Models.SdtmClassRef
	#tag EndProperty


	#tag Property, Flags = &h0
		priorVersion As OpenAPIClient.Models.SdtmDatasetVariablesRef
	#tag EndProperty


	#tag Property, Flags = &h0
		datasetVariables() As OpenAPIClient.Models.SdtmDatasetVariableRefElement
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
			Type="SdtmDatasetVariablesRef"
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
			Name="parentClass"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmClassRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="priorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmDatasetVariablesRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="datasetVariables"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmDatasetVariableRefElement"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


