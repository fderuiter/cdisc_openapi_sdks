#tag Interface
Protected Interface SDTMImplementationGuideSDTMIGApiCallbackHandler
	#tag Method, Flags = &h0
		Sub MdrRootSdtmigDatasetsDatasetVariablesVarGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.RootSdtmigDatasetVariable)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSdtmigVersionClassesClassDatasetsGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SdtmigClassDatasets)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSdtmigVersionClassesClassGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SdtmigClass)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSdtmigVersionClassesGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SdtmigClasses)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSdtmigVersionDatasetsDatasetGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SdtmigDataset)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSdtmigVersionDatasetsDatasetVariablesGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SdtmigDatasetVariables)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSdtmigVersionDatasetsDatasetVariablesVarGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SdtmigDatasetVariable)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSdtmigVersionDatasetsGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SdtmigDatasets)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSdtmigVersionGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SdtmigProduct)
		  
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
