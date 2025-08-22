#tag Interface
Protected Interface DefaultApiCallbackHandler
	#tag Method, Flags = &h0
		Sub MdrAboutGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.About)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrLastupdatedGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.Lastupdated)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrProductsDataAnalysisGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ProductgroupDataAnalysis)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrProductsDataCollectionGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ProductgroupDataCollection)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrProductsDataTabulationGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ProductgroupDataTabulation)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrProductsGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.Products)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrProductsMeasuresGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ProductgroupQrs)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrProductsTerminologyGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ProductgroupTerminology)
		  
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
