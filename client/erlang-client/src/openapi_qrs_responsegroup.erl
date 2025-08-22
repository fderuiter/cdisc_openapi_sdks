-module(openapi_qrs_responsegroup).

-export([encode/1]).

-export_type([openapi_qrs_responsegroup/0]).

-type openapi_qrs_responsegroup() ::
    #{ 'label' => binary(),
       '_links' => openapi_qrs_responsegroup_links:openapi_qrs_responsegroup_links()
     }.

encode(#{ 'label' := Label,
          '_links' := Links
        }) ->
    #{ 'label' => Label,
       '_links' => Links
     }.
