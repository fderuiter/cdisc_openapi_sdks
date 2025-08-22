#tag Class
Protected Class CdashigClassDomainsLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.CdashigClassDomainsRef
	#tag EndProperty


	#tag Property, Flags = &h0
		domains() As OpenAPIClient.Models.CdashigDomainRefElement
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
			Type="CdashigClassDomainsRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="domains"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CdashigDomainRefElement"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


