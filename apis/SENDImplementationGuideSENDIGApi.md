<a name="__pageTop"></a>
# SENDImplementationGuideSENDIGApi   { #SENDImplementationGuideSENDIGApi }


All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_root_sendig_datasets_dataset_variables_var_get**](#mdr_root_sendig_datasets_dataset_variables_var_get) | **GET** `/mdr/root/sendig/datasets/{dataset}/variables/{var}` | 
[**mdr_sendig_version_classes_class_datasets_get**](#mdr_sendig_version_classes_class_datasets_get) | **GET** `/mdr/sendig/{version}/classes/{class}/datasets` | 
[**mdr_sendig_version_classes_class_get**](#mdr_sendig_version_classes_class_get) | **GET** `/mdr/sendig/{version}/classes/{class}` | 
[**mdr_sendig_version_classes_get**](#mdr_sendig_version_classes_get) | **GET** `/mdr/sendig/{version}/classes` | 
[**mdr_sendig_version_datasets_dataset_get**](#mdr_sendig_version_datasets_dataset_get) | **GET** `/mdr/sendig/{version}/datasets/{dataset}` | 
[**mdr_sendig_version_datasets_dataset_variables_get**](#mdr_sendig_version_datasets_dataset_variables_get) | **GET** `/mdr/sendig/{version}/datasets/{dataset}/variables` | 
[**mdr_sendig_version_datasets_dataset_variables_var_get**](#mdr_sendig_version_datasets_dataset_variables_var_get) | **GET** `/mdr/sendig/{version}/datasets/{dataset}/variables/{var}` | 
[**mdr_sendig_version_datasets_get**](#mdr_sendig_version_datasets_get) | **GET** `/mdr/sendig/{version}/datasets` | 
[**mdr_sendig_version_get**](#mdr_sendig_version_get) | **GET** `/mdr/sendig/{version}` | 

# **mdr_root_sendig_datasets_dataset_variables_var_get**   { #mdr_root_sendig_datasets_dataset_variables_var_get }
<a name="mdr_root_sendig_datasets_dataset_variables_var_get"></a>

> `mdr_root_sendig_datasets_dataset_variables_var_get(dataset: String,some_var: String, on_success: Callable, on_failure: Callable)`



Get Root SENDIG Dataset Variable

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
var api = SENDImplementationGuideSENDIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SENDImplementationGuideSENDIGApi.new(config, client)


# Invoke an endpoint
api.mdr_root_sendig_datasets_dataset_variables_var_get(
	# dataset: String = ""   Eg: VS
	# SENDIG Dataset Identifier
	dataset,
	# some_var: String = ""   Eg: VSTEST
	# SENDIG Variable Identifier
	some_var,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_root_sendig_datasets_dataset_variables_var_get", response)
		assert(response.data is RootSendigDatasetVariable)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sendig_version_classes_class_datasets_get**   { #mdr_sendig_version_classes_class_datasets_get }
<a name="mdr_sendig_version_classes_class_datasets_get"></a>

> `mdr_sendig_version_classes_class_datasets_get(version: String,some_class: String, on_success: Callable, on_failure: Callable)`



Get SENDIG Class Dataset List

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
var api = SENDImplementationGuideSENDIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SENDImplementationGuideSENDIGApi.new(config, client)


# Invoke an endpoint
api.mdr_sendig_version_classes_class_datasets_get(
	# version: String = ""   Eg: 3-1
	# CDISC Library Product Version
	version,
	# some_class: String = ""   Eg: Findings
	# SENDIG Class Identifier
	some_class,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sendig_version_classes_class_datasets_get", response)
		assert(response.data is SendigClassDatasets)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sendig_version_classes_class_get**   { #mdr_sendig_version_classes_class_get }
<a name="mdr_sendig_version_classes_class_get"></a>

> `mdr_sendig_version_classes_class_get(version: String,some_class: String, on_success: Callable, on_failure: Callable)`



Get SENDIG Class

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
var api = SENDImplementationGuideSENDIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SENDImplementationGuideSENDIGApi.new(config, client)


# Invoke an endpoint
api.mdr_sendig_version_classes_class_get(
	# version: String = ""   Eg: 3-1
	# CDISC Library Product Version
	version,
	# some_class: String = ""   Eg: Findings
	# SENDIG Class Identifier
	some_class,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sendig_version_classes_class_get", response)
		assert(response.data is SendigClass)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sendig_version_classes_get**   { #mdr_sendig_version_classes_get }
<a name="mdr_sendig_version_classes_get"></a>

> `mdr_sendig_version_classes_get(version: String, on_success: Callable, on_failure: Callable)`



Get SENDIG Class List

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
var api = SENDImplementationGuideSENDIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SENDImplementationGuideSENDIGApi.new(config, client)


# Invoke an endpoint
api.mdr_sendig_version_classes_get(
	# version: String = ""   Eg: 3-1
	# CDISC Library Product Version
	version,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sendig_version_classes_get", response)
		assert(response.data is SendigClasses)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sendig_version_datasets_dataset_get**   { #mdr_sendig_version_datasets_dataset_get }
<a name="mdr_sendig_version_datasets_dataset_get"></a>

> `mdr_sendig_version_datasets_dataset_get(version: String,dataset: String, on_success: Callable, on_failure: Callable)`



Get SENDIG Dataset

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
var api = SENDImplementationGuideSENDIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SENDImplementationGuideSENDIGApi.new(config, client)


# Invoke an endpoint
api.mdr_sendig_version_datasets_dataset_get(
	# version: String = ""   Eg: 3-1
	# CDISC Library Product Version
	version,
	# dataset: String = ""   Eg: VS
	# SENDIG Class Identifier
	dataset,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sendig_version_datasets_dataset_get", response)
		assert(response.data is SendigDataset)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sendig_version_datasets_dataset_variables_get**   { #mdr_sendig_version_datasets_dataset_variables_get }
<a name="mdr_sendig_version_datasets_dataset_variables_get"></a>

> `mdr_sendig_version_datasets_dataset_variables_get(version: String,dataset: String, on_success: Callable, on_failure: Callable)`



Get SENDIG Dataset Variable List

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
var api = SENDImplementationGuideSENDIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SENDImplementationGuideSENDIGApi.new(config, client)


# Invoke an endpoint
api.mdr_sendig_version_datasets_dataset_variables_get(
	# version: String = ""   Eg: 3-1
	# CDISC Library Product Version
	version,
	# dataset: String = ""   Eg: VS
	# SENDIG Class Identifier
	dataset,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sendig_version_datasets_dataset_variables_get", response)
		assert(response.data is SendigDatasetVariables)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sendig_version_datasets_dataset_variables_var_get**   { #mdr_sendig_version_datasets_dataset_variables_var_get }
<a name="mdr_sendig_version_datasets_dataset_variables_var_get"></a>

> `mdr_sendig_version_datasets_dataset_variables_var_get(version: String,dataset: String,some_var: String, on_success: Callable, on_failure: Callable)`



Get SENDIG Dataset Variable

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
var api = SENDImplementationGuideSENDIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SENDImplementationGuideSENDIGApi.new(config, client)


# Invoke an endpoint
api.mdr_sendig_version_datasets_dataset_variables_var_get(
	# version: String = ""   Eg: 3-1
	# CDISC Library Product Version
	version,
	# dataset: String = ""   Eg: VS
	# SENDIG Class Identifier
	dataset,
	# some_var: String = ""   Eg: VSTEST
	# SENDIG Variable Identifier
	some_var,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sendig_version_datasets_dataset_variables_var_get", response)
		assert(response.data is SendigDatasetVariable)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sendig_version_datasets_get**   { #mdr_sendig_version_datasets_get }
<a name="mdr_sendig_version_datasets_get"></a>

> `mdr_sendig_version_datasets_get(version: String, on_success: Callable, on_failure: Callable)`



Get SENDIG Dataset List

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
var api = SENDImplementationGuideSENDIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SENDImplementationGuideSENDIGApi.new(config, client)


# Invoke an endpoint
api.mdr_sendig_version_datasets_get(
	# version: String = ""   Eg: 3-1
	# CDISC Library Product Version
	version,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sendig_version_datasets_get", response)
		assert(response.data is SendigDatasets)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sendig_version_get**   { #mdr_sendig_version_get }
<a name="mdr_sendig_version_get"></a>

> `mdr_sendig_version_get(version: String, on_success: Callable, on_failure: Callable)`



Get SENDIG product

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
var api = SENDImplementationGuideSENDIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SENDImplementationGuideSENDIGApi.new(config, client)


# Invoke an endpoint
api.mdr_sendig_version_get(
	# version: String = ""   Eg: 3-1
	# CDISC Library Product Version
	version,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sendig_version_get", response)
		assert(response.data is SendigProduct)
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

