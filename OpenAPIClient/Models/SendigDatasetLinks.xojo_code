#tag Class
Protected Class SendigDatasetLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.SendigDatasetRef
	#tag EndProperty


	#tag Property, Flags = &h0
		modelDataset As OpenAPIClient.Models.SdtmDatasetRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentProduct As OpenAPIClient.Models.SendigProductRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentClass As OpenAPIClient.Models.SendigClassRef
	#tag EndProperty


	#tag Property, Flags = &h0
		priorVersion As OpenAPIClient.Models.SendigDatasetRef
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
			Type="SendigDatasetRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="modelDataset"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmDatasetRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="parentProduct"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SendigProductRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="parentClass"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SendigClassRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="priorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SendigDatasetRef"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


