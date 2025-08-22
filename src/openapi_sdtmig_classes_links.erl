-module(openapi_sdtmig_classes_links).

-export([encode/1]).

-export_type([openapi_sdtmig_classes_links/0]).

-type openapi_sdtmig_classes_links() ::
    #{ 'self' => openapi_sdtmig_classes_ref:openapi_sdtmig_classes_ref(),
       'priorVersion' => openapi_sdtmig_classes_ref:openapi_sdtmig_classes_ref(),
       'classes' => list()
     }.

encode(#{ 'self' := Self,
          'priorVersion' := PriorVersion,
          'classes' := Classes
        }) ->
    #{ 'self' => Self,
       'priorVersion' => PriorVersion,
       'classes' => Classes
     }.
