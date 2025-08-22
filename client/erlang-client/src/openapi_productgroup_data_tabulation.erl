-module(openapi_productgroup_data_tabulation).

-export([encode/1]).

-export_type([openapi_productgroup_data_tabulation/0]).

-type openapi_productgroup_data_tabulation() ::
    #{ '_links' => openapi_productgroup_data_tabulation_links:openapi_productgroup_data_tabulation_links()
     }.

encode(#{ '_links' := Links
        }) ->
    #{ '_links' => Links
     }.
