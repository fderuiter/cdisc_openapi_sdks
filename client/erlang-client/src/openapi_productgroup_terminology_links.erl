-module(openapi_productgroup_terminology_links).

-export([encode/1]).

-export_type([openapi_productgroup_terminology_links/0]).

-type openapi_productgroup_terminology_links() ::
    #{ 'self' => openapi_productgroup_ref:openapi_productgroup_ref(),
       'packages' => list()
     }.

encode(#{ 'self' := Self,
          'packages' := Packages
        }) ->
    #{ 'self' => Self,
       'packages' => Packages
     }.
