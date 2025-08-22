#tag Class
Protected Class ProductgroupDataTabulationLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.ProductgroupRef
	#tag EndProperty


	#tag Property, Flags = &h0
		sdtm() As OpenAPIClient.Models.SdtmProductRefElement
	#tag EndProperty


	#tag Property, Flags = &h0
		sdtmig() As OpenAPIClient.Models.SdtmigProductRefElement
	#tag EndProperty


	#tag Property, Flags = &h0
		sendig() As OpenAPIClient.Models.SendigProductRefElement
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
			Name="sdtm"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmProductRefElement"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="sdtmig"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmigProductRefElement"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="sendig"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SendigProductRefElement"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


