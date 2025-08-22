<a name="__pageTop"></a>
# ControlledTerminologyCTApi   { #ControlledTerminologyCTApi }


All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_ct_packages_get**](#mdr_ct_packages_get) | **GET** `/mdr/ct/packages` | 
[**mdr_ct_packages_package_codelists_codelist_get**](#mdr_ct_packages_package_codelists_codelist_get) | **GET** `/mdr/ct/packages/{package}/codelists/{codelist}` | 
[**mdr_ct_packages_package_codelists_codelist_terms_get**](#mdr_ct_packages_package_codelists_codelist_terms_get) | **GET** `/mdr/ct/packages/{package}/codelists/{codelist}/terms` | 
[**mdr_ct_packages_package_codelists_codelist_terms_term_get**](#mdr_ct_packages_package_codelists_codelist_terms_term_get) | **GET** `/mdr/ct/packages/{package}/codelists/{codelist}/terms/{term}` | 
[**mdr_ct_packages_package_codelists_get**](#mdr_ct_packages_package_codelists_get) | **GET** `/mdr/ct/packages/{package}/codelists` | 
[**mdr_ct_packages_product_get**](#mdr_ct_packages_product_get) | **GET** `/mdr/ct/packages/{product}` | 
[**mdr_root_ct_product_group_codelists_codelist_get**](#mdr_root_ct_product_group_codelists_codelist_get) | **GET** `/mdr/root/ct/{productGroup}/codelists/{codelist}` | 
[**mdr_root_ct_product_group_codelists_codelist_terms_term_get**](#mdr_root_ct_product_group_codelists_codelist_terms_term_get) | **GET** `/mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term}` | 

# **mdr_ct_packages_get**   { #mdr_ct_packages_get }
<a name="mdr_ct_packages_get"></a>

> `mdr_ct_packages_get( on_success: Callable, on_failure: Callable)`



Get CDISC Library CT Package List

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
var api = ControlledTerminologyCTApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ControlledTerminologyCTApi.new(config, client)


# Invoke an endpoint
api.mdr_ct_packages_get(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_ct_packages_get", response)
		assert(response.data is CtPackages)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_ct_packages_package_codelists_codelist_get**   { #mdr_ct_packages_package_codelists_codelist_get }
<a name="mdr_ct_packages_package_codelists_codelist_get"></a>

> `mdr_ct_packages_package_codelists_codelist_get(package: String,codelist: String, on_success: Callable, on_failure: Callable)`



Get CDISC Library CT Package Codelist

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
var api = ControlledTerminologyCTApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ControlledTerminologyCTApi.new(config, client)


# Invoke an endpoint
api.mdr_ct_packages_package_codelists_codelist_get(
	# package: String = ""   Eg: sdtmct-2019-12-20
	# CT Package Identifier
	package,
	# codelist: String = ""   Eg: C67154
	# CT Codelist Identifier
	codelist,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_ct_packages_package_codelists_codelist_get", response)
		assert(response.data is CtCodelist)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_ct_packages_package_codelists_codelist_terms_get**   { #mdr_ct_packages_package_codelists_codelist_terms_get }
<a name="mdr_ct_packages_package_codelists_codelist_terms_get"></a>

> `mdr_ct_packages_package_codelists_codelist_terms_get(package: String,codelist: String, on_success: Callable, on_failure: Callable)`



Get CDISC Library CT Package Codelist Term List

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
var api = ControlledTerminologyCTApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ControlledTerminologyCTApi.new(config, client)


# Invoke an endpoint
api.mdr_ct_packages_package_codelists_codelist_terms_get(
	# package: String = ""   Eg: sdtmct-2019-12-20
	# CT Package Identifier
	package,
	# codelist: String = ""   Eg: C67154
	# CT Codelist Identifier
	codelist,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_ct_packages_package_codelists_codelist_terms_get", response)
		assert(response.data is CtCodelistTerms)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_ct_packages_package_codelists_codelist_terms_term_get**   { #mdr_ct_packages_package_codelists_codelist_terms_term_get }
<a name="mdr_ct_packages_package_codelists_codelist_terms_term_get"></a>

> `mdr_ct_packages_package_codelists_codelist_terms_term_get(package: String,codelist: String,term: String, on_success: Callable, on_failure: Callable)`



Get CDISC Library CT Package Codelist Term

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
var api = ControlledTerminologyCTApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ControlledTerminologyCTApi.new(config, client)


# Invoke an endpoint
api.mdr_ct_packages_package_codelists_codelist_terms_term_get(
	# package: String = ""   Eg: sdtmct-2019-12-20
	# CT Package Product Identifier
	package,
	# codelist: String = ""   Eg: C67154
	# CT Codelist Identifier
	codelist,
	# term: String = ""   Eg: C64796
	# CT Codelist Term Identifier
	term,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_ct_packages_package_codelists_codelist_terms_term_get", response)
		assert(response.data is CtTerm)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_ct_packages_package_codelists_get**   { #mdr_ct_packages_package_codelists_get }
<a name="mdr_ct_packages_package_codelists_get"></a>

> `mdr_ct_packages_package_codelists_get(package: String, on_success: Callable, on_failure: Callable)`



Get CDISC Library CT Package Codelist List

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
var api = ControlledTerminologyCTApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ControlledTerminologyCTApi.new(config, client)


# Invoke an endpoint
api.mdr_ct_packages_package_codelists_get(
	# package: String = ""   Eg: sdtmct-2019-12-20
	# CT Package Identifier
	package,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_ct_packages_package_codelists_get", response)
		assert(response.data is CtPackageCodelists)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_ct_packages_product_get**   { #mdr_ct_packages_product_get }
<a name="mdr_ct_packages_product_get"></a>

> `mdr_ct_packages_product_get(product: String, on_success: Callable, on_failure: Callable)`



Get CDISC Library CT Package

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
var api = ControlledTerminologyCTApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ControlledTerminologyCTApi.new(config, client)


# Invoke an endpoint
api.mdr_ct_packages_product_get(
	# product: String = ""   Eg: sdtmct-2019-12-20
	# CT Package Product Identifier
	product,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_ct_packages_product_get", response)
		assert(response.data is CtPackage)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_root_ct_product_group_codelists_codelist_get**   { #mdr_root_ct_product_group_codelists_codelist_get }
<a name="mdr_root_ct_product_group_codelists_codelist_get"></a>

> `mdr_root_ct_product_group_codelists_codelist_get(productGroup: String,codelist: String, on_success: Callable, on_failure: Callable)`



Get CDISC Library Root CT Codelist

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
var api = ControlledTerminologyCTApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ControlledTerminologyCTApi.new(config, client)


# Invoke an endpoint
api.mdr_root_ct_product_group_codelists_codelist_get(
	# productGroup: String = ""   Eg: sdtmct
	# CT Product Group Identifier
	productGroup,
	# codelist: String = ""   Eg: C67154
	# CT Codelist Identifier
	codelist,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_root_ct_product_group_codelists_codelist_get", response)
		assert(response.data is RootCtCodelist)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_root_ct_product_group_codelists_codelist_terms_term_get**   { #mdr_root_ct_product_group_codelists_codelist_terms_term_get }
<a name="mdr_root_ct_product_group_codelists_codelist_terms_term_get"></a>

> `mdr_root_ct_product_group_codelists_codelist_terms_term_get(productGroup: String,codelist: String,term: String, on_success: Callable, on_failure: Callable)`



Get CDISC Library Root CT Term

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
var api = ControlledTerminologyCTApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ControlledTerminologyCTApi.new(config, client)


# Invoke an endpoint
api.mdr_root_ct_product_group_codelists_codelist_terms_term_get(
	# productGroup: String = ""   Eg: sdtmct
	# CT Product Group Identifier
	productGroup,
	# codelist: String = ""   Eg: C67154
	# CT Codelist Identifier
	codelist,
	# term: String = ""   Eg: C64796
	# CT Codelist Term Identifier
	term,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_root_ct_product_group_codelists_codelist_terms_term_get", response)
		assert(response.data is RootCtTerm)
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

