-module(openapi_qrs_responsegroups_links).

-export([encode/1]).

-export_type([openapi_qrs_responsegroups_links/0]).

-type openapi_qrs_responsegroups_links() ::
    #{ 'self' => openapi_qrs_responsegroups_ref:openapi_qrs_responsegroups_ref(),
       'responsegroups' => list()
     }.

encode(#{ 'self' := Self,
          'responsegroups' := Responsegroups
        }) ->
    #{ 'self' => Self,
       'responsegroups' => Responsegroups
     }.
