#tag Class
Protected Class QrsProduct

	#tag Property, Flags = &h0
		name As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		label As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		description As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		effectiveDate As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		untilDate As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		registrationStatus As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		version As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		qrsType As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		_links As OpenAPIClient.Models.QrsProductLinks
	#tag EndProperty


	#tag Property, Flags = &h0
		items() As OpenAPIClient.Models.QrsItem
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
			Name="description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="effectiveDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="untilDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="registrationStatus"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="version"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="qrsType"
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
			Type="QrsProductLinks"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="items"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="QrsItem"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


