#tag Class
Protected Class AdamProductDatastructuresLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.AdamProductDatastructuresRef
	#tag EndProperty


	#tag Property, Flags = &h0
		priorVersion As OpenAPIClient.Models.AdamProductDatastructuresRef
	#tag EndProperty


	#tag Property, Flags = &h0
		dataStructures() As OpenAPIClient.Models.AdamDatastructureRefElement
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
			Type="AdamProductDatastructuresRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="priorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="AdamProductDatastructuresRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dataStructures"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="AdamDatastructureRefElement"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


