<a name="__pageTop"></a>
# SDTMImplementationGuideSDTMIGApi   { #SDTMImplementationGuideSDTMIGApi }


All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_root_sdtmig_datasets_dataset_variables_var_get**](#mdr_root_sdtmig_datasets_dataset_variables_var_get) | **GET** `/mdr/root/sdtmig/datasets/{dataset}/variables/{var}` | 
[**mdr_sdtmig_version_classes_class_datasets_get**](#mdr_sdtmig_version_classes_class_datasets_get) | **GET** `/mdr/sdtmig/{version}/classes/{class}/datasets` | 
[**mdr_sdtmig_version_classes_class_get**](#mdr_sdtmig_version_classes_class_get) | **GET** `/mdr/sdtmig/{version}/classes/{class}` | 
[**mdr_sdtmig_version_classes_get**](#mdr_sdtmig_version_classes_get) | **GET** `/mdr/sdtmig/{version}/classes` | 
[**mdr_sdtmig_version_datasets_dataset_get**](#mdr_sdtmig_version_datasets_dataset_get) | **GET** `/mdr/sdtmig/{version}/datasets/{dataset}` | 
[**mdr_sdtmig_version_datasets_dataset_variables_get**](#mdr_sdtmig_version_datasets_dataset_variables_get) | **GET** `/mdr/sdtmig/{version}/datasets/{dataset}/variables` | 
[**mdr_sdtmig_version_datasets_dataset_variables_var_get**](#mdr_sdtmig_version_datasets_dataset_variables_var_get) | **GET** `/mdr/sdtmig/{version}/datasets/{dataset}/variables/{var}` | 
[**mdr_sdtmig_version_datasets_get**](#mdr_sdtmig_version_datasets_get) | **GET** `/mdr/sdtmig/{version}/datasets` | 
[**mdr_sdtmig_version_get**](#mdr_sdtmig_version_get) | **GET** `/mdr/sdtmig/{version}` | 

# **mdr_root_sdtmig_datasets_dataset_variables_var_get**   { #mdr_root_sdtmig_datasets_dataset_variables_var_get }
<a name="mdr_root_sdtmig_datasets_dataset_variables_var_get"></a>

> `mdr_root_sdtmig_datasets_dataset_variables_var_get(dataset: String,some_var: String, on_success: Callable, on_failure: Callable)`



Get Root SDTMIG Dataset Variable

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
var api = SDTMImplementationGuideSDTMIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SDTMImplementationGuideSDTMIGApi.new(config, client)


# Invoke an endpoint
api.mdr_root_sdtmig_datasets_dataset_variables_var_get(
	# dataset: String = ""   Eg: DM
	# SDTMIG Dataset Identifier
	dataset,
	# some_var: String = ""   Eg: SUBJID
	# SDTMIG Variable Identifier
	some_var,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_root_sdtmig_datasets_dataset_variables_var_get", response)
		assert(response.data is RootSdtmigDatasetVariable)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sdtmig_version_classes_class_datasets_get**   { #mdr_sdtmig_version_classes_class_datasets_get }
<a name="mdr_sdtmig_version_classes_class_datasets_get"></a>

> `mdr_sdtmig_version_classes_class_datasets_get(version: String,some_class: String, on_success: Callable, on_failure: Callable)`



Get SDTMIG Class Dataset List

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
var api = SDTMImplementationGuideSDTMIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SDTMImplementationGuideSDTMIGApi.new(config, client)


# Invoke an endpoint
api.mdr_sdtmig_version_classes_class_datasets_get(
	# version: String = ""   Eg: 3-3
	# CDISC Library Product Version
	version,
	# some_class: String = ""   Eg: Findings
	# SDTMIG Class Identifier
	some_class,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sdtmig_version_classes_class_datasets_get", response)
		assert(response.data is SdtmigClassDatasets)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sdtmig_version_classes_class_get**   { #mdr_sdtmig_version_classes_class_get }
<a name="mdr_sdtmig_version_classes_class_get"></a>

> `mdr_sdtmig_version_classes_class_get(version: String,some_class: String, on_success: Callable, on_failure: Callable)`



Get SDTMIG Class

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
var api = SDTMImplementationGuideSDTMIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SDTMImplementationGuideSDTMIGApi.new(config, client)


# Invoke an endpoint
api.mdr_sdtmig_version_classes_class_get(
	# version: String = ""   Eg: 3-3
	# CDISC Library Product Version
	version,
	# some_class: String = ""   Eg: Findings
	# SDTMIG Class Identifier
	some_class,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sdtmig_version_classes_class_get", response)
		assert(response.data is SdtmigClass)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sdtmig_version_classes_get**   { #mdr_sdtmig_version_classes_get }
<a name="mdr_sdtmig_version_classes_get"></a>

> `mdr_sdtmig_version_classes_get(version: String, on_success: Callable, on_failure: Callable)`



Get SDTMIG Class List

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
var api = SDTMImplementationGuideSDTMIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SDTMImplementationGuideSDTMIGApi.new(config, client)


# Invoke an endpoint
api.mdr_sdtmig_version_classes_get(
	# version: String = ""   Eg: 3-3
	# CDISC Library Product Version
	version,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sdtmig_version_classes_get", response)
		assert(response.data is SdtmigClasses)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sdtmig_version_datasets_dataset_get**   { #mdr_sdtmig_version_datasets_dataset_get }
<a name="mdr_sdtmig_version_datasets_dataset_get"></a>

> `mdr_sdtmig_version_datasets_dataset_get(version: String,dataset: String, on_success: Callable, on_failure: Callable)`



Get SDTMIG Dataset

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
var api = SDTMImplementationGuideSDTMIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SDTMImplementationGuideSDTMIGApi.new(config, client)


# Invoke an endpoint
api.mdr_sdtmig_version_datasets_dataset_get(
	# version: String = ""   Eg: 3-3
	# CDISC Library Product Version
	version,
	# dataset: String = ""   Eg: LB
	# SDTMIG Dataset Identifier
	dataset,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sdtmig_version_datasets_dataset_get", response)
		assert(response.data is SdtmigDataset)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sdtmig_version_datasets_dataset_variables_get**   { #mdr_sdtmig_version_datasets_dataset_variables_get }
<a name="mdr_sdtmig_version_datasets_dataset_variables_get"></a>

> `mdr_sdtmig_version_datasets_dataset_variables_get(version: String,dataset: String, on_success: Callable, on_failure: Callable)`



Get SDTMIG Dataset Variable List

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
var api = SDTMImplementationGuideSDTMIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SDTMImplementationGuideSDTMIGApi.new(config, client)


# Invoke an endpoint
api.mdr_sdtmig_version_datasets_dataset_variables_get(
	# version: String = ""   Eg: 3-3
	# CDISC Library Product Version
	version,
	# dataset: String = ""   Eg: LB
	# SDTMIG Dataset Identifier
	dataset,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sdtmig_version_datasets_dataset_variables_get", response)
		assert(response.data is SdtmigDatasetVariables)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sdtmig_version_datasets_dataset_variables_var_get**   { #mdr_sdtmig_version_datasets_dataset_variables_var_get }
<a name="mdr_sdtmig_version_datasets_dataset_variables_var_get"></a>

> `mdr_sdtmig_version_datasets_dataset_variables_var_get(version: String,dataset: String,some_var: String, on_success: Callable, on_failure: Callable)`



Get SDTMIG Dataset Variable

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
var api = SDTMImplementationGuideSDTMIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SDTMImplementationGuideSDTMIGApi.new(config, client)


# Invoke an endpoint
api.mdr_sdtmig_version_datasets_dataset_variables_var_get(
	# version: String = ""   Eg: 3-3
	# CDISC Library Product Version
	version,
	# dataset: String = ""   Eg: LB
	# SDTMIG Dataset Identifier
	dataset,
	# some_var: String = ""   Eg: LBDTC
	# SDTMIG Variable Identifier
	some_var,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sdtmig_version_datasets_dataset_variables_var_get", response)
		assert(response.data is SdtmigDatasetVariable)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sdtmig_version_datasets_get**   { #mdr_sdtmig_version_datasets_get }
<a name="mdr_sdtmig_version_datasets_get"></a>

> `mdr_sdtmig_version_datasets_get(version: String, on_success: Callable, on_failure: Callable)`



Get SDTMIG Dataset List

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
var api = SDTMImplementationGuideSDTMIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SDTMImplementationGuideSDTMIGApi.new(config, client)


# Invoke an endpoint
api.mdr_sdtmig_version_datasets_get(
	# version: String = ""   Eg: 3-3
	# CDISC Library Product Version
	version,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sdtmig_version_datasets_get", response)
		assert(response.data is SdtmigDatasets)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sdtmig_version_get**   { #mdr_sdtmig_version_get }
<a name="mdr_sdtmig_version_get"></a>

> `mdr_sdtmig_version_get(version: String, on_success: Callable, on_failure: Callable)`



Get SDTMIG product

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
var api = SDTMImplementationGuideSDTMIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = SDTMImplementationGuideSDTMIGApi.new(config, client)


# Invoke an endpoint
api.mdr_sdtmig_version_get(
	# version: String = ""   Eg: 3-3
	# CDISC Library Product Version
	version,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sdtmig_version_get", response)
		assert(response.data is SdtmigProduct)
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

