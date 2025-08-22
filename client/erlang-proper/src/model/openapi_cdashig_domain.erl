-module(openapi_cdashig_domain).

-include("openapi.hrl").

-export([openapi_cdashig_domain/0]).

-export([openapi_cdashig_domain/1]).

-export_type([openapi_cdashig_domain/0]).

-type openapi_cdashig_domain() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'_links', openapi_cdashig_domain_links:openapi_cdashig_domain_links() }
  | {'fields', list(openapi_cdashig_domain_field:openapi_cdashig_domain_field()) }
  ].


openapi_cdashig_domain() ->
    openapi_cdashig_domain([]).

openapi_cdashig_domain(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'_links', openapi_cdashig_domain_links:openapi_cdashig_domain_links() }
            , {'fields', list(openapi_cdashig_domain_field:openapi_cdashig_domain_field()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

