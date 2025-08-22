-module(openapi_productgroup_qrs_links).

-export([encode/1]).

-export_type([openapi_productgroup_qrs_links/0]).

-type openapi_productgroup_qrs_links() ::
    #{ 'self' => openapi_productgroup_ref:openapi_productgroup_ref(),
       'qrs' => list()
     }.

encode(#{ 'self' := Self,
          'qrs' := Qrs
        }) ->
    #{ 'self' => Self,
       'qrs' => Qrs
     }.
