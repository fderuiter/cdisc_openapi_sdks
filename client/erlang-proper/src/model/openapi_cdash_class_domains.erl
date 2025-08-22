-module(openapi_cdash_class_domains).

-include("openapi.hrl").

-export([openapi_cdash_class_domains/0]).

-export([openapi_cdash_class_domains/1]).

-export_type([openapi_cdash_class_domains/0]).

-type openapi_cdash_class_domains() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'_links', openapi_cdash_class_domains_links:openapi_cdash_class_domains_links() }
  ].


openapi_cdash_class_domains() ->
    openapi_cdash_class_domains([]).

openapi_cdash_class_domains(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'_links', openapi_cdash_class_domains_links:openapi_cdash_class_domains_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

