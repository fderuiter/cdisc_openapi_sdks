#tag Class
Protected Class ExportCtCodelist

	#tag Property, Flags = &h0
		Code As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		Codelist_Code As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		Codelist_Extensible__Yes_No As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		Codelist_Name As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		CDISC_Submission_Value As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		CDISC_Synonym_s() As String
	#tag EndProperty


	#tag Property, Flags = &h0
		CDISC_Definition As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		NCI_Preferred_Term As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		Standard_and_Date As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		() As OpenAPIClient.Models.ExportCtTerm
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
			Name="Code"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Codelist_Code"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Codelist_Extensible__Yes_No"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Codelist_Name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CDISC_Submission_Value"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CDISC_Synonym_s"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CDISC_Definition"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NCI_Preferred_Term"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Standard_and_Date"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name=""
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ExportCtTerm"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


