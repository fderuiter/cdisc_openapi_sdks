#tag Interface
Protected Interface SearchesApiCallbackHandler
	#tag Method, Flags = &h0
		Sub MdrSearchGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.DefaultSearchResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSearchScopesGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.MdrSearchScopesGet200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSearchScopesScopeGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ScopeValues)
		  
		End Sub
	#tag EndMethod




	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Interface
#tag EndInterface
