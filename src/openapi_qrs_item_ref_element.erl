-module(openapi_qrs_item_ref_element).

-export([encode/1]).

-export_type([openapi_qrs_item_ref_element/0]).

-type openapi_qrs_item_ref_element() ::
    #{ 'href' => binary(),
       'title' => binary(),
       'type' => binary()
     }.

encode(#{ 'href' := Href,
          'title' := Title,
          'type' := Type
        }) ->
    #{ 'href' => Href,
       'title' => Title,
       'type' => Type
     }.
