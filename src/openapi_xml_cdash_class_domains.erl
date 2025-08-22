-module(openapi_xml_cdash_class_domains).

-export([encode/1]).

-export_type([openapi_xml_cdash_class_domains/0]).

-type openapi_xml_cdash_class_domains() ::
    #{ 'self' => openapi_cdash_class_domains:openapi_cdash_class_domains()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
