#tag Class
Protected Class AdamVariableLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.AdamVariableRef
	#tag EndProperty


	#tag Property, Flags = &h0
		codelist As OpenAPIClient.Models.RootCtCodelistRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentProduct As OpenAPIClient.Models.AdamProductRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentDatastructure As OpenAPIClient.Models.AdamDatastructureRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentVariableSet As OpenAPIClient.Models.AdamVarsetRef
	#tag EndProperty


	#tag Property, Flags = &h0
		priorVersion As OpenAPIClient.Models.AdamVariableRef
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
			Type="AdamVariableRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="codelist"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="RootCtCodelistRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="parentProduct"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="AdamProductRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="parentDatastructure"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="AdamDatastructureRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="parentVariableSet"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="AdamVarsetRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="priorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="AdamVariableRef"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


