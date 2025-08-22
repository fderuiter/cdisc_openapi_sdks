-module(openapi_xml_cdashig_domain_field).

-export([encode/1]).

-export_type([openapi_xml_cdashig_domain_field/0]).

-type openapi_xml_cdashig_domain_field() ::
    #{ 'self' => openapi_cdashig_domain_field:openapi_cdashig_domain_field()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
