-module(openapi_qrs_responses).

-export([encode/1]).

-export_type([openapi_qrs_responses/0]).

-type openapi_qrs_responses() ::
    #{ 'ordinal' => binary(),
       '_links' => openapi_qrs_response_links:openapi_qrs_response_links()
     }.

encode(#{ 'ordinal' := Ordinal,
          '_links' := Links
        }) ->
    #{ 'ordinal' => Ordinal,
       '_links' => Links
     }.
