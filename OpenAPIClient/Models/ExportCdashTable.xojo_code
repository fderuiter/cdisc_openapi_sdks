#tag Class
Protected Class ExportCdashTable

	#tag Property, Flags = &h0
		class_variables() As OpenAPIClient.Models.ExportCdashClassVariablesRow
	#tag EndProperty


	#tag Property, Flags = &h0
		domain_variables() As OpenAPIClient.Models.ExportCdashDomainVariablesRow
	#tag EndProperty





	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="class_variables"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ExportCdashClassVariablesRow"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="domain_variables"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ExportCdashDomainVariablesRow"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


