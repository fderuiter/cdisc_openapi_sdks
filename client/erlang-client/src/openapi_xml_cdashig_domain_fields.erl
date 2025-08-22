-module(openapi_xml_cdashig_domain_fields).

-export([encode/1]).

-export_type([openapi_xml_cdashig_domain_fields/0]).

-type openapi_xml_cdashig_domain_fields() ::
    #{ 'self' => openapi_cdashig_domain_fields:openapi_cdashig_domain_fields()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
