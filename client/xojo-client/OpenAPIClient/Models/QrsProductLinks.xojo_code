#tag Class
Protected Class QrsProductLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.QrsProductRef
	#tag EndProperty


	#tag Property, Flags = &h0
		priorVersion As OpenAPIClient.Models.QrsProductRef
	#tag EndProperty


	#tag Property, Flags = &h0
		qrsTermCAT As OpenAPIClient.Models.RootCtTermRef
	#tag EndProperty


	#tag Property, Flags = &h0
		qrsItems As OpenAPIClient.Models.QrsItemsRef
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
			Type="QrsProductRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="priorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="QrsProductRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="qrsTermCAT"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="RootCtTermRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="qrsItems"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="QrsItemsRef"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


