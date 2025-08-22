-module(openapi_productgroup_qrs).

-export([encode/1]).

-export_type([openapi_productgroup_qrs/0]).

-type openapi_productgroup_qrs() ::
    #{ '_links' => openapi_productgroup_qrs_links:openapi_productgroup_qrs_links()
     }.

encode(#{ '_links' := Links
        }) ->
    #{ '_links' => Links
     }.
