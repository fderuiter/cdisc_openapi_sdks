-module(openapi_sdtmig_dataset_variable_ref_target).

-export([encode/1]).

-export_type([openapi_sdtmig_dataset_variable_ref_target/0]).

-type openapi_sdtmig_dataset_variable_ref_target() ::
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
