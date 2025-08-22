#tag Class
Protected Class QrsItemLinks

	#tag Property, Flags = &h0
		qrsItemTEST As OpenAPIClient.Models.RootCtTermRef
	#tag EndProperty


	#tag Property, Flags = &h0
		qrsItemTESTCD As OpenAPIClient.Models.RootCtTermRef
	#tag EndProperty


	#tag Property, Flags = &h0
		qrsItemEVAL As OpenAPIClient.Models.RootCtTermRef
	#tag EndProperty


	#tag Property, Flags = &h0
		qrsItemSCAT As OpenAPIClient.Models.RootCtTermRef
	#tag EndProperty


	#tag Property, Flags = &h0
		responsegroup As OpenAPIClient.Models.QrsResponsegroup
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
			Name="qrsItemTEST"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="RootCtTermRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="qrsItemTESTCD"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="RootCtTermRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="qrsItemEVAL"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="RootCtTermRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="qrsItemSCAT"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="RootCtTermRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="responsegroup"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="QrsResponsegroup"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


