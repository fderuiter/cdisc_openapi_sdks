#tag Class
Protected Class SdtmigClassLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.SdtmigClassRef
	#tag EndProperty


	#tag Property, Flags = &h0
		modelClass As OpenAPIClient.Models.SdtmClassRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentProduct As OpenAPIClient.Models.SdtmigProductRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentClass As OpenAPIClient.Models.SdtmigClassRef
	#tag EndProperty


	#tag Property, Flags = &h0
		subclasses() As OpenAPIClient.Models.SdtmigClassRefSubclass
	#tag EndProperty


	#tag Property, Flags = &h0
		priorVersion As OpenAPIClient.Models.SdtmigClassRef
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
			Type="SdtmigClassRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="modelClass"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmClassRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="parentProduct"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmigProductRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="parentClass"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmigClassRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="subclasses"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmigClassRefSubclass"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="priorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="SdtmigClassRef"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


