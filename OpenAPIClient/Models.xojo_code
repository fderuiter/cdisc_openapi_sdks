#tag Module
Protected Module Models
	#tag Method, Flags = &h21
		Protected Function DefaultSearchScopesToString(value As DefaultSearchScopes) As String
		  Select Case value
		    Case DefaultSearchScopes.Escapedclass
		      Return "class"
		    Case DefaultSearchScopes.Codelist
		      Return "codelist"
		    Case DefaultSearchScopes.Conceptid
		      Return "conceptId"
		    Case DefaultSearchScopes.Core
		      Return "core"
		    Case DefaultSearchScopes.Datastructure
		      Return "dataStructure"
		    Case DefaultSearchScopes.Datasetstructure
		      Return "datasetStructure"
		    Case DefaultSearchScopes.Definition
		      Return "definition"
		    Case DefaultSearchScopes.Description
		      Return "description"
		    Case DefaultSearchScopes.Domain
		      Return "domain"
		    Case DefaultSearchScopes.Effectivedate
		      Return "effectiveDate"
		    Case DefaultSearchScopes.Extensible
		      Return "extensible"
		    Case DefaultSearchScopes.Href
		      Return "href"
		    Case DefaultSearchScopes.Label
		      Return "label"
		    Case DefaultSearchScopes.Measuretype
		      Return "measureType"
		    Case DefaultSearchScopes.Name
		      Return "name"
		    Case DefaultSearchScopes.Preferredterm
		      Return "preferredTerm"
		    Case DefaultSearchScopes.Product
		      Return "product"
		    Case DefaultSearchScopes.Productgroup
		      Return "productGroup"
		    Case DefaultSearchScopes.Registrationstatus
		      Return "registrationStatus"
		    Case DefaultSearchScopes.Roledescription
		      Return "roleDescription"
		    Case DefaultSearchScopes.Sdtmtarget
		      Return "sdtmTarget"
		    Case DefaultSearchScopes.Simpledatatype
		      Return "simpleDatatype"
		    Case DefaultSearchScopes.Submissionvalue
		      Return "submissionValue"
		    Case DefaultSearchScopes.Synonyms
		      Return "synonyms"
		    Case DefaultSearchScopes.Type
		      Return "type"
		    Case DefaultSearchScopes.Uihref
		      Return "uiHref"
		    Case DefaultSearchScopes.Valuedomain
		      Return "valueDomain"
		    Case DefaultSearchScopes.Variableset
		      Return "variableSet"
		    Case DefaultSearchScopes.Version
		      Return "version"
		    
		  End Select
		  Return ""
		End Function
	#tag EndMethod


	#tag Enum, Name = DefaultSearchScopes, Type = Integer, Flags = &h1
		
		Escapedclass
		Codelist
		Conceptid
		Core
		Datastructure
		Datasetstructure
		Definition
		Description
		Domain
		Effectivedate
		Extensible
		Href
		Label
		Measuretype
		Name
		Preferredterm
		Product
		Productgroup
		Registrationstatus
		Roledescription
		Sdtmtarget
		Simpledatatype
		Submissionvalue
		Synonyms
		Type
		Uihref
		Valuedomain
		Variableset
		Version
		
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
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
	#tag EndViewBehavior
End Module
#tag EndModule
