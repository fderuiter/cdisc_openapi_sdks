-module(openapi_productgroup_data_analysis).

-export([encode/1]).

-export_type([openapi_productgroup_data_analysis/0]).

-type openapi_productgroup_data_analysis() ::
    #{ '_links' => openapi_productgroup_data_analysis_links:openapi_productgroup_data_analysis_links()
     }.

encode(#{ '_links' := Links
        }) ->
    #{ '_links' => Links
     }.
