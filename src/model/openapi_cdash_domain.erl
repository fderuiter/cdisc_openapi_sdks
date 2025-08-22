-module(openapi_cdash_domain).

-include("openapi.hrl").

-export([openapi_cdash_domain/0]).

-export([openapi_cdash_domain/1]).

-export_type([openapi_cdash_domain/0]).

-type openapi_cdash_domain() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'_links', openapi_cdash_domain_links:openapi_cdash_domain_links() }
  | {'fields', list(openapi_cdash_domain_field:openapi_cdash_domain_field()) }
  ].


openapi_cdash_domain() ->
    openapi_cdash_domain([]).

openapi_cdash_domain(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'_links', openapi_cdash_domain_links:openapi_cdash_domain_links() }
            , {'fields', list(openapi_cdash_domain_field:openapi_cdash_domain_field()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

