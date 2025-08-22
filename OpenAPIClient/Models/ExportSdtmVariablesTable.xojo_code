#tag Class
Protected Class ExportSdtmVariablesTable

	#tag Property, Flags = &h0
		class_variables() As OpenAPIClient.Models.ExportSdtmClassVariablesRow
	#tag EndProperty


	#tag Property, Flags = &h0
		dataset_variables() As OpenAPIClient.Models.ExportSdtmDatasetVariablesRow
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
			Type="ExportSdtmClassVariablesRow"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dataset_variables"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ExportSdtmDatasetVariablesRow"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


