-module(openapi_xml_productgroup_data_tabulation).

-export([encode/1]).

-export_type([openapi_xml_productgroup_data_tabulation/0]).

-type openapi_xml_productgroup_data_tabulation() ::
    #{ 'self' => openapi_productgroup_data_tabulation:openapi_productgroup_data_tabulation()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
