-module(openapi_ct_codelist_terms).

-include("openapi.hrl").

-export([openapi_ct_codelist_terms/0]).

-export([openapi_ct_codelist_terms/1]).

-export_type([openapi_ct_codelist_terms/0]).

-type openapi_ct_codelist_terms() ::
  [ {'conceptId', binary() }
  | {'extensible', binary() }
  | {'name', binary() }
  | {'submissionValue', binary() }
  | {'definition', binary() }
  | {'preferredTerm', binary() }
  | {'synonyms', list(binary()) }
  | {'_links', openapi_ct_codelist_terms_links:openapi_ct_codelist_terms_links() }
  ].


openapi_ct_codelist_terms() ->
    openapi_ct_codelist_terms([]).

openapi_ct_codelist_terms(Fields) ->
  Default = [ {'conceptId', binary() }
            , {'extensible', binary() }
            , {'name', binary() }
            , {'submissionValue', binary() }
            , {'definition', binary() }
            , {'preferredTerm', binary() }
            , {'synonyms', list(binary()) }
            , {'_links', openapi_ct_codelist_terms_links:openapi_ct_codelist_terms_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

