#tag Interface
Protected Interface ControlledTerminologyCTApiCallbackHandler
	#tag Method, Flags = &h0
		Sub MdrCtPackagesGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CtPackages)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCtPackagesPackageCodelistsCodelistGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CtCodelist)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCtPackagesPackageCodelistsCodelistTermsGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CtCodelistTerms)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCtPackagesPackageCodelistsCodelistTermsTermGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CtTerm)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCtPackagesPackageCodelistsGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CtPackageCodelists)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrCtPackagesProductGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CtPackage)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrRootCtProductGroupCodelistsCodelistGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.RootCtCodelist)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MdrRootCtProductGroupCodelistsCodelistTermsTermGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.RootCtTerm)
		  
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
