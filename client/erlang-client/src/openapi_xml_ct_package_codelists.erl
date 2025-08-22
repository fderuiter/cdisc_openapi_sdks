-module(openapi_xml_ct_package_codelists).

-export([encode/1]).

-export_type([openapi_xml_ct_package_codelists/0]).

-type openapi_xml_ct_package_codelists() ::
    #{ 'self' => openapi_ct_package_codelists:openapi_ct_package_codelists()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
