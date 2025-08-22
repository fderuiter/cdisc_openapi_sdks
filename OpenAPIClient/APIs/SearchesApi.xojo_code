#tag Class
Protected Class SearchesApi
	#tag Method, Flags = &h0
		Sub MdrSearchGet(, q As String, Optional highlight As Xoson.O.OptionalString, Optional start As Xoson.O.OptionalDouble, Optional pageSize As Xoson.O.OptionalDouble, Optional Escapedclass As Xoson.O.OptionalString, Optional codelist As Xoson.O.OptionalString, Optional conceptId As Xoson.O.OptionalString, Optional core As Xoson.O.OptionalString, Optional dataStructure As Xoson.O.OptionalString, Optional datasetStructure As Xoson.O.OptionalString, Optional definition As Xoson.O.OptionalString, Optional description As Xoson.O.OptionalString, Optional domain As Xoson.O.OptionalString, Optional effectiveDate As Xoson.O.OptionalString, Optional extensible As Xoson.O.OptionalString, Optional href As Xoson.O.OptionalString, Optional label As Xoson.O.OptionalString, Optional measureType As Xoson.O.OptionalString, Optional name As Xoson.O.OptionalString, Optional preferredTerm As Xoson.O.OptionalString, Optional product As Xoson.O.OptionalString, Optional productGroup As Xoson.O.OptionalString, Optional registrationStatus As Xoson.O.OptionalString, Optional roleDescription As Xoson.O.OptionalString, Optional sdtmTarget As Xoson.O.OptionalString, Optional simpleDatatype As Xoson.O.OptionalString, Optional submissionValue As Xoson.O.OptionalString, Optional synonyms As Xoson.O.OptionalString, Optional type As Xoson.O.OptionalString, Optional uiHref As Xoson.O.OptionalString, Optional valueDomain As Xoson.O.OptionalString, Optional variableSet As Xoson.O.OptionalString, Optional version As Xoson.O.OptionalString)
		  // Operation 
		  // - 
		  // - parameter q: (query) Search Term Expression 
		  // - parameter highlight: (query) Search Highlight Expression (optional, default to Sample)
		  // - parameter start: (query) Initial Search Result Index (optional, default to 0)
		  // - parameter pageSize: (query) Number of Search Results to Return (optional, default to 100)
		  // - parameter Escapedclass: (query) Limit Search by Setting Scope to Class (optional, default to Sample)
		  // - parameter codelist: (query) Limit Search by Setting Scope to Codelist (optional, default to Sample)
		  // - parameter conceptId: (query) Limit Search by Setting Scope to Concept ID (optional, default to Sample)
		  // - parameter core: (query) Limit Search by Setting Scope to Core (optional, default to Sample)
		  // - parameter dataStructure: (query) Limit Search by Setting Scope to Data Structure (optional, default to Sample)
		  // - parameter datasetStructure: (query) Limit Search by Setting Scope to Dataset Structure (optional, default to Sample)
		  // - parameter definition: (query) Limit Search by Setting Scope to Definition (optional, default to Sample)
		  // - parameter description: (query) Limit Search by Setting Scope to Description (optional, default to Sample)
		  // - parameter domain: (query) Limit Search by Setting Scope to Domain (optional, default to Sample)
		  // - parameter effectiveDate: (query) Limit Search by Setting Scope to Effective Date (optional, default to Sample)
		  // - parameter extensible: (query) Limit Search by Setting Scope to Extensible (optional, default to Sample)
		  // - parameter href: (query) Limit Search by Setting Scope to Href (optional, default to Sample)
		  // - parameter label: (query) Limit Search by Setting Scope to Label (optional, default to Sample)
		  // - parameter measureType: (query) SLimit Search by Setting Scope to Measure Type (optional, default to Sample)
		  // - parameter name: (query) Limit Search by Setting Scope to Name (optional, default to Sample)
		  // - parameter preferredTerm: (query) Limit Search by Setting Scope to Preferred Term (optional, default to Sample)
		  // - parameter product: (query) Limit Search by Setting Scope to Product (optional, default to Sample)
		  // - parameter productGroup: (query) Limit Search by Setting Scope to Product Group (optional, default to Sample)
		  // - parameter registrationStatus: (query) Limit Search by Setting Scope to Registration Status (optional, default to Sample)
		  // - parameter roleDescription: (query) Limit Search by Setting Scope to Role Description (optional, default to Sample)
		  // - parameter sdtmTarget: (query) Limit Search by Setting Scope to SDTM Target (optional, default to Sample)
		  // - parameter simpleDatatype: (query) Limit Search by Setting Scope to Simple Datatype (optional, default to Sample)
		  // - parameter submissionValue: (query) Limit Search by Setting Scope to Submission Value (optional, default to Sample)
		  // - parameter synonyms: (query) Limit Search by Setting Scope to Synonyms (optional, default to Sample)
		  // - parameter type: (query) Limit Search by Setting Scope to Type (optional, default to Sample)
		  // - parameter uiHref: (query) Limit Search by Setting Scope to UI Href (optional, default to Sample)
		  // - parameter valueDomain: (query) Limit Search by Setting Scope to Value Domain (optional, default to Sample)
		  // - parameter variableSet: (query) Limit Search by Setting Scope to Variable Set (optional, default to Sample)
		  // - parameter version: (query) Limit Search by Setting Scope to Version (optional, default to Sample)
		  //
		  // Invokes SearchesApiCallbackHandler.MdrSearchGetCallback(DefaultSearchResponse) on completion. 
		  //
		  // - GET /mdr/search
		  // - Get Search Results Across CDISC Library
		  // - defaultResponse: Nil
		  //
		  // - BASIC:
		  //   - type: http
		  //   - name: basicAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  Dim localVarQueryParams As String = "?"
		  localVarQueryParams = localVarQueryParams + EncodeURLComponent("q") + "=" + EncodeURLComponent(q)
		  
		  If highlight <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("highlight") + "=" + EncodeURLComponent(highlight)
		  
		  If start <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("start") + "=" + EncodeURLComponent(start.ToString)
		  
		  If pageSize <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("pageSize") + "=" + EncodeURLComponent(pageSize.ToString)
		  
		  If Escapedclass <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("class") + "=" + EncodeURLComponent(Escapedclass)
		  
		  If codelist <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("codelist") + "=" + EncodeURLComponent(codelist)
		  
		  If conceptId <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("conceptId") + "=" + EncodeURLComponent(conceptId)
		  
		  If core <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("core") + "=" + EncodeURLComponent(core)
		  
		  If dataStructure <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("dataStructure") + "=" + EncodeURLComponent(dataStructure)
		  
		  If datasetStructure <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("datasetStructure") + "=" + EncodeURLComponent(datasetStructure)
		  
		  If definition <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("definition") + "=" + EncodeURLComponent(definition)
		  
		  If description <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("description") + "=" + EncodeURLComponent(description)
		  
		  If domain <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("domain") + "=" + EncodeURLComponent(domain)
		  
		  If effectiveDate <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("effectiveDate") + "=" + EncodeURLComponent(effectiveDate)
		  
		  If extensible <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("extensible") + "=" + EncodeURLComponent(extensible)
		  
		  If href <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("href") + "=" + EncodeURLComponent(href)
		  
		  If label <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("label") + "=" + EncodeURLComponent(label)
		  
		  If measureType <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("measureType") + "=" + EncodeURLComponent(measureType)
		  
		  If name <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("name") + "=" + EncodeURLComponent(name)
		  
		  If preferredTerm <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("preferredTerm") + "=" + EncodeURLComponent(preferredTerm)
		  
		  If product <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("product") + "=" + EncodeURLComponent(product)
		  
		  If productGroup <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("productGroup") + "=" + EncodeURLComponent(productGroup)
		  
		  If registrationStatus <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("registrationStatus") + "=" + EncodeURLComponent(registrationStatus)
		  
		  If roleDescription <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("roleDescription") + "=" + EncodeURLComponent(roleDescription)
		  
		  If sdtmTarget <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("sdtmTarget") + "=" + EncodeURLComponent(sdtmTarget)
		  
		  If simpleDatatype <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("simpleDatatype") + "=" + EncodeURLComponent(simpleDatatype)
		  
		  If submissionValue <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("submissionValue") + "=" + EncodeURLComponent(submissionValue)
		  
		  If synonyms <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("synonyms") + "=" + EncodeURLComponent(synonyms)
		  
		  If type <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("type") + "=" + EncodeURLComponent(type)
		  
		  If uiHref <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("uiHref") + "=" + EncodeURLComponent(uiHref)
		  
		  If valueDomain <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("valueDomain") + "=" + EncodeURLComponent(valueDomain)
		  
		  If variableSet <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("variableSet") + "=" + EncodeURLComponent(variableSet)
		  
		  If version <> nil Then localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("version") + "=" + EncodeURLComponent(version)
		  

		  
		  AddHandler localVarHTTPSocket.AuthenticationRequired, addressof Me.AuthenticationRequired


		  Dim localVarPath As String = "/mdr/search"
		  
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.MdrSearchGet_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.MdrSearchGet_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath + localVarQueryParams)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MdrSearchGetPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.DefaultSearchResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.DefaultSearchResponse
			  Try
		        Xoson.fromJSON(outData, Content.toText())

		      Catch e As JSONException
		        error.Message = error.Message + " with JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xojo.Data.InvalidJSONException
		        error.Message = error.Message + " with Xojo.Data.JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xoson.XosonException
		        error.Message = error.Message + " with Xoson parse exception: " + e.Message
		        error.ErrorNumber = kErrorXosonProblem
		        Return False

		      End Try
		      
		      
		    ElseIf contentType.LeftB(19) = "multipart/form-data" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    ElseIf contentType.LeftB(33) = "application/x-www-form-urlencoded" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    Else
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    End If
		  Else
		    error.Message = error.Message + ". " + Content
			error.ErrorNumber = kErrorHTTPFail
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MdrSearchGet_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.DefaultSearchResponse
		  CallbackHandler.MdrSearchGetCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MdrSearchGet_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.DefaultSearchResponse
		  Call MdrSearchGetPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.MdrSearchGetCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub MdrSearchScopesGet()
		  // Operation 
		  // - 
		  //
		  // Invokes SearchesApiCallbackHandler.MdrSearchScopesGetCallback(MdrSearchScopesGet200Response) on completion. 
		  //
		  // - GET /mdr/search/scopes
		  // - Get Search Results Across CDISC Library
		  // - defaultResponse: Nil
		  //
		  // - BASIC:
		  //   - type: http
		  //   - name: basicAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  
		  AddHandler localVarHTTPSocket.AuthenticationRequired, addressof Me.AuthenticationRequired


		  Dim localVarPath As String = "/mdr/search/scopes"
		  
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.MdrSearchScopesGet_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.MdrSearchScopesGet_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MdrSearchScopesGetPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.MdrSearchScopesGet200Response) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.MdrSearchScopesGet200Response
			  Try
		        Xoson.fromJSON(outData, Content.toText())

		      Catch e As JSONException
		        error.Message = error.Message + " with JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xojo.Data.InvalidJSONException
		        error.Message = error.Message + " with Xojo.Data.JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xoson.XosonException
		        error.Message = error.Message + " with Xoson parse exception: " + e.Message
		        error.ErrorNumber = kErrorXosonProblem
		        Return False

		      End Try
		      
		      
		    ElseIf contentType.LeftB(19) = "multipart/form-data" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    ElseIf contentType.LeftB(33) = "application/x-www-form-urlencoded" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    Else
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    End If
		  Else
		    error.Message = error.Message + ". " + Content
			error.ErrorNumber = kErrorHTTPFail
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MdrSearchScopesGet_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.MdrSearchScopesGet200Response
		  CallbackHandler.MdrSearchScopesGetCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MdrSearchScopesGet_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.MdrSearchScopesGet200Response
		  Call MdrSearchScopesGetPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.MdrSearchScopesGetCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub MdrSearchScopesScopeGet(, scope As OpenAPIClient.Models.DefaultSearchScopes)
		  // Operation 
		  // - 
		  // - parameter scope: (path) Search Scope 
		  //
		  // Invokes SearchesApiCallbackHandler.MdrSearchScopesScopeGetCallback(ScopeValues) on completion. 
		  //
		  // - GET /mdr/search/scopes/{scope}
		  // - Get Search Results Limited to Scope
		  // - defaultResponse: Nil
		  //
		  // - BASIC:
		  //   - type: http
		  //   - name: basicAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  
		  AddHandler localVarHTTPSocket.AuthenticationRequired, addressof Me.AuthenticationRequired


		  Dim localVarPath As String = "/mdr/search/scopes/{scope}"
		  
		  Dim localVarPathStringscope As String = Xoson.toJSON(scope)
		  
		  localVarPath = localVarPath.ReplaceAllB("{scope}", localVarPathStringscope)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.MdrSearchScopesScopeGet_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.MdrSearchScopesScopeGet_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MdrSearchScopesScopeGetPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.ScopeValues) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.ScopeValues
			  Try
		        Xoson.fromJSON(outData, Content.toText())

		      Catch e As JSONException
		        error.Message = error.Message + " with JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xojo.Data.InvalidJSONException
		        error.Message = error.Message + " with Xojo.Data.JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xoson.XosonException
		        error.Message = error.Message + " with Xoson parse exception: " + e.Message
		        error.ErrorNumber = kErrorXosonProblem
		        Return False

		      End Try
		      
		      
		    ElseIf contentType.LeftB(19) = "multipart/form-data" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    ElseIf contentType.LeftB(33) = "application/x-www-form-urlencoded" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    Else
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    End If
		  Else
		    error.Message = error.Message + ". " + Content
			error.ErrorNumber = kErrorHTTPFail
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MdrSearchScopesScopeGet_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.ScopeValues
		  CallbackHandler.MdrSearchScopesScopeGetCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MdrSearchScopesScopeGet_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.ScopeValues
		  Call MdrSearchScopesScopeGetPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.MdrSearchScopesScopeGetCallback(error, data)
		End Sub
	#tag EndMethod






	#tag Method, Flags = &h21
		Private Function AuthenticationRequired(Realm As String, Headers As InternetHeaders, ByRef Name As String, ByRef Password As String) As Boolean
		  #Pragma Unused Realm
		  #Pragma Unused Headers
		  Name = Me.BasicAuthUser
		  Password = Me.BasicAuthPassword
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PrivateFuncPrepareSocket(socket As HTTPSecureSocket)
		  socket.Secure = Me.useHTTPS
		  socket.ConnectionType = SSLSocket.TLSv12
		  socket.Port = Me.Port
		  socket.RequestHeaders.Delete("Accept")
		  socket.RequestHeaders.AppendHeader("Accept", "text/plain")
		  socket.RequestHeaders.AppendHeader("Accept", "application/json")
		  socket.RequestHeaders.AppendHeader("Content-Type", "application/json")

		  If Me.AdditionalHeaders <> Nil Then
		    For Each HeaderName As Variant In Me.AdditionalHeaders.Keys
		      Dim headerValueS As Variant = additionalHeaders.Value(HeaderName)
		      If headerValueS.IsArray Then
		        If headerValueS.ArrayElementType = Variant.TypeString Then
		          Dim values() As String = headerValueS
		          For Each value As String In values
		            socket.RequestHeaders.AppendHeader(HeaderName, value)
		          Next
		        Else
		          Raise New OpenAPIClient.OpenAPIClientException(kErrorInternal, "AdditionalHeaders only support Strings and String arrays as values.")
		        End If
		      Else
		        socket.RequestHeaders.AppendHeader(HeaderName, headerValueS.StringValue)
		      End If
		    Next
		  End If
		End Sub
	#tag EndMethod



	#tag Property, Flags = &h0
		AdditionalHeaders As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		BasePath As String = "https://library.cdisc.org/api"
	#tag EndProperty

	#tag Property, Flags = &h0
		BasicAuthPassword As String
	#tag EndProperty

	#tag Property, Flags = &h0
		BasicAuthUser As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CallbackHandler As OpenAPIClient.APIs.SearchesApiCallbackHandler
	#tag EndProperty

	#tag Property, Flags = &h0
		Host As String = ""
	#tag EndProperty

	#tag Property, Flags = &h0
		Port As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		UseHTTPS As Boolean = true
	#tag EndProperty


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
		#tag ViewProperty
			Name="BasePath"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BasicAuthUser"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BasicAuthPassword"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseHTTPS"
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Port"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Host"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
