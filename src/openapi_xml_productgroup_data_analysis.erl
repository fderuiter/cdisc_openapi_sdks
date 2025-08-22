-module(openapi_xml_productgroup_data_analysis).

-export([encode/1]).

-export_type([openapi_xml_productgroup_data_analysis/0]).

-type openapi_xml_productgroup_data_analysis() ::
    #{ 'self' => openapi_productgroup_data_analysis:openapi_productgroup_data_analysis()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
