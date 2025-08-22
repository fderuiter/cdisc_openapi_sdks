-module(openapi_lastupdated_links).

-export([encode/1]).

-export_type([openapi_lastupdated_links/0]).

-type openapi_lastupdated_links() ::
    #{ 'self' => openapi_lastupdated_ref:openapi_lastupdated_ref()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
