-module(openapi_productgroup_terminology).

-export([encode/1]).

-export_type([openapi_productgroup_terminology/0]).

-type openapi_productgroup_terminology() ::
    #{ '_links' => openapi_productgroup_terminology_links:openapi_productgroup_terminology_links()
     }.

encode(#{ '_links' := Links
        }) ->
    #{ '_links' => Links
     }.
