-module(openapi_sendig_dataset_variables_ref).

-export([encode/1]).

-export_type([openapi_sendig_dataset_variables_ref/0]).

-type openapi_sendig_dataset_variables_ref() ::
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
