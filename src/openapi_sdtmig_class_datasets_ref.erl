-module(openapi_sdtmig_class_datasets_ref).

-export([encode/1]).

-export_type([openapi_sdtmig_class_datasets_ref/0]).

-type openapi_sdtmig_class_datasets_ref() ::
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
