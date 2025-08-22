#tag Class
Protected Class ProductsLinks

	#tag Property, Flags = &h0
		Escapedself As OpenAPIClient.Models.ProductsRef
	#tag EndProperty


	#tag Property, Flags = &h0
		data_collection As OpenAPIClient.Models.ProductgroupDataCollection
	#tag EndProperty


	#tag Property, Flags = &h0
		data_tabulation As OpenAPIClient.Models.ProductgroupDataTabulation
	#tag EndProperty


	#tag Property, Flags = &h0
		data_analysis As OpenAPIClient.Models.ProductgroupDataAnalysis
	#tag EndProperty


	#tag Property, Flags = &h0
		terminology As OpenAPIClient.Models.ProductgroupTerminology
	#tag EndProperty


	#tag Property, Flags = &h0
		measure As OpenAPIClient.Models.ProductgroupQrs
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
			Type="ProductsRef"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="data_collection"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ProductgroupDataCollection"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="data_tabulation"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ProductgroupDataTabulation"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="data_analysis"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ProductgroupDataAnalysis"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="terminology"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ProductgroupTerminology"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="measure"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ProductgroupQrs"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


