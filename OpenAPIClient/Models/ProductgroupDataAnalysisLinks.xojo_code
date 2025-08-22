#tag Class
Protected Class ProductgroupDataAnalysisLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.ProductgroupRef
	#tag EndProperty


	#tag Property, Flags = &h0
		adam() As OpenAPIClient.Models.AdamProductRefElement
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
			Type="ProductgroupRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="adam"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="AdamProductRefElement"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


