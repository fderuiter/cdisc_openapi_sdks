-module(openapi_qrs_item).

-export([encode/1]).

-export_type([openapi_qrs_item/0]).

-type openapi_qrs_item() ::
    #{ 'ordinal' => binary(),
       'label' => binary(),
       'questionText' => binary(),
       '_links' => openapi_qrs_item_links:openapi_qrs_item_links()
     }.

encode(#{ 'ordinal' := Ordinal,
          'label' := Label,
          'questionText' := QuestionText,
          '_links' := Links
        }) ->
    #{ 'ordinal' => Ordinal,
       'label' => Label,
       'questionText' => QuestionText,
       '_links' => Links
     }.
