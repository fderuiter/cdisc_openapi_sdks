-module(openapi_xml_cdashig_domain).

-export([encode/1]).

-export_type([openapi_xml_cdashig_domain/0]).

-type openapi_xml_cdashig_domain() ::
    #{ 'self' => openapi_cdashig_domain:openapi_cdashig_domain()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
