-module(openapi_ct_term).

-include("openapi.hrl").

-export([openapi_ct_term/0]).

-export([openapi_ct_term/1]).

-export_type([openapi_ct_term/0]).

-type openapi_ct_term() ::
  [ {'conceptId', binary() }
  | {'submissionValue', binary() }
  | {'definition', binary() }
  | {'preferredTerm', binary() }
  | {'synonyms', list(binary()) }
  | {'_links', openapi_ct_term_links:openapi_ct_term_links() }
  ].


openapi_ct_term() ->
    openapi_ct_term([]).

openapi_ct_term(Fields) ->
  Default = [ {'conceptId', binary() }
            , {'submissionValue', binary() }
            , {'definition', binary() }
            , {'preferredTerm', binary() }
            , {'synonyms', list(binary()) }
            , {'_links', openapi_ct_term_links:openapi_ct_term_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

