-module(openapi_xml_productgroup_terminology).

-export([encode/1]).

-export_type([openapi_xml_productgroup_terminology/0]).

-type openapi_xml_productgroup_terminology() ::
    #{ 'self' => openapi_productgroup_terminology:openapi_productgroup_terminology()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
