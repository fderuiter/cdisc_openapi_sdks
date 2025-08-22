-module(openapi_sdtm_dataset_variable_ref_target).

-export([encode/1]).

-export_type([openapi_sdtm_dataset_variable_ref_target/0]).

-type openapi_sdtm_dataset_variable_ref_target() ::
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
