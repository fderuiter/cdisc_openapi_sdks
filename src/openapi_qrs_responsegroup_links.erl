-module(openapi_qrs_responsegroup_links).

-export([encode/1]).

-export_type([openapi_qrs_responsegroup_links/0]).

-type openapi_qrs_responsegroup_links() ::
    #{ 'self' => openapi_qrs_responsegroup_ref:openapi_qrs_responsegroup_ref(),
       'responses' => list()
     }.

encode(#{ 'self' := Self,
          'responses' := Responses
        }) ->
    #{ 'self' => Self,
       'responses' => Responses
     }.
