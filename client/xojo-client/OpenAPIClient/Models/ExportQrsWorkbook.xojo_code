#tag Class
Protected Class ExportQrsWorkbook

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.ExportQrsGeneral
	#tag EndProperty


	#tag Property, Flags = &h0
		items() As OpenAPIClient.Models.ExportQrsWorkbookItemsRow
	#tag EndProperty


	#tag Property, Flags = &h0
		responses() As OpenAPIClient.Models.ExportQrsResponses
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
			Name="Escapedself"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ExportQrsGeneral"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="items"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ExportQrsWorkbookItemsRow"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="responses"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ExportQrsResponses"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


