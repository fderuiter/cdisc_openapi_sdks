#tag Class
Protected Class ProductgroupDataCollectionLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.ProductgroupRef
	#tag EndProperty


	#tag Property, Flags = &h0
		cdash() As OpenAPIClient.Models.CdashProductRefElement
	#tag EndProperty


	#tag Property, Flags = &h0
		cdashig() As OpenAPIClient.Models.CdashigProductRefElement
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
			Name="cdash"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CdashProductRefElement"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="cdashig"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CdashigProductRefElement"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


