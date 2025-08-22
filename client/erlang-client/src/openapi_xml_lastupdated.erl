-module(openapi_xml_lastupdated).

-export([encode/1]).

-export_type([openapi_xml_lastupdated/0]).

-type openapi_xml_lastupdated() ::
    #{ 'self' => openapi_lastupdated:openapi_lastupdated()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
