#tag Class
Protected Class ExportSdtmigWorkbook

	#tag Property, Flags = &h0
		variables() As OpenAPIClient.Models.ExportSdtmigVariablesRow
	#tag EndProperty


	#tag Property, Flags = &h0
		datasets() As OpenAPIClient.Models.ExportSdtmigDatasetsRow
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
			Name="variables"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ExportSdtmigVariablesRow"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="datasets"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ExportSdtmigDatasetsRow"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


