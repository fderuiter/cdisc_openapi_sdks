#tag Class
Protected Class QrsResponsegroupsLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.QrsResponsegroupsRef
	#tag EndProperty


	#tag Property, Flags = &h0
		responsegroups() As OpenAPIClient.Models.QrsResponsegroupRefElement
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
			Type="QrsResponsegroupsRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="responsegroups"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="QrsResponsegroupRefElement"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


