#tag Interface
Protected Interface ClinicalDataAcquisitionStandardsHarmonizationCDASHApiCallbackHandler
	#tag Method, Flags = &h0
		Sub MdrCdashVersionClassesClassDomainsGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashClassDomains)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCdashVersionClassesClassFieldsFieldGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashClassField)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCdashVersionClassesClassGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashClass)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCdashVersionClassesGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashProductClasses)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCdashVersionDomainsDomainFieldsFieldGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashDomainField)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCdashVersionDomainsDomainFieldsGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashDomainFields)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCdashVersionDomainsDomainGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashDomain)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCdashVersionDomainsGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashProductDomains)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCdashVersionGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashProduct)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrRootCdashClassesClassFieldsFieldGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.RootCdashClassField)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrRootCdashDomainsDomainFieldsFieldGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.RootCdashDomainField)
		  
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
