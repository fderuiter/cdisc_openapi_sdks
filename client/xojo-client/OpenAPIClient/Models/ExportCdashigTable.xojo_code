#tag Class
Protected Class ExportCdashigTable

	#tag Property, Flags = &h0
		domain_variables() As OpenAPIClient.Models.ExportCdashigDomainVariablesRow
	#tag EndProperty


	#tag Property, Flags = &h0
		scenario_variables() As OpenAPIClient.Models.ExportCdashigScenarioVariablesRow
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
			Name="domain_variables"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ExportCdashigDomainVariablesRow"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="scenario_variables"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ExportCdashigScenarioVariablesRow"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


