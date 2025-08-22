#tag Class
Protected Class CdashigClassScenariosLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.CdashigClassScenariosRef
	#tag EndProperty


	#tag Property, Flags = &h0
		scenarios() As OpenAPIClient.Models.CdashigScenarioRefElement
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
			Type="CdashigClassScenariosRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="scenarios"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CdashigScenarioRefElement"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


