<a name="__pageTop"></a>
# AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi   { #AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi }


All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_adam_product_datastructures_get**](#mdr_adam_product_datastructures_get) | **GET** `/mdr/adam/{product}/datastructures` | 
[**mdr_adam_product_datastructures_structure_get**](#mdr_adam_product_datastructures_structure_get) | **GET** `/mdr/adam/{product}/datastructures/{structure}` | 
[**mdr_adam_product_datastructures_structure_variables_get**](#mdr_adam_product_datastructures_structure_variables_get) | **GET** `/mdr/adam/{product}/datastructures/{structure}/variables` | 
[**mdr_adam_product_datastructures_structure_variables_var_get**](#mdr_adam_product_datastructures_structure_variables_var_get) | **GET** `/mdr/adam/{product}/datastructures/{structure}/variables/{var}` | 
[**mdr_adam_product_datastructures_structure_varsets_get**](#mdr_adam_product_datastructures_structure_varsets_get) | **GET** `/mdr/adam/{product}/datastructures/{structure}/varsets` | 
[**mdr_adam_product_datastructures_structure_varsets_varset_get**](#mdr_adam_product_datastructures_structure_varsets_varset_get) | **GET** `/mdr/adam/{product}/datastructures/{structure}/varsets/{varset}` | 
[**mdr_adam_product_get**](#mdr_adam_product_get) | **GET** `/mdr/adam/{product}` | 

# **mdr_adam_product_datastructures_get**   { #mdr_adam_product_datastructures_get }
<a name="mdr_adam_product_datastructures_get"></a>

> `mdr_adam_product_datastructures_get(product: String, on_success: Callable, on_failure: Callable)`



Get ADaM Data Structure List

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
var api = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new(config, client)


# Invoke an endpoint
api.mdr_adam_product_datastructures_get(
	# product: String = ""   Eg: adamig-1-1
	# CDISC Library Product
	product,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_adam_product_datastructures_get", response)
		assert(response.data is AdamProductDatastructures)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_adam_product_datastructures_structure_get**   { #mdr_adam_product_datastructures_structure_get }
<a name="mdr_adam_product_datastructures_structure_get"></a>

> `mdr_adam_product_datastructures_structure_get(product: String,structure: String, on_success: Callable, on_failure: Callable)`



Get ADaM Data Structure

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
var api = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new(config, client)


# Invoke an endpoint
api.mdr_adam_product_datastructures_structure_get(
	# product: String = ""   Eg: adamig-1-1
	# CDISC Library Product
	product,
	# structure: String = ""   Eg: ADSL
	# Data structure Identifier
	structure,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_adam_product_datastructures_structure_get", response)
		assert(response.data is AdamDatastructure)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_adam_product_datastructures_structure_variables_get**   { #mdr_adam_product_datastructures_structure_variables_get }
<a name="mdr_adam_product_datastructures_structure_variables_get"></a>

> `mdr_adam_product_datastructures_structure_variables_get(product: String,structure: String, on_success: Callable, on_failure: Callable)`



Get ADaM Variable List

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
var api = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new(config, client)


# Invoke an endpoint
api.mdr_adam_product_datastructures_structure_variables_get(
	# product: String = ""   Eg: adamig-1-1
	# CDISC Library Product
	product,
	# structure: String = ""   Eg: ADSL
	# ADaM Data Structure Identifier
	structure,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_adam_product_datastructures_structure_variables_get", response)
		assert(response.data is AdamDatastructureVariables)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_adam_product_datastructures_structure_variables_var_get**   { #mdr_adam_product_datastructures_structure_variables_var_get }
<a name="mdr_adam_product_datastructures_structure_variables_var_get"></a>

> `mdr_adam_product_datastructures_structure_variables_var_get(product: String,structure: String,some_var: String, on_success: Callable, on_failure: Callable)`



Get ADaM Variable

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
var api = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new(config, client)


# Invoke an endpoint
api.mdr_adam_product_datastructures_structure_variables_var_get(
	# product: String = ""   Eg: adamig-1-1
	# CDISC Library Product
	product,
	# structure: String = ""   Eg: ADSL
	# ADaM Data Structure Identifier
	structure,
	# some_var: String = ""   Eg: SITEGRy
	# ADaM Variable Identifier
	some_var,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_adam_product_datastructures_structure_variables_var_get", response)
		assert(response.data is AdamVariable)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_adam_product_datastructures_structure_varsets_get**   { #mdr_adam_product_datastructures_structure_varsets_get }
<a name="mdr_adam_product_datastructures_structure_varsets_get"></a>

> `mdr_adam_product_datastructures_structure_varsets_get(product: String,structure: String, on_success: Callable, on_failure: Callable)`



Get ADaM Variable Set List

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
var api = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new(config, client)


# Invoke an endpoint
api.mdr_adam_product_datastructures_structure_varsets_get(
	# product: String = ""   Eg: adamig-1-1
	# CDISC Library Product
	product,
	# structure: String = ""   Eg: ADSL
	# ADaM Data Structure Identifier
	structure,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_adam_product_datastructures_structure_varsets_get", response)
		assert(response.data is AdamDatastructureVarsets)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_adam_product_datastructures_structure_varsets_varset_get**   { #mdr_adam_product_datastructures_structure_varsets_varset_get }
<a name="mdr_adam_product_datastructures_structure_varsets_varset_get"></a>

> `mdr_adam_product_datastructures_structure_varsets_varset_get(product: String,structure: String,varset: String, on_success: Callable, on_failure: Callable)`



Get ADaM Variable Set

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
var api = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new(config, client)


# Invoke an endpoint
api.mdr_adam_product_datastructures_structure_varsets_varset_get(
	# product: String = ""   Eg: adamig-1-1
	# CDISC Library Product
	product,
	# structure: String = ""   Eg: ADSL
	# ADaM Data Structure Identifier
	structure,
	# varset: String = ""   Eg: Identifier
	# ADaM Variable Set Identifier
	varset,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_adam_product_datastructures_structure_varsets_varset_get", response)
		assert(response.data is AdamVarset)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_adam_product_get**   { #mdr_adam_product_get }
<a name="mdr_adam_product_get"></a>

> `mdr_adam_product_get(product: String, on_success: Callable, on_failure: Callable)`



Get ADaM Product

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
var api = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.new(config, client)


# Invoke an endpoint
api.mdr_adam_product_get(
	# product: String = ""   Eg: adamig-1-1
	# CDISC Library Product
	product,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_adam_product_get", response)
		assert(response.data is AdamProduct)
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

