#tag Interface
Protected Interface CDASHImplementationGuideCDASHIGApiCallbackHandler
	#tag Method, Flags = &h0
		Sub MdrCdashigVersionClassesClassDomainsGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashigClassDomains)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCdashigVersionClassesClassGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashigClass)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCdashigVersionClassesClassScenariosGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashigClassScenarios)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCdashigVersionClassesGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashigProductClasses)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCdashigVersionDomainsDomainFieldsFieldGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashigDomainField)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCdashigVersionDomainsDomainFieldsGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashigDomainFields)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCdashigVersionDomainsDomainGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashigDomain)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCdashigVersionDomainsGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashigProductDomains)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCdashigVersionGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashigProduct)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCdashigVersionScenariosDomainScenarioFieldsFieldGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashigScenarioField)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCdashigVersionScenariosDomainScenarioFieldsGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashigScenarioFields)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCdashigVersionScenariosDomainScenarioGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashigScenario)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCdashigVersionScenariosGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CdashigProductScenarios)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrRootCdashigDomainsDomainFieldsFieldGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.RootCdashigDomainField)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrRootCdashigScenariosDomainScenarioFieldsFieldGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.RootCdashigScenarioField)
		  
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
