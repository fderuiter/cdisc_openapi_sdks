<a name="__pageTop"></a>
# StudyDataTabulationModelSDTMApi   { #StudyDataTabulationModelSDTMApi }


All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_root_sdtm_classes_class_variables_var_get**](#mdr_root_sdtm_classes_class_variables_var_get) | **GET** `/mdr/root/sdtm/classes/{class}/variables/{var}` | 
[**mdr_root_sdtm_datasets_dataset_variables_var_get**](#mdr_root_sdtm_datasets_dataset_variables_var_get) | **GET** `/mdr/root/sdtm/datasets/{dataset}/variables/{var}` | 
[**mdr_sdtm_version_classes_class_datasets_get**](#mdr_sdtm_version_classes_class_datasets_get) | **GET** `/mdr/sdtm/{version}/classes/{class}/datasets` | 
[**mdr_sdtm_version_classes_class_get**](#mdr_sdtm_version_classes_class_get) | **GET** `/mdr/sdtm/{version}/classes/{class}` | 
[**mdr_sdtm_version_classes_class_variables_get**](#mdr_sdtm_version_classes_class_variables_get) | **GET** `/mdr/sdtm/{version}/classes/{class}/variables` | 
[**mdr_sdtm_version_classes_class_variables_var_get**](#mdr_sdtm_version_classes_class_variables_var_get) | **GET** `/mdr/sdtm/{version}/classes/{class}/variables/{var}` | 
[**mdr_sdtm_version_classes_get**](#mdr_sdtm_version_classes_get) | **GET** `/mdr/sdtm/{version}/classes` | 
[**mdr_sdtm_version_datasets_dataset_get**](#mdr_sdtm_version_datasets_dataset_get) | **GET** `/mdr/sdtm/{version}/datasets/{dataset}` | 
[**mdr_sdtm_version_datasets_dataset_variables_get**](#mdr_sdtm_version_datasets_dataset_variables_get) | **GET** `/mdr/sdtm/{version}/datasets/{dataset}/variables` | 
[**mdr_sdtm_version_datasets_dataset_variables_var_get**](#mdr_sdtm_version_datasets_dataset_variables_var_get) | **GET** `/mdr/sdtm/{version}/datasets/{dataset}/variables/{var}` | 
[**mdr_sdtm_version_datasets_get**](#mdr_sdtm_version_datasets_get) | **GET** `/mdr/sdtm/{version}/datasets` | 
[**mdr_sdtm_version_get**](#mdr_sdtm_version_get) | **GET** `/mdr/sdtm/{version}` | 

# **mdr_root_sdtm_classes_class_variables_var_get**   { #mdr_root_sdtm_classes_class_variables_var_get }
<a name="mdr_root_sdtm_classes_class_variables_var_get"></a>

> `mdr_root_sdtm_classes_class_variables_var_get(some_class: String,some_var: String, on_success: Callable, on_failure: Callable)`



Get Root of SDTM Class Variable

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
var api = StudyDataTabulationModelSDTMApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = StudyDataTabulationModelSDTMApi.new(config, client)


# Invoke an endpoint
api.mdr_root_sdtm_classes_class_variables_var_get(
	# some_class: String = ""   Eg: GeneralObservations
	# SDTM Class Identifier
	some_class,
	# some_var: String = ""   Eg: --DTC
	# SDTM Variable Identifier
	some_var,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_root_sdtm_classes_class_variables_var_get", response)
		assert(response.data is RootSdtmClassVariable)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_root_sdtm_datasets_dataset_variables_var_get**   { #mdr_root_sdtm_datasets_dataset_variables_var_get }
<a name="mdr_root_sdtm_datasets_dataset_variables_var_get"></a>

> `mdr_root_sdtm_datasets_dataset_variables_var_get(dataset: String,some_var: String, on_success: Callable, on_failure: Callable)`



Get Root SDTM Dataset Variable

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
var api = StudyDataTabulationModelSDTMApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = StudyDataTabulationModelSDTMApi.new(config, client)


# Invoke an endpoint
api.mdr_root_sdtm_datasets_dataset_variables_var_get(
	# dataset: String = ""   Eg: DM
	# SDTM Dataset Identifier
	dataset,
	# some_var: String = ""   Eg: SUBJID
	# SDTM Variable Identifier
	some_var,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_root_sdtm_datasets_dataset_variables_var_get", response)
		assert(response.data is RootSdtmDatasetVariable)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sdtm_version_classes_class_datasets_get**   { #mdr_sdtm_version_classes_class_datasets_get }
<a name="mdr_sdtm_version_classes_class_datasets_get"></a>

> `mdr_sdtm_version_classes_class_datasets_get(version: String,some_class: String, on_success: Callable, on_failure: Callable)`



Get SDTM Class Dataset List

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
var api = StudyDataTabulationModelSDTMApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = StudyDataTabulationModelSDTMApi.new(config, client)


# Invoke an endpoint
api.mdr_sdtm_version_classes_class_datasets_get(
	# version: String = ""   Eg: 1-8
	# CDISC Library Product Version
	version,
	# some_class: String = ""   Eg: SpecialPurpose
	# SDTM Class Identifier
	some_class,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sdtm_version_classes_class_datasets_get", response)
		assert(response.data is SdtmClassDatasets)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sdtm_version_classes_class_get**   { #mdr_sdtm_version_classes_class_get }
<a name="mdr_sdtm_version_classes_class_get"></a>

> `mdr_sdtm_version_classes_class_get(version: String,some_class: String, on_success: Callable, on_failure: Callable)`



Get SDTM Class

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
var api = StudyDataTabulationModelSDTMApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = StudyDataTabulationModelSDTMApi.new(config, client)


# Invoke an endpoint
api.mdr_sdtm_version_classes_class_get(
	# version: String = ""   Eg: 1-8
	# CDISC Library Product Version
	version,
	# some_class: String = ""   Eg: Findings
	# SDTM Class Identifier
	some_class,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sdtm_version_classes_class_get", response)
		assert(response.data is SdtmClass)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sdtm_version_classes_class_variables_get**   { #mdr_sdtm_version_classes_class_variables_get }
<a name="mdr_sdtm_version_classes_class_variables_get"></a>

> `mdr_sdtm_version_classes_class_variables_get(version: String,some_class: String, on_success: Callable, on_failure: Callable)`



Get SDTM Class Variable List

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
var api = StudyDataTabulationModelSDTMApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = StudyDataTabulationModelSDTMApi.new(config, client)


# Invoke an endpoint
api.mdr_sdtm_version_classes_class_variables_get(
	# version: String = ""   Eg: 1-8
	# CDISC Library Product Version
	version,
	# some_class: String = ""   Eg: GeneralObservations
	# SDTM Class Identifier
	some_class,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sdtm_version_classes_class_variables_get", response)
		assert(response.data is SdtmClassVariables)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sdtm_version_classes_class_variables_var_get**   { #mdr_sdtm_version_classes_class_variables_var_get }
<a name="mdr_sdtm_version_classes_class_variables_var_get"></a>

> `mdr_sdtm_version_classes_class_variables_var_get(version: String,some_class: String,some_var: String, on_success: Callable, on_failure: Callable)`



Get SDTM Class Variable

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
var api = StudyDataTabulationModelSDTMApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = StudyDataTabulationModelSDTMApi.new(config, client)


# Invoke an endpoint
api.mdr_sdtm_version_classes_class_variables_var_get(
	# version: String = ""   Eg: 1-8
	# CDISC Library Product Version
	version,
	# some_class: String = ""   Eg: GeneralObservations
	# SDTM Class Identifier
	some_class,
	# some_var: String = ""   Eg: --DTC
	# SDTM Variable Identifier
	some_var,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sdtm_version_classes_class_variables_var_get", response)
		assert(response.data is SdtmClassVariable)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sdtm_version_classes_get**   { #mdr_sdtm_version_classes_get }
<a name="mdr_sdtm_version_classes_get"></a>

> `mdr_sdtm_version_classes_get(version: String, on_success: Callable, on_failure: Callable)`



Get SDTM Class List

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
var api = StudyDataTabulationModelSDTMApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = StudyDataTabulationModelSDTMApi.new(config, client)


# Invoke an endpoint
api.mdr_sdtm_version_classes_get(
	# version: String = ""   Eg: 1-8
	# CDISC Library Product Version
	version,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sdtm_version_classes_get", response)
		assert(response.data is SdtmClasses)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sdtm_version_datasets_dataset_get**   { #mdr_sdtm_version_datasets_dataset_get }
<a name="mdr_sdtm_version_datasets_dataset_get"></a>

> `mdr_sdtm_version_datasets_dataset_get(version: String,dataset: String, on_success: Callable, on_failure: Callable)`



Get SDTM Dataset

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
var api = StudyDataTabulationModelSDTMApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = StudyDataTabulationModelSDTMApi.new(config, client)


# Invoke an endpoint
api.mdr_sdtm_version_datasets_dataset_get(
	# version: String = ""   Eg: 1-8
	# CDISC Library Product Version
	version,
	# dataset: String = ""   Eg: DM
	# SDTM Dataset Identifier
	dataset,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sdtm_version_datasets_dataset_get", response)
		assert(response.data is SdtmDataset)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sdtm_version_datasets_dataset_variables_get**   { #mdr_sdtm_version_datasets_dataset_variables_get }
<a name="mdr_sdtm_version_datasets_dataset_variables_get"></a>

> `mdr_sdtm_version_datasets_dataset_variables_get(version: String,dataset: String, on_success: Callable, on_failure: Callable)`



Get SDTM Dataset Variable List

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
var api = StudyDataTabulationModelSDTMApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = StudyDataTabulationModelSDTMApi.new(config, client)


# Invoke an endpoint
api.mdr_sdtm_version_datasets_dataset_variables_get(
	# version: String = ""   Eg: 1-8
	# CDISC Library Product Version
	version,
	# dataset: String = ""   Eg: DM
	# SDTM Dataset Identifier
	dataset,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sdtm_version_datasets_dataset_variables_get", response)
		assert(response.data is SdtmDatasetVariables)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sdtm_version_datasets_dataset_variables_var_get**   { #mdr_sdtm_version_datasets_dataset_variables_var_get }
<a name="mdr_sdtm_version_datasets_dataset_variables_var_get"></a>

> `mdr_sdtm_version_datasets_dataset_variables_var_get(version: String,dataset: String,some_var: String, on_success: Callable, on_failure: Callable)`



Get SDTM Dataset Variable

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
var api = StudyDataTabulationModelSDTMApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = StudyDataTabulationModelSDTMApi.new(config, client)


# Invoke an endpoint
api.mdr_sdtm_version_datasets_dataset_variables_var_get(
	# version: String = ""   Eg: 1-8
	# CDISC Library Product Version
	version,
	# dataset: String = ""   Eg: DM
	# SDTM Dataset Identifier
	dataset,
	# some_var: String = ""   Eg: SUBJID
	# SDTM Variable Identifier
	some_var,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sdtm_version_datasets_dataset_variables_var_get", response)
		assert(response.data is SdtmDatasetVariable)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sdtm_version_datasets_get**   { #mdr_sdtm_version_datasets_get }
<a name="mdr_sdtm_version_datasets_get"></a>

> `mdr_sdtm_version_datasets_get(version: String, on_success: Callable, on_failure: Callable)`



Get SDTM Dataset List

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
var api = StudyDataTabulationModelSDTMApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = StudyDataTabulationModelSDTMApi.new(config, client)


# Invoke an endpoint
api.mdr_sdtm_version_datasets_get(
	# version: String = ""   Eg: 1-8
	# CDISC Library Product Version
	version,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sdtm_version_datasets_get", response)
		assert(response.data is SdtmDatasets)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_sdtm_version_get**   { #mdr_sdtm_version_get }
<a name="mdr_sdtm_version_get"></a>

> `mdr_sdtm_version_get(version: String, on_success: Callable, on_failure: Callable)`



Get SDTM product

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
var api = StudyDataTabulationModelSDTMApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = StudyDataTabulationModelSDTMApi.new(config, client)


# Invoke an endpoint
api.mdr_sdtm_version_get(
	# version: String = ""   Eg: 1-8
	# CDISC Library Product Version
	version,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_sdtm_version_get", response)
		assert(response.data is SdtmProduct)
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

