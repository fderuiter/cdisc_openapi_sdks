-module(openapi_xml_cdash_domain).

-export([encode/1]).

-export_type([openapi_xml_cdash_domain/0]).

-type openapi_xml_cdash_domain() ::
    #{ 'self' => openapi_cdash_domain:openapi_cdash_domain()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
