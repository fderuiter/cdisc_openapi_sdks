#tag Class
Protected Class DefaultErrorResponse

	#tag Property, Flags = &h0
		#tag Note
			HTTP Status Code
		#tag EndNote
		statusCode As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			HTTP Reason Phrase
		#tag EndNote
		reasonPhrase As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			User Error Message
		#tag EndNote
		userMessage As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Admin Error Message
		#tag EndNote
		adminMessage As Xoson.O.OptionalString
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
			Name="statusCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="reasonPhrase"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="userMessage"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="adminMessage"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


