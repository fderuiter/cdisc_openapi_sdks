-module(openapi_cdashig_class).

-include("openapi.hrl").

-export([openapi_cdashig_class/0]).

-export([openapi_cdashig_class/1]).

-export_type([openapi_cdashig_class/0]).

-type openapi_cdashig_class() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'_links', openapi_cdashig_class_links:openapi_cdashig_class_links() }
  | {'domains', list(openapi_cdashig_domain:openapi_cdashig_domain()) }
  | {'scenarios', list(openapi_cdashig_scenario:openapi_cdashig_scenario()) }
  ].


openapi_cdashig_class() ->
    openapi_cdashig_class([]).

openapi_cdashig_class(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'_links', openapi_cdashig_class_links:openapi_cdashig_class_links() }
            , {'domains', list(openapi_cdashig_domain:openapi_cdashig_domain()) }
            , {'scenarios', list(openapi_cdashig_scenario:openapi_cdashig_scenario()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

