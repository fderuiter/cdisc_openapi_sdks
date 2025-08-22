#tag Interface
Protected Interface SENDImplementationGuideSENDIGApiCallbackHandler
	#tag Method, Flags = &h0
		Sub MdrRootSendigDatasetsDatasetVariablesVarGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.RootSendigDatasetVariable)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSendigVersionClassesClassDatasetsGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SendigClassDatasets)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSendigVersionClassesClassGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SendigClass)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSendigVersionClassesGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SendigClasses)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSendigVersionDatasetsDatasetGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SendigDataset)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSendigVersionDatasetsDatasetVariablesGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SendigDatasetVariables)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSendigVersionDatasetsDatasetVariablesVarGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SendigDatasetVariable)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSendigVersionDatasetsGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SendigDatasets)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSendigVersionGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SendigProduct)
		  
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
