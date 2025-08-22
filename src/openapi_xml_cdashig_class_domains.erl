-module(openapi_xml_cdashig_class_domains).

-export([encode/1]).

-export_type([openapi_xml_cdashig_class_domains/0]).

-type openapi_xml_cdashig_class_domains() ::
    #{ 'self' => openapi_cdashig_class_domains:openapi_cdashig_class_domains()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
