#tag Class
Protected Class DefaultSearchResponse

	#tag Property, Flags = &h0
		hits() As DefaultSearchResponseHitsInner
	#tag EndProperty


	#tag Property, Flags = &h0
		totalHits As Xoson.O.OptionalDouble
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
			Name="hits"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="DefaultSearchResponseHitsInner"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="totalHits"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


