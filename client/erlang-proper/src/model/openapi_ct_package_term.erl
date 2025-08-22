-module(openapi_ct_package_term).

-include("openapi.hrl").

-export([openapi_ct_package_term/0]).

-export([openapi_ct_package_term/1]).

-export_type([openapi_ct_package_term/0]).

-type openapi_ct_package_term() ::
  [ {'conceptId', binary() }
  | {'submissionValue', binary() }
  | {'definition', binary() }
  | {'preferredTerm', binary() }
  | {'synonyms', list(binary()) }
  ].


openapi_ct_package_term() ->
    openapi_ct_package_term([]).

openapi_ct_package_term(Fields) ->
  Default = [ {'conceptId', binary() }
            , {'submissionValue', binary() }
            , {'definition', binary() }
            , {'preferredTerm', binary() }
            , {'synonyms', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

