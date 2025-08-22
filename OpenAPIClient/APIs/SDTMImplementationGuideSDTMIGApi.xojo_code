#tag Class
Protected Class SDTMImplementationGuideSDTMIGApi
	#tag Method, Flags = &h0
		Sub MdrRootSdtmigDatasetsDatasetVariablesVarGet(, dataset As String, Escapedvar As String)
		  // Operation 
		  // - 
		  // - parameter dataset: (path) SDTMIG Dataset Identifier 
		  // - parameter Escapedvar: (path) SDTMIG Variable Identifier 
		  //
		  // Invokes SDTMImplementationGuideSDTMIGApiCallbackHandler.MdrRootSdtmigDatasetsDatasetVariablesVarGetCallback(RootSdtmigDatasetVariable) on completion. 
		  //
		  // - GET /mdr/root/sdtmig/datasets/{dataset}/variables/{var}
		  // - Get Root SDTMIG Dataset Variable
		  // - defaultResponse: Nil
		  //
		  // - BASIC:
		  //   - type: http
		  //   - name: basicAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  
		  AddHandler localVarHTTPSocket.AuthenticationRequired, addressof Me.AuthenticationRequired


		  Dim localVarPath As String = "/mdr/root/sdtmig/datasets/{dataset}/variables/{var}"
		  
		  Dim localVarPathStringdataset As String = dataset
		  
		  localVarPath = localVarPath.ReplaceAllB("{dataset}", localVarPathStringdataset)
		  Dim localVarPathStringEscapedvar As String = Escapedvar
		  
		  localVarPath = localVarPath.ReplaceAllB("{var}", localVarPathStringEscapedvar)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.MdrRootSdtmigDatasetsDatasetVariablesVarGet_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.MdrRootSdtmigDatasetsDatasetVariablesVarGet_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MdrRootSdtmigDatasetsDatasetVariablesVarGetPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.RootSdtmigDatasetVariable) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.RootSdtmigDatasetVariable
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
		Private Sub MdrRootSdtmigDatasetsDatasetVariablesVarGet_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.RootSdtmigDatasetVariable
		  CallbackHandler.MdrRootSdtmigDatasetsDatasetVariablesVarGetCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MdrRootSdtmigDatasetsDatasetVariablesVarGet_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.RootSdtmigDatasetVariable
		  Call MdrRootSdtmigDatasetsDatasetVariablesVarGetPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.MdrRootSdtmigDatasetsDatasetVariablesVarGetCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub MdrSdtmigVersionClassesClassDatasetsGet(, version As String, Escapedclass As String)
		  // Operation 
		  // - 
		  // - parameter version: (path) CDISC Library Product Version 
		  // - parameter Escapedclass: (path) SDTMIG Class Identifier 
		  //
		  // Invokes SDTMImplementationGuideSDTMIGApiCallbackHandler.MdrSdtmigVersionClassesClassDatasetsGetCallback(SdtmigClassDatasets) on completion. 
		  //
		  // - GET /mdr/sdtmig/{version}/classes/{class}/datasets
		  // - Get SDTMIG Class Dataset List
		  // - defaultResponse: Nil
		  //
		  // - BASIC:
		  //   - type: http
		  //   - name: basicAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  
		  AddHandler localVarHTTPSocket.AuthenticationRequired, addressof Me.AuthenticationRequired


		  Dim localVarPath As String = "/mdr/sdtmig/{version}/classes/{class}/datasets"
		  
		  Dim localVarPathStringversion As String = version
		  
		  localVarPath = localVarPath.ReplaceAllB("{version}", localVarPathStringversion)
		  Dim localVarPathStringEscapedclass As String = Escapedclass
		  
		  localVarPath = localVarPath.ReplaceAllB("{class}", localVarPathStringEscapedclass)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.MdrSdtmigVersionClassesClassDatasetsGet_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.MdrSdtmigVersionClassesClassDatasetsGet_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MdrSdtmigVersionClassesClassDatasetsGetPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.SdtmigClassDatasets) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.SdtmigClassDatasets
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
		Private Sub MdrSdtmigVersionClassesClassDatasetsGet_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.SdtmigClassDatasets
		  CallbackHandler.MdrSdtmigVersionClassesClassDatasetsGetCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MdrSdtmigVersionClassesClassDatasetsGet_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.SdtmigClassDatasets
		  Call MdrSdtmigVersionClassesClassDatasetsGetPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.MdrSdtmigVersionClassesClassDatasetsGetCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub MdrSdtmigVersionClassesClassGet(, version As String, Escapedclass As String)
		  // Operation 
		  // - 
		  // - parameter version: (path) CDISC Library Product Version 
		  // - parameter Escapedclass: (path) SDTMIG Class Identifier 
		  //
		  // Invokes SDTMImplementationGuideSDTMIGApiCallbackHandler.MdrSdtmigVersionClassesClassGetCallback(SdtmigClass) on completion. 
		  //
		  // - GET /mdr/sdtmig/{version}/classes/{class}
		  // - Get SDTMIG Class
		  // - defaultResponse: Nil
		  //
		  // - BASIC:
		  //   - type: http
		  //   - name: basicAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  
		  AddHandler localVarHTTPSocket.AuthenticationRequired, addressof Me.AuthenticationRequired


		  Dim localVarPath As String = "/mdr/sdtmig/{version}/classes/{class}"
		  
		  Dim localVarPathStringversion As String = version
		  
		  localVarPath = localVarPath.ReplaceAllB("{version}", localVarPathStringversion)
		  Dim localVarPathStringEscapedclass As String = Escapedclass
		  
		  localVarPath = localVarPath.ReplaceAllB("{class}", localVarPathStringEscapedclass)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.MdrSdtmigVersionClassesClassGet_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.MdrSdtmigVersionClassesClassGet_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MdrSdtmigVersionClassesClassGetPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.SdtmigClass) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.SdtmigClass
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
		Private Sub MdrSdtmigVersionClassesClassGet_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.SdtmigClass
		  CallbackHandler.MdrSdtmigVersionClassesClassGetCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MdrSdtmigVersionClassesClassGet_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.SdtmigClass
		  Call MdrSdtmigVersionClassesClassGetPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.MdrSdtmigVersionClassesClassGetCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub MdrSdtmigVersionClassesGet(, version As String)
		  // Operation 
		  // - 
		  // - parameter version: (path) CDISC Library Product Version 
		  //
		  // Invokes SDTMImplementationGuideSDTMIGApiCallbackHandler.MdrSdtmigVersionClassesGetCallback(SdtmigClasses) on completion. 
		  //
		  // - GET /mdr/sdtmig/{version}/classes
		  // - Get SDTMIG Class List
		  // - defaultResponse: Nil
		  //
		  // - BASIC:
		  //   - type: http
		  //   - name: basicAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  
		  AddHandler localVarHTTPSocket.AuthenticationRequired, addressof Me.AuthenticationRequired


		  Dim localVarPath As String = "/mdr/sdtmig/{version}/classes"
		  
		  Dim localVarPathStringversion As String = version
		  
		  localVarPath = localVarPath.ReplaceAllB("{version}", localVarPathStringversion)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.MdrSdtmigVersionClassesGet_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.MdrSdtmigVersionClassesGet_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MdrSdtmigVersionClassesGetPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.SdtmigClasses) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.SdtmigClasses
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
		Private Sub MdrSdtmigVersionClassesGet_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.SdtmigClasses
		  CallbackHandler.MdrSdtmigVersionClassesGetCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MdrSdtmigVersionClassesGet_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.SdtmigClasses
		  Call MdrSdtmigVersionClassesGetPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.MdrSdtmigVersionClassesGetCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub MdrSdtmigVersionDatasetsDatasetGet(, version As String, dataset As String)
		  // Operation 
		  // - 
		  // - parameter version: (path) CDISC Library Product Version 
		  // - parameter dataset: (path) SDTMIG Dataset Identifier 
		  //
		  // Invokes SDTMImplementationGuideSDTMIGApiCallbackHandler.MdrSdtmigVersionDatasetsDatasetGetCallback(SdtmigDataset) on completion. 
		  //
		  // - GET /mdr/sdtmig/{version}/datasets/{dataset}
		  // - Get SDTMIG Dataset
		  // - defaultResponse: Nil
		  //
		  // - BASIC:
		  //   - type: http
		  //   - name: basicAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  
		  AddHandler localVarHTTPSocket.AuthenticationRequired, addressof Me.AuthenticationRequired


		  Dim localVarPath As String = "/mdr/sdtmig/{version}/datasets/{dataset}"
		  
		  Dim localVarPathStringversion As String = version
		  
		  localVarPath = localVarPath.ReplaceAllB("{version}", localVarPathStringversion)
		  Dim localVarPathStringdataset As String = dataset
		  
		  localVarPath = localVarPath.ReplaceAllB("{dataset}", localVarPathStringdataset)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.MdrSdtmigVersionDatasetsDatasetGet_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.MdrSdtmigVersionDatasetsDatasetGet_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MdrSdtmigVersionDatasetsDatasetGetPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.SdtmigDataset) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.SdtmigDataset
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
		Private Sub MdrSdtmigVersionDatasetsDatasetGet_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.SdtmigDataset
		  CallbackHandler.MdrSdtmigVersionDatasetsDatasetGetCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MdrSdtmigVersionDatasetsDatasetGet_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.SdtmigDataset
		  Call MdrSdtmigVersionDatasetsDatasetGetPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.MdrSdtmigVersionDatasetsDatasetGetCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub MdrSdtmigVersionDatasetsDatasetVariablesGet(, version As String, dataset As String)
		  // Operation 
		  // - 
		  // - parameter version: (path) CDISC Library Product Version 
		  // - parameter dataset: (path) SDTMIG Dataset Identifier 
		  //
		  // Invokes SDTMImplementationGuideSDTMIGApiCallbackHandler.MdrSdtmigVersionDatasetsDatasetVariablesGetCallback(SdtmigDatasetVariables) on completion. 
		  //
		  // - GET /mdr/sdtmig/{version}/datasets/{dataset}/variables
		  // - Get SDTMIG Dataset Variable List
		  // - defaultResponse: Nil
		  //
		  // - BASIC:
		  //   - type: http
		  //   - name: basicAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  
		  AddHandler localVarHTTPSocket.AuthenticationRequired, addressof Me.AuthenticationRequired


		  Dim localVarPath As String = "/mdr/sdtmig/{version}/datasets/{dataset}/variables"
		  
		  Dim localVarPathStringversion As String = version
		  
		  localVarPath = localVarPath.ReplaceAllB("{version}", localVarPathStringversion)
		  Dim localVarPathStringdataset As String = dataset
		  
		  localVarPath = localVarPath.ReplaceAllB("{dataset}", localVarPathStringdataset)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.MdrSdtmigVersionDatasetsDatasetVariablesGet_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.MdrSdtmigVersionDatasetsDatasetVariablesGet_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MdrSdtmigVersionDatasetsDatasetVariablesGetPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.SdtmigDatasetVariables) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.SdtmigDatasetVariables
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
		Private Sub MdrSdtmigVersionDatasetsDatasetVariablesGet_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.SdtmigDatasetVariables
		  CallbackHandler.MdrSdtmigVersionDatasetsDatasetVariablesGetCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MdrSdtmigVersionDatasetsDatasetVariablesGet_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.SdtmigDatasetVariables
		  Call MdrSdtmigVersionDatasetsDatasetVariablesGetPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.MdrSdtmigVersionDatasetsDatasetVariablesGetCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub MdrSdtmigVersionDatasetsDatasetVariablesVarGet(, version As String, dataset As String, Escapedvar As String)
		  // Operation 
		  // - 
		  // - parameter version: (path) CDISC Library Product Version 
		  // - parameter dataset: (path) SDTMIG Dataset Identifier 
		  // - parameter Escapedvar: (path) SDTMIG Variable Identifier 
		  //
		  // Invokes SDTMImplementationGuideSDTMIGApiCallbackHandler.MdrSdtmigVersionDatasetsDatasetVariablesVarGetCallback(SdtmigDatasetVariable) on completion. 
		  //
		  // - GET /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var}
		  // - Get SDTMIG Dataset Variable
		  // - defaultResponse: Nil
		  //
		  // - BASIC:
		  //   - type: http
		  //   - name: basicAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  
		  AddHandler localVarHTTPSocket.AuthenticationRequired, addressof Me.AuthenticationRequired


		  Dim localVarPath As String = "/mdr/sdtmig/{version}/datasets/{dataset}/variables/{var}"
		  
		  Dim localVarPathStringversion As String = version
		  
		  localVarPath = localVarPath.ReplaceAllB("{version}", localVarPathStringversion)
		  Dim localVarPathStringdataset As String = dataset
		  
		  localVarPath = localVarPath.ReplaceAllB("{dataset}", localVarPathStringdataset)
		  Dim localVarPathStringEscapedvar As String = Escapedvar
		  
		  localVarPath = localVarPath.ReplaceAllB("{var}", localVarPathStringEscapedvar)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.MdrSdtmigVersionDatasetsDatasetVariablesVarGet_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.MdrSdtmigVersionDatasetsDatasetVariablesVarGet_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MdrSdtmigVersionDatasetsDatasetVariablesVarGetPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.SdtmigDatasetVariable) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.SdtmigDatasetVariable
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
		Private Sub MdrSdtmigVersionDatasetsDatasetVariablesVarGet_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.SdtmigDatasetVariable
		  CallbackHandler.MdrSdtmigVersionDatasetsDatasetVariablesVarGetCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MdrSdtmigVersionDatasetsDatasetVariablesVarGet_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.SdtmigDatasetVariable
		  Call MdrSdtmigVersionDatasetsDatasetVariablesVarGetPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.MdrSdtmigVersionDatasetsDatasetVariablesVarGetCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub MdrSdtmigVersionDatasetsGet(, version As String)
		  // Operation 
		  // - 
		  // - parameter version: (path) CDISC Library Product Version 
		  //
		  // Invokes SDTMImplementationGuideSDTMIGApiCallbackHandler.MdrSdtmigVersionDatasetsGetCallback(SdtmigDatasets) on completion. 
		  //
		  // - GET /mdr/sdtmig/{version}/datasets
		  // - Get SDTMIG Dataset List
		  // - defaultResponse: Nil
		  //
		  // - BASIC:
		  //   - type: http
		  //   - name: basicAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  
		  AddHandler localVarHTTPSocket.AuthenticationRequired, addressof Me.AuthenticationRequired


		  Dim localVarPath As String = "/mdr/sdtmig/{version}/datasets"
		  
		  Dim localVarPathStringversion As String = version
		  
		  localVarPath = localVarPath.ReplaceAllB("{version}", localVarPathStringversion)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.MdrSdtmigVersionDatasetsGet_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.MdrSdtmigVersionDatasetsGet_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MdrSdtmigVersionDatasetsGetPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.SdtmigDatasets) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.SdtmigDatasets
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
		Private Sub MdrSdtmigVersionDatasetsGet_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.SdtmigDatasets
		  CallbackHandler.MdrSdtmigVersionDatasetsGetCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MdrSdtmigVersionDatasetsGet_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.SdtmigDatasets
		  Call MdrSdtmigVersionDatasetsGetPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.MdrSdtmigVersionDatasetsGetCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub MdrSdtmigVersionGet(, version As String)
		  // Operation 
		  // - 
		  // - parameter version: (path) CDISC Library Product Version 
		  //
		  // Invokes SDTMImplementationGuideSDTMIGApiCallbackHandler.MdrSdtmigVersionGetCallback(SdtmigProduct) on completion. 
		  //
		  // - GET /mdr/sdtmig/{version}
		  // - Get SDTMIG product
		  // - defaultResponse: Nil
		  //
		  // - BASIC:
		  //   - type: http
		  //   - name: basicAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  
		  AddHandler localVarHTTPSocket.AuthenticationRequired, addressof Me.AuthenticationRequired


		  Dim localVarPath As String = "/mdr/sdtmig/{version}"
		  
		  Dim localVarPathStringversion As String = version
		  
		  localVarPath = localVarPath.ReplaceAllB("{version}", localVarPathStringversion)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.MdrSdtmigVersionGet_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.MdrSdtmigVersionGet_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MdrSdtmigVersionGetPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.SdtmigProduct) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.SdtmigProduct
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
		Private Sub MdrSdtmigVersionGet_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.SdtmigProduct
		  CallbackHandler.MdrSdtmigVersionGetCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MdrSdtmigVersionGet_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.SdtmigProduct
		  Call MdrSdtmigVersionGetPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.MdrSdtmigVersionGetCallback(error, data)
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
		CallbackHandler As OpenAPIClient.APIs.SDTMImplementationGuideSDTMIGApiCallbackHandler
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
