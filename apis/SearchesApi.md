<a name="__pageTop"></a>
# SearchesApi   { #SearchesApi }


All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_search_get**](#mdr_search_get) | **GET** `/mdr/search` | 
[**mdr_search_scopes_get**](#mdr_search_scopes_get) | **GET** `/mdr/search/scopes` | 
[**mdr_search_scopes_scope_get**](#mdr_search_scopes_scope_get) | **GET** `/mdr/search/scopes/{scope}` | 

# **mdr_search_get**   { #mdr_search_get }
<a name="mdr_search_get"></a>

> `mdr_search_get(q: String,highlight = "",start = 0,pageSize = 100,some_class = "",codelist = "",conceptId = "",core = "",dataStructure = "",datasetStructure = "",definition = "",description = "",domain = "",effectiveDate = "",extensible = "",href = "",some_label = "",measureType = "",name = "",preferredTerm = "",product = "",productGroup = "",registrationStatus = "",roleDescription = "",sdtmTarget = "",simpleDatatype = "",submissionValue = "",synonyms = "",type = "",uiHref = "",valueDomain = "",variableSet = "",version = "", on_success: Callable, on_failure: Callable)`



Get Search Results Across CDISC Library

### Example

* Basic Authentication (`basicAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = SearchesApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SearchesApi.new(config, client)


# Invoke an endpoint
api.mdr_search_get(
	# q: String = ""   Eg: q_example
	# Search Term Expression
	q,
	# highlight: String = ""   Eg: highlight_example
	# Search Highlight Expression
	highlight,
	# start: float = 0   Eg: 8.14
	# Initial Search Result Index
	start,
	# pageSize: float = 100   Eg: 8.14
	# Number of Search Results to Return
	pageSize,
	# some_class: String = ""   Eg: some_class_example
	# Limit Search by Setting Scope to Class
	some_class,
	# codelist: String = ""   Eg: codelist_example
	# Limit Search by Setting Scope to Codelist
	codelist,
	# conceptId: String = ""   Eg: conceptId_example
	# Limit Search by Setting Scope to Concept ID
	conceptId,
	# core: String = ""   Eg: core_example
	# Limit Search by Setting Scope to Core
	core,
	# dataStructure: String = ""   Eg: dataStructure_example
	# Limit Search by Setting Scope to Data Structure
	dataStructure,
	# datasetStructure: String = ""   Eg: datasetStructure_example
	# Limit Search by Setting Scope to Dataset Structure
	datasetStructure,
	# definition: String = ""   Eg: definition_example
	# Limit Search by Setting Scope to Definition
	definition,
	# description: String = ""   Eg: description_example
	# Limit Search by Setting Scope to Description
	description,
	# domain: String = ""   Eg: domain_example
	# Limit Search by Setting Scope to Domain
	domain,
	# effectiveDate: String = ""   Eg: effectiveDate_example
	# Limit Search by Setting Scope to Effective Date
	effectiveDate,
	# extensible: String = ""   Eg: extensible_example
	# Limit Search by Setting Scope to Extensible
	extensible,
	# href: String = ""   Eg: href_example
	# Limit Search by Setting Scope to Href
	href,
	# some_label: String = ""   Eg: some_label_example
	# Limit Search by Setting Scope to Label
	some_label,
	# measureType: String = ""   Eg: measureType_example
	# SLimit Search by Setting Scope to Measure Type
	measureType,
	# name: String = ""   Eg: name_example
	# Limit Search by Setting Scope to Name
	name,
	# preferredTerm: String = ""   Eg: preferredTerm_example
	# Limit Search by Setting Scope to Preferred Term
	preferredTerm,
	# product: String = ""   Eg: product_example
	# Limit Search by Setting Scope to Product
	product,
	# productGroup: String = ""   Eg: productGroup_example
	# Limit Search by Setting Scope to Product Group
	productGroup,
	# registrationStatus: String = ""   Eg: registrationStatus_example
	# Limit Search by Setting Scope to Registration Status
	registrationStatus,
	# roleDescription: String = ""   Eg: roleDescription_example
	# Limit Search by Setting Scope to Role Description
	roleDescription,
	# sdtmTarget: String = ""   Eg: sdtmTarget_example
	# Limit Search by Setting Scope to SDTM Target
	sdtmTarget,
	# simpleDatatype: String = ""   Eg: simpleDatatype_example
	# Limit Search by Setting Scope to Simple Datatype
	simpleDatatype,
	# submissionValue: String = ""   Eg: submissionValue_example
	# Limit Search by Setting Scope to Submission Value
	submissionValue,
	# synonyms: String = ""   Eg: synonyms_example
	# Limit Search by Setting Scope to Synonyms
	synonyms,
	# type: String = ""   Eg: type_example
	# Limit Search by Setting Scope to Type
	type,
	# uiHref: String = ""   Eg: uiHref_example
	# Limit Search by Setting Scope to UI Href
	uiHref,
	# valueDomain: String = ""   Eg: valueDomain_example
	# Limit Search by Setting Scope to Value Domain
	valueDomain,
	# variableSet: String = ""   Eg: variableSet_example
	# Limit Search by Setting Scope to Variable Set
	variableSet,
	# version: String = ""   Eg: version_example
	# Limit Search by Setting Scope to Version
	version,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_search_get", response)
		assert(response.data is DefaultSearchResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_search_scopes_get**   { #mdr_search_scopes_get }
<a name="mdr_search_scopes_get"></a>

> `mdr_search_scopes_get( on_success: Callable, on_failure: Callable)`



Get Search Results Across CDISC Library

### Example

* Basic Authentication (`basicAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = SearchesApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SearchesApi.new(config, client)


# Invoke an endpoint
api.mdr_search_scopes_get(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_search_scopes_get", response)
		assert(response.data is _mdr_search_scopes_get_200_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_search_scopes_scope_get**   { #mdr_search_scopes_scope_get }
<a name="mdr_search_scopes_scope_get"></a>

> `mdr_search_scopes_scope_get(scope: DefaultSearchScopes, on_success: Callable, on_failure: Callable)`



Get Search Results Limited to Scope

### Example

* Basic Authentication (`basicAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = SearchesApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SearchesApi.new(config, client)


# Invoke an endpoint
api.mdr_search_scopes_scope_get(
	# scope: DefaultSearchScopes
	# Search Scope
	scope,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_search_scopes_scope_get", response)
		assert(response.data is ScopeValues)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```


### Authorization

[basicAuth](../README.md#basicAuth)

[[Back to top]](#__pageTop) \
[[Back to API list]](../README.md#documentation-for-api-endpoints) \
[[Back to Model list]](../README.md#documentation-for-models) \
[[Back to README]](../README.md) \

