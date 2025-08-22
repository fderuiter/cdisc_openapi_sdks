<a name="__pageTop"></a>
# CDASHImplementationGuideCDASHIGApi   { #CDASHImplementationGuideCDASHIGApi }


All URIs are relative to *https://library.cdisc.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mdr_cdashig_version_classes_class_domains_get**](#mdr_cdashig_version_classes_class_domains_get) | **GET** `/mdr/cdashig/{version}/classes/{class}/domains` | 
[**mdr_cdashig_version_classes_class_get**](#mdr_cdashig_version_classes_class_get) | **GET** `/mdr/cdashig/{version}/classes/{class}` | 
[**mdr_cdashig_version_classes_class_scenarios_get**](#mdr_cdashig_version_classes_class_scenarios_get) | **GET** `/mdr/cdashig/{version}/classes/{class}/scenarios` | 
[**mdr_cdashig_version_classes_get**](#mdr_cdashig_version_classes_get) | **GET** `/mdr/cdashig/{version}/classes` | 
[**mdr_cdashig_version_domains_domain_fields_field_get**](#mdr_cdashig_version_domains_domain_fields_field_get) | **GET** `/mdr/cdashig/{version}/domains/{domain}/fields/{field}` | 
[**mdr_cdashig_version_domains_domain_fields_get**](#mdr_cdashig_version_domains_domain_fields_get) | **GET** `/mdr/cdashig/{version}/domains/{domain}/fields` | 
[**mdr_cdashig_version_domains_domain_get**](#mdr_cdashig_version_domains_domain_get) | **GET** `/mdr/cdashig/{version}/domains/{domain}` | 
[**mdr_cdashig_version_domains_get**](#mdr_cdashig_version_domains_get) | **GET** `/mdr/cdashig/{version}/domains` | 
[**mdr_cdashig_version_get**](#mdr_cdashig_version_get) | **GET** `/mdr/cdashig/{version}` | 
[**mdr_cdashig_version_scenarios_domain_scenario_fields_field_get**](#mdr_cdashig_version_scenarios_domain_scenario_fields_field_get) | **GET** `/mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field}` | 
[**mdr_cdashig_version_scenarios_domain_scenario_fields_get**](#mdr_cdashig_version_scenarios_domain_scenario_fields_get) | **GET** `/mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields` | 
[**mdr_cdashig_version_scenarios_domain_scenario_get**](#mdr_cdashig_version_scenarios_domain_scenario_get) | **GET** `/mdr/cdashig/{version}/scenarios/{domain}.{scenario}` | 
[**mdr_cdashig_version_scenarios_get**](#mdr_cdashig_version_scenarios_get) | **GET** `/mdr/cdashig/{version}/scenarios` | 
[**mdr_root_cdashig_domains_domain_fields_field_get**](#mdr_root_cdashig_domains_domain_fields_field_get) | **GET** `/mdr/root/cdashig/domains/{domain}/fields/{field}` | 
[**mdr_root_cdashig_scenarios_domain_scenario_fields_field_get**](#mdr_root_cdashig_scenarios_domain_scenario_fields_field_get) | **GET** `/mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field}` | 

# **mdr_cdashig_version_classes_class_domains_get**   { #mdr_cdashig_version_classes_class_domains_get }
<a name="mdr_cdashig_version_classes_class_domains_get"></a>

> `mdr_cdashig_version_classes_class_domains_get(version: String,some_class: String, on_success: Callable, on_failure: Callable)`



Get CDASHIG Class Domain List

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
var api = CDASHImplementationGuideCDASHIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = CDASHImplementationGuideCDASHIGApi.new(config, client)


# Invoke an endpoint
api.mdr_cdashig_version_classes_class_domains_get(
	# version: String = ""   Eg: 2-1
	# CDISC Library Product Version
	version,
	# some_class: String = ""   Eg: Findings
	# CDASHIG Class Identifier
	some_class,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdashig_version_classes_class_domains_get", response)
		assert(response.data is CdashigClassDomains)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_cdashig_version_classes_class_get**   { #mdr_cdashig_version_classes_class_get }
<a name="mdr_cdashig_version_classes_class_get"></a>

> `mdr_cdashig_version_classes_class_get(version: String,some_class: String, on_success: Callable, on_failure: Callable)`



Get CDASHIG Class

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
var api = CDASHImplementationGuideCDASHIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = CDASHImplementationGuideCDASHIGApi.new(config, client)


# Invoke an endpoint
api.mdr_cdashig_version_classes_class_get(
	# version: String = ""   Eg: 2-1
	# CDISC Library Product Version
	version,
	# some_class: String = ""   Eg: Findings
	# CDASHIG Class Identifier
	some_class,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdashig_version_classes_class_get", response)
		assert(response.data is CdashigClass)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_cdashig_version_classes_class_scenarios_get**   { #mdr_cdashig_version_classes_class_scenarios_get }
<a name="mdr_cdashig_version_classes_class_scenarios_get"></a>

> `mdr_cdashig_version_classes_class_scenarios_get(version: String,some_class: String, on_success: Callable, on_failure: Callable)`



Get CDASHIG Class Scenario List

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
var api = CDASHImplementationGuideCDASHIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = CDASHImplementationGuideCDASHIGApi.new(config, client)


# Invoke an endpoint
api.mdr_cdashig_version_classes_class_scenarios_get(
	# version: String = ""   Eg: 2-1
	# CDISC Library Product Version
	version,
	# some_class: String = ""   Eg: Findings
	# CDASHIG Class Identifier
	some_class,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdashig_version_classes_class_scenarios_get", response)
		assert(response.data is CdashigClassScenarios)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_cdashig_version_classes_get**   { #mdr_cdashig_version_classes_get }
<a name="mdr_cdashig_version_classes_get"></a>

> `mdr_cdashig_version_classes_get(version: String, on_success: Callable, on_failure: Callable)`



Get CDASHIG Class List

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
var api = CDASHImplementationGuideCDASHIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = CDASHImplementationGuideCDASHIGApi.new(config, client)


# Invoke an endpoint
api.mdr_cdashig_version_classes_get(
	# version: String = ""   Eg: 2-1
	# CDISC Library Product Version
	version,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdashig_version_classes_get", response)
		assert(response.data is CdashigProductClasses)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_cdashig_version_domains_domain_fields_field_get**   { #mdr_cdashig_version_domains_domain_fields_field_get }
<a name="mdr_cdashig_version_domains_domain_fields_field_get"></a>

> `mdr_cdashig_version_domains_domain_fields_field_get(version: String,domain: String,field: String, on_success: Callable, on_failure: Callable)`



Get CDASHIG Domain Field

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
var api = CDASHImplementationGuideCDASHIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = CDASHImplementationGuideCDASHIGApi.new(config, client)


# Invoke an endpoint
api.mdr_cdashig_version_domains_domain_fields_field_get(
	# version: String = ""   Eg: 2-1
	# CDISC Library Product Version
	version,
	# domain: String = ""   Eg: VS
	# CDASHIG Domain Identifier
	domain,
	# field: String = ""   Eg: VSDAT
	# CDASHIG Field Identifier
	field,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdashig_version_domains_domain_fields_field_get", response)
		assert(response.data is CdashigDomainField)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_cdashig_version_domains_domain_fields_get**   { #mdr_cdashig_version_domains_domain_fields_get }
<a name="mdr_cdashig_version_domains_domain_fields_get"></a>

> `mdr_cdashig_version_domains_domain_fields_get(version: String,domain: String, on_success: Callable, on_failure: Callable)`



Get CDASHIG Domain Field List

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
var api = CDASHImplementationGuideCDASHIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = CDASHImplementationGuideCDASHIGApi.new(config, client)


# Invoke an endpoint
api.mdr_cdashig_version_domains_domain_fields_get(
	# version: String = ""   Eg: 2-1
	# CDISC Library Product Version
	version,
	# domain: String = ""   Eg: VS
	# CDASHIG Domain Identifier
	domain,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdashig_version_domains_domain_fields_get", response)
		assert(response.data is CdashigDomainFields)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_cdashig_version_domains_domain_get**   { #mdr_cdashig_version_domains_domain_get }
<a name="mdr_cdashig_version_domains_domain_get"></a>

> `mdr_cdashig_version_domains_domain_get(version: String,domain: String, on_success: Callable, on_failure: Callable)`



Get CDASHIG Domain

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
var api = CDASHImplementationGuideCDASHIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = CDASHImplementationGuideCDASHIGApi.new(config, client)


# Invoke an endpoint
api.mdr_cdashig_version_domains_domain_get(
	# version: String = ""   Eg: 2-1
	# CDISC Library Product Version
	version,
	# domain: String = ""   Eg: VS
	# CDASHIG Domain Identifier
	domain,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdashig_version_domains_domain_get", response)
		assert(response.data is CdashigDomain)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_cdashig_version_domains_get**   { #mdr_cdashig_version_domains_get }
<a name="mdr_cdashig_version_domains_get"></a>

> `mdr_cdashig_version_domains_get(version: String, on_success: Callable, on_failure: Callable)`



Get CDASHIG Domain List

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
var api = CDASHImplementationGuideCDASHIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = CDASHImplementationGuideCDASHIGApi.new(config, client)


# Invoke an endpoint
api.mdr_cdashig_version_domains_get(
	# version: String = ""   Eg: 2-1
	# CDISC Library Product Version
	version,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdashig_version_domains_get", response)
		assert(response.data is CdashigProductDomains)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_cdashig_version_get**   { #mdr_cdashig_version_get }
<a name="mdr_cdashig_version_get"></a>

> `mdr_cdashig_version_get(version: String, on_success: Callable, on_failure: Callable)`



Get CDASHIG Product

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
var api = CDASHImplementationGuideCDASHIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = CDASHImplementationGuideCDASHIGApi.new(config, client)


# Invoke an endpoint
api.mdr_cdashig_version_get(
	# version: String = ""   Eg: 2-1
	# CDISC Library Product Version
	version,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdashig_version_get", response)
		assert(response.data is CdashigProduct)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_cdashig_version_scenarios_domain_scenario_fields_field_get**   { #mdr_cdashig_version_scenarios_domain_scenario_fields_field_get }
<a name="mdr_cdashig_version_scenarios_domain_scenario_fields_field_get"></a>

> `mdr_cdashig_version_scenarios_domain_scenario_fields_field_get(version: String,domain: String,scenario: String,field: String, on_success: Callable, on_failure: Callable)`



Get CDASHIG Scenario Field

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
var api = CDASHImplementationGuideCDASHIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = CDASHImplementationGuideCDASHIGApi.new(config, client)


# Invoke an endpoint
api.mdr_cdashig_version_scenarios_domain_scenario_fields_field_get(
	# version: String = ""   Eg: 2-1
	# CDISC Library Product Version
	version,
	# domain: String = ""   Eg: VS
	# CDASHIG Domain Identifier
	domain,
	# scenario: String = ""   Eg: Generic
	# CDASHIG Scenario Identifier
	scenario,
	# field: String = ""   Eg: VSDAT
	# CDASHIG Field Identifier
	field,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdashig_version_scenarios_domain_scenario_fields_field_get", response)
		assert(response.data is CdashigScenarioField)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_cdashig_version_scenarios_domain_scenario_fields_get**   { #mdr_cdashig_version_scenarios_domain_scenario_fields_get }
<a name="mdr_cdashig_version_scenarios_domain_scenario_fields_get"></a>

> `mdr_cdashig_version_scenarios_domain_scenario_fields_get(version: String,domain: String,scenario: String, on_success: Callable, on_failure: Callable)`



Get CDASHIG Scenario Field List

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
var api = CDASHImplementationGuideCDASHIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = CDASHImplementationGuideCDASHIGApi.new(config, client)


# Invoke an endpoint
api.mdr_cdashig_version_scenarios_domain_scenario_fields_get(
	# version: String = ""   Eg: 2-1
	# CDISC Library Product Version
	version,
	# domain: String = ""   Eg: VS
	# CDASHIG Domain Identifier
	domain,
	# scenario: String = ""   Eg: HorizontalGeneric
	# CDASHIG Scenario Identifier
	scenario,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdashig_version_scenarios_domain_scenario_fields_get", response)
		assert(response.data is CdashigScenarioFields)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_cdashig_version_scenarios_domain_scenario_get**   { #mdr_cdashig_version_scenarios_domain_scenario_get }
<a name="mdr_cdashig_version_scenarios_domain_scenario_get"></a>

> `mdr_cdashig_version_scenarios_domain_scenario_get(version: String,domain: String,scenario: String, on_success: Callable, on_failure: Callable)`



Get CDASHIG Scenario

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
var api = CDASHImplementationGuideCDASHIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = CDASHImplementationGuideCDASHIGApi.new(config, client)


# Invoke an endpoint
api.mdr_cdashig_version_scenarios_domain_scenario_get(
	# version: String = ""   Eg: 2-1
	# CDISC Library Product Version
	version,
	# domain: String = ""   Eg: VS
	# CDASHIG Domain Identifier
	domain,
	# scenario: String = ""   Eg: HorizontalGeneric
	# CDASHIG Scenario Identifier
	scenario,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdashig_version_scenarios_domain_scenario_get", response)
		assert(response.data is CdashigScenario)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_cdashig_version_scenarios_get**   { #mdr_cdashig_version_scenarios_get }
<a name="mdr_cdashig_version_scenarios_get"></a>

> `mdr_cdashig_version_scenarios_get(version: String, on_success: Callable, on_failure: Callable)`



Get CDASHIG Scenario List

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
var api = CDASHImplementationGuideCDASHIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = CDASHImplementationGuideCDASHIGApi.new(config, client)


# Invoke an endpoint
api.mdr_cdashig_version_scenarios_get(
	# version: String = ""   Eg: 2-1
	# CDISC Library Product Version
	version,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_cdashig_version_scenarios_get", response)
		assert(response.data is CdashigProductScenarios)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_root_cdashig_domains_domain_fields_field_get**   { #mdr_root_cdashig_domains_domain_fields_field_get }
<a name="mdr_root_cdashig_domains_domain_fields_field_get"></a>

> `mdr_root_cdashig_domains_domain_fields_field_get(domain: String,field: String, on_success: Callable, on_failure: Callable)`



Get Root CDASHIG Domain Field

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
var api = CDASHImplementationGuideCDASHIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = CDASHImplementationGuideCDASHIGApi.new(config, client)


# Invoke an endpoint
api.mdr_root_cdashig_domains_domain_fields_field_get(
	# domain: String = ""   Eg: VS
	# CDASHIG Domain Identifier
	domain,
	# field: String = ""   Eg: VSDAT
	# CDASHIG Field Identifier
	field,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_root_cdashig_domains_domain_fields_field_get", response)
		assert(response.data is RootCdashigDomainField)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mdr_root_cdashig_scenarios_domain_scenario_fields_field_get**   { #mdr_root_cdashig_scenarios_domain_scenario_fields_field_get }
<a name="mdr_root_cdashig_scenarios_domain_scenario_fields_field_get"></a>

> `mdr_root_cdashig_scenarios_domain_scenario_fields_field_get(domain: String,scenario: String,field: String, on_success: Callable, on_failure: Callable)`



Get Root CDASHIG Scenario Field

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
var api = CDASHImplementationGuideCDASHIGApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = CDASHImplementationGuideCDASHIGApi.new(config, client)


# Invoke an endpoint
api.mdr_root_cdashig_scenarios_domain_scenario_fields_field_get(
	# domain: String = ""   Eg: VS
	# CDASHIG Domain Identifier
	domain,
	# scenario: String = ""   Eg: Generic
	# CDASHIG Scenario Identifier
	scenario,
	# field: String = ""   Eg: VSDAT
	# CDASHIG Field Identifier
	field,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mdr_root_cdashig_scenarios_domain_scenario_fields_field_get", response)
		assert(response.data is RootCdashigScenarioField)
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

