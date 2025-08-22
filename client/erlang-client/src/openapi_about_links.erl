-module(openapi_about_links).

-export([encode/1]).

-export_type([openapi_about_links/0]).

-type openapi_about_links() ::
    #{ 'self' => openapi_about_ref:openapi_about_ref(),
       'lastupdated' => openapi_lastupdated_ref:openapi_lastupdated_ref()
     }.

encode(#{ 'self' := Self,
          'lastupdated' := Lastupdated
        }) ->
    #{ 'self' => Self,
       'lastupdated' => Lastupdated
     }.
