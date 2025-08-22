<a name="__pageTop"></a>
# StatusesApi   { #StatusesApi }


All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**health_get**](#health_get) | **GET** `/health` | 
[**mdr_maintenance_get**](#mdr_maintenance_get) | **GET** `/mdr/maintenance` | 

# **health_get**   { #health_get }
<a name="health_get"></a>

> `health_get( on_success: Callable, on_failure: Callable)`



Check health of system components

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
var api = StatusesApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = StatusesApi.new(config, client)


# Invoke an endpoint
api.health_get(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "health_get", response)
		assert(response.data is Health)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_maintenance_get**   { #mdr_maintenance_get }
<a name="mdr_maintenance_get"></a>

> `mdr_maintenance_get( on_success: Callable, on_failure: Callable)`



Set maintenance mode and message

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
var api = StatusesApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = StatusesApi.new(config, client)


# Invoke an endpoint
api.mdr_maintenance_get(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_maintenance_get", response)
		assert(response.data is MaintenanceBody)
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

