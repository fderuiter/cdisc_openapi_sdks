-module(openapi_root_sdtm_dataset_variable_ref).

-export([encode/1]).

-export_type([openapi_root_sdtm_dataset_variable_ref/0]).

-type openapi_root_sdtm_dataset_variable_ref() ::
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
