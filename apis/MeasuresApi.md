<a name="__pageTop"></a>
# MeasuresApi   { #MeasuresApi }


All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_qrs_measure_version_get**](#mdr_qrs_measure_version_get) | **GET** `/mdr/qrs/{measure}/{version}` | 
[**mdr_qrs_measure_version_items_get**](#mdr_qrs_measure_version_items_get) | **GET** `/mdr/qrs/{measure}/{version}/items` | 
[**mdr_qrs_measure_version_items_item_get**](#mdr_qrs_measure_version_items_item_get) | **GET** `/mdr/qrs/{measure}/{version}/items/{item}` | 
[**mdr_qrs_measure_version_responsegroups_get**](#mdr_qrs_measure_version_responsegroups_get) | **GET** `/mdr/qrs/{measure}/{version}/responsegroups` | 
[**mdr_qrs_measure_version_responsegroups_responsegroup_get**](#mdr_qrs_measure_version_responsegroups_responsegroup_get) | **GET** `/mdr/qrs/{measure}/{version}/responsegroups/{responsegroup}` | 

# **mdr_qrs_measure_version_get**   { #mdr_qrs_measure_version_get }
<a name="mdr_qrs_measure_version_get"></a>

> `mdr_qrs_measure_version_get(measure: String,version: String, on_success: Callable, on_failure: Callable)`



Get QRS Product

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
var api = MeasuresApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MeasuresApi.new(config, client)


# Invoke an endpoint
api.mdr_qrs_measure_version_get(
	# measure: String = ""   Eg: AIMS1
	# QRS Measure Identifier
	measure,
	# version: String = ""   Eg: 1-0
	# CDISC Library Product Version
	version,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_qrs_measure_version_get", response)
		assert(response.data is QrsProduct)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_qrs_measure_version_items_get**   { #mdr_qrs_measure_version_items_get }
<a name="mdr_qrs_measure_version_items_get"></a>

> `mdr_qrs_measure_version_items_get(measure: String,version: String, on_success: Callable, on_failure: Callable)`



Get QRS Item List

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
var api = MeasuresApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MeasuresApi.new(config, client)


# Invoke an endpoint
api.mdr_qrs_measure_version_items_get(
	# measure: String = ""   Eg: AIMS1
	# QRS Measure Identifier
	measure,
	# version: String = ""   Eg: 1-0
	# CDISC Library Product Version
	version,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_qrs_measure_version_items_get", response)
		assert(response.data is QrsItems)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_qrs_measure_version_items_item_get**   { #mdr_qrs_measure_version_items_item_get }
<a name="mdr_qrs_measure_version_items_item_get"></a>

> `mdr_qrs_measure_version_items_item_get(measure: String,version: String,item: String, on_success: Callable, on_failure: Callable)`



Get QRS Item

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
var api = MeasuresApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MeasuresApi.new(config, client)


# Invoke an endpoint
api.mdr_qrs_measure_version_items_item_get(
	# measure: String = ""   Eg: AIMS1
	# QRS Measure Identifier
	measure,
	# version: String = ""   Eg: 1-0
	# CDISC Library Product Version
	version,
	# item: String = ""   Eg: AIMS01.001
	# QRS Measure Item Identifier
	item,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_qrs_measure_version_items_item_get", response)
		assert(response.data is QrsItem)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_qrs_measure_version_responsegroups_get**   { #mdr_qrs_measure_version_responsegroups_get }
<a name="mdr_qrs_measure_version_responsegroups_get"></a>

> `mdr_qrs_measure_version_responsegroups_get(measure: String,version: String, on_success: Callable, on_failure: Callable)`



Get QRS Response Group List

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
var api = MeasuresApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MeasuresApi.new(config, client)


# Invoke an endpoint
api.mdr_qrs_measure_version_responsegroups_get(
	# measure: String = ""   Eg: AIMS1
	# QRS Measure Identifier
	measure,
	# version: String = ""   Eg: 1-0
	# CDISC Library Product Version
	version,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_qrs_measure_version_responsegroups_get", response)
		assert(response.data is QrsResponsegroups)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_qrs_measure_version_responsegroups_responsegroup_get**   { #mdr_qrs_measure_version_responsegroups_responsegroup_get }
<a name="mdr_qrs_measure_version_responsegroups_responsegroup_get"></a>

> `mdr_qrs_measure_version_responsegroups_responsegroup_get(measure: String,version: String,responsegroup: String, on_success: Callable, on_failure: Callable)`



Get QRS Response Group

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
var api = MeasuresApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MeasuresApi.new(config, client)


# Invoke an endpoint
api.mdr_qrs_measure_version_responsegroups_responsegroup_get(
	# measure: String = ""   Eg: AIMS1
	# QRS Measure Identifier
	measure,
	# version: String = ""   Eg: 1-0
	# CDISC Library Product Version
	version,
	# responsegroup: String = ""   Eg: AIMS1.11to12
	# QRS Measure's Response Group Identifier
	responsegroup,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_qrs_measure_version_responsegroups_responsegroup_get", response)
		assert(response.data is QrsResponsegroup)
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

