-module(openapi_sdtm_class_variable_ref_version).

-export([encode/1]).

-export_type([openapi_sdtm_class_variable_ref_version/0]).

-type openapi_sdtm_class_variable_ref_version() ::
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
