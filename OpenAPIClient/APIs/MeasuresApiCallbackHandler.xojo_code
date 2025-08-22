#tag Interface
Protected Interface MeasuresApiCallbackHandler
	#tag Method, Flags = &h0
		Sub MdrQrsMeasureVersionGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QrsProduct)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrQrsMeasureVersionItemsGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QrsItems)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrQrsMeasureVersionItemsItemGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QrsItem)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrQrsMeasureVersionResponsegroupsGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QrsResponsegroups)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrQrsMeasureVersionResponsegroupsResponsegroupGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QrsResponsegroup)
		  
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
