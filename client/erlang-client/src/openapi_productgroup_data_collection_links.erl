-module(openapi_productgroup_data_collection_links).

-export([encode/1]).

-export_type([openapi_productgroup_data_collection_links/0]).

-type openapi_productgroup_data_collection_links() ::
    #{ 'self' => openapi_productgroup_ref:openapi_productgroup_ref(),
       'cdash' => list(),
       'cdashig' => list()
     }.

encode(#{ 'self' := Self,
          'cdash' := Cdash,
          'cdashig' := Cdashig
        }) ->
    #{ 'self' => Self,
       'cdash' => Cdash,
       'cdashig' => Cdashig
     }.
