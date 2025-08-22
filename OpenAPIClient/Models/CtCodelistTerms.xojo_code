#tag Class
Protected Class CtCodelistTerms

	#tag Property, Flags = &h0
		conceptId As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		extensible As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		name As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		submissionValue As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		definition As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		preferredTerm As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		synonyms() As String
	#tag EndProperty


	#tag Property, Flags = &h0
		_links As OpenAPIClient.Models.CtCodelistTermsLinks
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
			Name="conceptId"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="extensible"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="submissionValue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="definition"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="preferredTerm"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="synonyms"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="_links"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CtCodelistTermsLinks"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


