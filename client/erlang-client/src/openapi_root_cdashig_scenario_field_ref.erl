-module(openapi_root_cdashig_scenario_field_ref).

-export([encode/1]).

-export_type([openapi_root_cdashig_scenario_field_ref/0]).

-type openapi_root_cdashig_scenario_field_ref() ::
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
