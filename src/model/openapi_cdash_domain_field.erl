-module(openapi_cdash_domain_field).

-include("openapi.hrl").

-export([openapi_cdash_domain_field/0]).

-export([openapi_cdash_domain_field/1]).

-export_type([openapi_cdash_domain_field/0]).

-type openapi_cdash_domain_field() ::
  [ {'ordinal', binary() }
  | {'name', binary() }
  | {'label', binary() }
  | {'definition', binary() }
  | {'domainSpecific', binary() }
  | {'questionText', binary() }
  | {'prompt', binary() }
  | {'simpleDatatype', binary() }
  | {'implementationNotes', binary() }
  | {'mappingInstructions', binary() }
  | {'_links', openapi_cdash_domain_field_links:openapi_cdash_domain_field_links() }
  ].


openapi_cdash_domain_field() ->
    openapi_cdash_domain_field([]).

openapi_cdash_domain_field(Fields) ->
  Default = [ {'ordinal', binary() }
            , {'name', binary() }
            , {'label', binary() }
            , {'definition', binary() }
            , {'domainSpecific', binary() }
            , {'questionText', binary() }
            , {'prompt', binary() }
            , {'simpleDatatype', binary() }
            , {'implementationNotes', binary() }
            , {'mappingInstructions', binary() }
            , {'_links', openapi_cdash_domain_field_links:openapi_cdash_domain_field_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

