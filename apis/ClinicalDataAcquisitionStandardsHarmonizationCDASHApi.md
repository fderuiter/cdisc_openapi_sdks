<a name="__pageTop"></a>
# ClinicalDataAcquisitionStandardsHarmonizationCDASHApi   { #ClinicalDataAcquisitionStandardsHarmonizationCDASHApi }


All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_cdash_version_classes_class_domains_get**](#mdr_cdash_version_classes_class_domains_get) | **GET** `/mdr/cdash/{version}/classes/{class}/domains` | 
[**mdr_cdash_version_classes_class_fields_field_get**](#mdr_cdash_version_classes_class_fields_field_get) | **GET** `/mdr/cdash/{version}/classes/{class}/fields/{field}` | 
[**mdr_cdash_version_classes_class_get**](#mdr_cdash_version_classes_class_get) | **GET** `/mdr/cdash/{version}/classes/{class}` | 
[**mdr_cdash_version_classes_get**](#mdr_cdash_version_classes_get) | **GET** `/mdr/cdash/{version}/classes` | 
[**mdr_cdash_version_domains_domain_fields_field_get**](#mdr_cdash_version_domains_domain_fields_field_get) | **GET** `/mdr/cdash/{version}/domains/{domain}/fields/{field}` | 
[**mdr_cdash_version_domains_domain_fields_get**](#mdr_cdash_version_domains_domain_fields_get) | **GET** `/mdr/cdash/{version}/domains/{domain}/fields` | 
[**mdr_cdash_version_domains_domain_get**](#mdr_cdash_version_domains_domain_get) | **GET** `/mdr/cdash/{version}/domains/{domain}` | 
[**mdr_cdash_version_domains_get**](#mdr_cdash_version_domains_get) | **GET** `/mdr/cdash/{version}/domains` | 
[**mdr_cdash_version_get**](#mdr_cdash_version_get) | **GET** `/mdr/cdash/{version}` | 
[**mdr_root_cdash_classes_class_fields_field_get**](#mdr_root_cdash_classes_class_fields_field_get) | **GET** `/mdr/root/cdash/classes/{class}/fields/{field}` | 
[**mdr_root_cdash_domains_domain_fields_field_get**](#mdr_root_cdash_domains_domain_fields_field_get) | **GET** `/mdr/root/cdash/domains/{domain}/fields/{field}` | 

# **mdr_cdash_version_classes_class_domains_get**   { #mdr_cdash_version_classes_class_domains_get }
<a name="mdr_cdash_version_classes_class_domains_get"></a>

> `mdr_cdash_version_classes_class_domains_get(version: String,some_class: String, on_success: Callable, on_failure: Callable)`



Get CDASH Class Domain List

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
var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config, client)


# Invoke an endpoint
api.mdr_cdash_version_classes_class_domains_get(
	# version: String = ""   Eg: 1-1
	# CDISC Library Product Version
	version,
	# some_class: String = ""   Eg: SpecialPurpose
	# CDASH Class Identifier
	some_class,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdash_version_classes_class_domains_get", response)
		assert(response.data is CdashClassDomains)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_cdash_version_classes_class_fields_field_get**   { #mdr_cdash_version_classes_class_fields_field_get }
<a name="mdr_cdash_version_classes_class_fields_field_get"></a>

> `mdr_cdash_version_classes_class_fields_field_get(version: String,some_class: String,field: String, on_success: Callable, on_failure: Callable)`



Get CDASH Class Field

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
var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config, client)


# Invoke an endpoint
api.mdr_cdash_version_classes_class_fields_field_get(
	# version: String = ""   Eg: 1-1
	# CDISC Library Product Version
	version,
	# some_class: String = ""   Eg: Timing
	# CDASH Class Identifier
	some_class,
	# field: String = ""   Eg: --DAT
	# CDASH Field Identifier
	field,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdash_version_classes_class_fields_field_get", response)
		assert(response.data is CdashClassField)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_cdash_version_classes_class_get**   { #mdr_cdash_version_classes_class_get }
<a name="mdr_cdash_version_classes_class_get"></a>

> `mdr_cdash_version_classes_class_get(version: String,some_class: String, on_success: Callable, on_failure: Callable)`



Get CDASH Class

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
var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config, client)


# Invoke an endpoint
api.mdr_cdash_version_classes_class_get(
	# version: String = ""   Eg: 1-1
	# CDISC Library Product Version
	version,
	# some_class: String = ""   Eg: Timing
	# CDASH Class Identifier
	some_class,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdash_version_classes_class_get", response)
		assert(response.data is CdashClass)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_cdash_version_classes_get**   { #mdr_cdash_version_classes_get }
<a name="mdr_cdash_version_classes_get"></a>

> `mdr_cdash_version_classes_get(version: String, on_success: Callable, on_failure: Callable)`



Get CDASH Class List

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
var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config, client)


# Invoke an endpoint
api.mdr_cdash_version_classes_get(
	# version: String = ""   Eg: 1-1
	# CDISC Library Product Version
	version,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdash_version_classes_get", response)
		assert(response.data is CdashProductClasses)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_cdash_version_domains_domain_fields_field_get**   { #mdr_cdash_version_domains_domain_fields_field_get }
<a name="mdr_cdash_version_domains_domain_fields_field_get"></a>

> `mdr_cdash_version_domains_domain_fields_field_get(version: String,domain: String,field: String, on_success: Callable, on_failure: Callable)`



Get CDASH Domain Field

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
var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config, client)


# Invoke an endpoint
api.mdr_cdash_version_domains_domain_fields_field_get(
	# version: String = ""   Eg: 1-1
	# CDISC Library Product Version
	version,
	# domain: String = ""   Eg: DM
	# CDASH Domain Identifier
	domain,
	# field: String = ""   Eg: AGE
	# CDASH Field Identifier
	field,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdash_version_domains_domain_fields_field_get", response)
		assert(response.data is CdashDomainField)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_cdash_version_domains_domain_fields_get**   { #mdr_cdash_version_domains_domain_fields_get }
<a name="mdr_cdash_version_domains_domain_fields_get"></a>

> `mdr_cdash_version_domains_domain_fields_get(version: String,domain: String, on_success: Callable, on_failure: Callable)`



Get CDASH Domain Field List

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
var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config, client)


# Invoke an endpoint
api.mdr_cdash_version_domains_domain_fields_get(
	# version: String = ""   Eg: 1-1
	# CDISC Library Product Version
	version,
	# domain: String = ""   Eg: DM
	# CDASH Domain Identifier
	domain,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdash_version_domains_domain_fields_get", response)
		assert(response.data is CdashDomainFields)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_cdash_version_domains_domain_get**   { #mdr_cdash_version_domains_domain_get }
<a name="mdr_cdash_version_domains_domain_get"></a>

> `mdr_cdash_version_domains_domain_get(version: String,domain: String, on_success: Callable, on_failure: Callable)`



Get CDASH Domain

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
var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config, client)


# Invoke an endpoint
api.mdr_cdash_version_domains_domain_get(
	# version: String = ""   Eg: 1-1
	# CDISC Library Product Version
	version,
	# domain: String = ""   Eg: DM
	# CDASH Domain Identifier
	domain,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdash_version_domains_domain_get", response)
		assert(response.data is CdashDomain)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_cdash_version_domains_get**   { #mdr_cdash_version_domains_get }
<a name="mdr_cdash_version_domains_get"></a>

> `mdr_cdash_version_domains_get(version: String, on_success: Callable, on_failure: Callable)`



Get CDASH Domain List

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
var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config, client)


# Invoke an endpoint
api.mdr_cdash_version_domains_get(
	# version: String = ""   Eg: 1-1
	# CDISC Library Product Version
	version,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdash_version_domains_get", response)
		assert(response.data is CdashProductDomains)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_cdash_version_get**   { #mdr_cdash_version_get }
<a name="mdr_cdash_version_get"></a>

> `mdr_cdash_version_get(version: String, on_success: Callable, on_failure: Callable)`



Get CDASH Product

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
var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config, client)


# Invoke an endpoint
api.mdr_cdash_version_get(
	# version: String = ""   Eg: 1-1
	# CDISC Library Product Version
	version,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdash_version_get", response)
		assert(response.data is CdashProduct)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_root_cdash_classes_class_fields_field_get**   { #mdr_root_cdash_classes_class_fields_field_get }
<a name="mdr_root_cdash_classes_class_fields_field_get"></a>

> `mdr_root_cdash_classes_class_fields_field_get(some_class: String,field: String, on_success: Callable, on_failure: Callable)`



Get Root CDASH Class Field

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
var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config, client)


# Invoke an endpoint
api.mdr_root_cdash_classes_class_fields_field_get(
	# some_class: String = ""   Eg: Timing
	# CDASH Class Identifier
	some_class,
	# field: String = ""   Eg: --DAT
	# CDASH Field Identifier
	field,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_root_cdash_classes_class_fields_field_get", response)
		assert(response.data is RootCdashClassField)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_root_cdash_domains_domain_fields_field_get**   { #mdr_root_cdash_domains_domain_fields_field_get }
<a name="mdr_root_cdash_domains_domain_fields_field_get"></a>

> `mdr_root_cdash_domains_domain_fields_field_get(domain: String,field: String, on_success: Callable, on_failure: Callable)`



Get Root CDASH Domain Field

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
var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.new(config, client)


# Invoke an endpoint
api.mdr_root_cdash_domains_domain_fields_field_get(
	# domain: String = ""   Eg: DM
	# CDASH Domain Identifier
	domain,
	# field: String = ""   Eg: AGE
	# CDASH Field Identifier
	field,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_root_cdash_domains_domain_fields_field_get", response)
		assert(response.data is RootCdashDomainField)
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

