#tag Interface
Protected Interface StudyDataTabulationModelSDTMApiCallbackHandler
	#tag Method, Flags = &h0
		Sub MdrRootSdtmClassesClassVariablesVarGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.RootSdtmClassVariable)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrRootSdtmDatasetsDatasetVariablesVarGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.RootSdtmDatasetVariable)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSdtmVersionClassesClassDatasetsGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SdtmClassDatasets)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSdtmVersionClassesClassGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SdtmClass)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSdtmVersionClassesClassVariablesGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SdtmClassVariables)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSdtmVersionClassesClassVariablesVarGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SdtmClassVariable)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSdtmVersionClassesGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SdtmClasses)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSdtmVersionDatasetsDatasetGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SdtmDataset)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSdtmVersionDatasetsDatasetVariablesGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SdtmDatasetVariables)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSdtmVersionDatasetsDatasetVariablesVarGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SdtmDatasetVariable)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSdtmVersionDatasetsGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SdtmDatasets)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrSdtmVersionGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SdtmProduct)
		  
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
