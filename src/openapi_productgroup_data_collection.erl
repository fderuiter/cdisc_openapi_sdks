-module(openapi_productgroup_data_collection).

-export([encode/1]).

-export_type([openapi_productgroup_data_collection/0]).

-type openapi_productgroup_data_collection() ::
    #{ '_links' => openapi_productgroup_data_collection_links:openapi_productgroup_data_collection_links()
     }.

encode(#{ '_links' := Links
        }) ->
    #{ '_links' => Links
     }.
