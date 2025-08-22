#tag Class
Protected Class RootCdashDomainFieldLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.RootCdashDomainFieldRef
	#tag EndProperty


	#tag Property, Flags = &h0
		versions() As OpenAPIClient.Models.CdashDomainFieldRefVersion
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
			Type="RootCdashDomainFieldRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="versions"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CdashDomainFieldRefVersion"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


