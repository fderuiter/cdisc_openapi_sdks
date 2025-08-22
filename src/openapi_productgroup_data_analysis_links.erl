-module(openapi_productgroup_data_analysis_links).

-export([encode/1]).

-export_type([openapi_productgroup_data_analysis_links/0]).

-type openapi_productgroup_data_analysis_links() ::
    #{ 'self' => openapi_productgroup_ref:openapi_productgroup_ref(),
       'adam' => list()
     }.

encode(#{ 'self' := Self,
          'adam' := Adam
        }) ->
    #{ 'self' => Self,
       'adam' => Adam
     }.
