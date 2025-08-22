<a name="__pageTop"></a>
# DefaultApi   { #DefaultApi }


All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_about_get**](#mdr_about_get) | **GET** `/mdr/about` | 
[**mdr_lastupdated_get**](#mdr_lastupdated_get) | **GET** `/mdr/lastupdated` | 
[**mdr_products_data_analysis_get**](#mdr_products_data_analysis_get) | **GET** `/mdr/products/DataAnalysis` | 
[**mdr_products_data_collection_get**](#mdr_products_data_collection_get) | **GET** `/mdr/products/DataCollection` | 
[**mdr_products_data_tabulation_get**](#mdr_products_data_tabulation_get) | **GET** `/mdr/products/DataTabulation` | 
[**mdr_products_get**](#mdr_products_get) | **GET** `/mdr/products` | 
[**mdr_products_measures_get**](#mdr_products_measures_get) | **GET** `/mdr/products/Measures` | 
[**mdr_products_terminology_get**](#mdr_products_terminology_get) | **GET** `/mdr/products/Terminology` | 

# **mdr_about_get**   { #mdr_about_get }
<a name="mdr_about_get"></a>

> `mdr_about_get( on_success: Callable, on_failure: Callable)`



Get Information About CDISC Library

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
var api = DefaultApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DefaultApi.new(config, client)


# Invoke an endpoint
api.mdr_about_get(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_about_get", response)
		assert(response.data is About)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_lastupdated_get**   { #mdr_lastupdated_get }
<a name="mdr_lastupdated_get"></a>

> `mdr_lastupdated_get( on_success: Callable, on_failure: Callable)`



Get CDISC Library Last Updated

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
var api = DefaultApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DefaultApi.new(config, client)


# Invoke an endpoint
api.mdr_lastupdated_get(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_lastupdated_get", response)
		assert(response.data is Lastupdated)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_products_data_analysis_get**   { #mdr_products_data_analysis_get }
<a name="mdr_products_data_analysis_get"></a>

> `mdr_products_data_analysis_get( on_success: Callable, on_failure: Callable)`



Get CDISC Library Product Group Data Analysis

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
var api = DefaultApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DefaultApi.new(config, client)


# Invoke an endpoint
api.mdr_products_data_analysis_get(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_products_data_analysis_get", response)
		assert(response.data is ProductgroupDataAnalysis)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_products_data_collection_get**   { #mdr_products_data_collection_get }
<a name="mdr_products_data_collection_get"></a>

> `mdr_products_data_collection_get( on_success: Callable, on_failure: Callable)`



Get CDISC Library Product Group Data Collection

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
var api = DefaultApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DefaultApi.new(config, client)


# Invoke an endpoint
api.mdr_products_data_collection_get(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_products_data_collection_get", response)
		assert(response.data is ProductgroupDataCollection)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_products_data_tabulation_get**   { #mdr_products_data_tabulation_get }
<a name="mdr_products_data_tabulation_get"></a>

> `mdr_products_data_tabulation_get( on_success: Callable, on_failure: Callable)`



Get CDISC Library Product Group Data Tabulation

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
var api = DefaultApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DefaultApi.new(config, client)


# Invoke an endpoint
api.mdr_products_data_tabulation_get(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_products_data_tabulation_get", response)
		assert(response.data is ProductgroupDataTabulation)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_products_get**   { #mdr_products_get }
<a name="mdr_products_get"></a>

> `mdr_products_get( on_success: Callable, on_failure: Callable)`



Get CDISC Library Products

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
var api = DefaultApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DefaultApi.new(config, client)


# Invoke an endpoint
api.mdr_products_get(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_products_get", response)
		assert(response.data is Products)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_products_measures_get**   { #mdr_products_measures_get }
<a name="mdr_products_measures_get"></a>

> `mdr_products_measures_get( on_success: Callable, on_failure: Callable)`



Get CDISC Library Product Group QRS

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
var api = DefaultApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DefaultApi.new(config, client)


# Invoke an endpoint
api.mdr_products_measures_get(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_products_measures_get", response)
		assert(response.data is ProductgroupQrs)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_products_terminology_get**   { #mdr_products_terminology_get }
<a name="mdr_products_terminology_get"></a>

> `mdr_products_terminology_get( on_success: Callable, on_failure: Callable)`



Get CDISC Library Product Group Terminology

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
var api = DefaultApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = DefaultApi.new(config, client)


# Invoke an endpoint
api.mdr_products_terminology_get(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_products_terminology_get", response)
		assert(response.data is ProductgroupTerminology)
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

