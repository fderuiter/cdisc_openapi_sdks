#tag Interface
Protected Interface AnalysisDataModelAndImplementationGuideADaMAndADaMIGApiCallbackHandler
	#tag Method, Flags = &h0
		Sub MdrAdamProductDatastructuresGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.AdamProductDatastructures)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrAdamProductDatastructuresStructureGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.AdamDatastructure)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrAdamProductDatastructuresStructureVariablesGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.AdamDatastructureVariables)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrAdamProductDatastructuresStructureVariablesVarGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.AdamVariable)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrAdamProductDatastructuresStructureVarsetsGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.AdamDatastructureVarsets)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrAdamProductDatastructuresStructureVarsetsVarsetGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.AdamVarset)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrAdamProductGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.AdamProduct)
		  
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
