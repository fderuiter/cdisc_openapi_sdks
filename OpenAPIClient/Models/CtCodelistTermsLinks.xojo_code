#tag Class
Protected Class CtCodelistTermsLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.CtCodelistTermsRef
	#tag EndProperty


	#tag Property, Flags = &h0
		parentPackage As OpenAPIClient.Models.CtPackageRef
	#tag EndProperty


	#tag Property, Flags = &h0
		rootItem As OpenAPIClient.Models.RootCtCodelistRef
	#tag EndProperty


	#tag Property, Flags = &h0
		priorVersion As OpenAPIClient.Models.CtCodelistTermsRef
	#tag EndProperty


	#tag Property, Flags = &h0
		terms() As OpenAPIClient.Models.CtTermRefElement
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
			Type="CtCodelistTermsRef"
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
			Name="rootItem"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="RootCtCodelistRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="priorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CtCodelistTermsRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="terms"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CtTermRefElement"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


