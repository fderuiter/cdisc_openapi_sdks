#tag Class
Protected Class CdashClassField

	#tag Property, Flags = &h0
		ordinal As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		name As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		label As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		definition As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		questionText As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		prompt As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		simpleDatatype As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		implementationNotes As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		mappingInstructions As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		_links As OpenAPIClient.Models.CdashClassFieldLinks
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
			Name="ordinal"
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
			Name="label"
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
			Name="questionText"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="prompt"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="simpleDatatype"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="implementationNotes"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="mappingInstructions"
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
			Type="CdashClassFieldLinks"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


