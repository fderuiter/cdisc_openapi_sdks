#tag Class
Protected Class CtTermLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.CtTermRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentPackage As OpenAPIClient.Models.CtPackageRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentCodelist As OpenAPIClient.Models.CtCodelistRef
	#tag EndProperty


	#tag Property, Flags = &h0
		rootItem As OpenAPIClient.Models.RootCtTermRef
	#tag EndProperty


	#tag Property, Flags = &h0
		priorVersion As OpenAPIClient.Models.CtTermRef
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
			Type="CtTermRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="parentPackage"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CtPackageRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="parentCodelist"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CtCodelistRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="rootItem"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="RootCtTermRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="priorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CtTermRef"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


