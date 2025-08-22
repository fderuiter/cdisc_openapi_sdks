-module(openapi_xml_productgroup_data_collection).

-export([encode/1]).

-export_type([openapi_xml_productgroup_data_collection/0]).

-type openapi_xml_productgroup_data_collection() ::
    #{ 'self' => openapi_productgroup_data_collection:openapi_productgroup_data_collection()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
