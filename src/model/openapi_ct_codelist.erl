-module(openapi_ct_codelist).

-include("openapi.hrl").

-export([openapi_ct_codelist/0]).

-export([openapi_ct_codelist/1]).

-export_type([openapi_ct_codelist/0]).

-type openapi_ct_codelist() ::
  [ {'conceptId', binary() }
  | {'extensible', binary() }
  | {'name', binary() }
  | {'submissionValue', binary() }
  | {'definition', binary() }
  | {'preferredTerm', binary() }
  | {'synonyms', list(binary()) }
  | {'_links', openapi_ct_codelist_links:openapi_ct_codelist_links() }
  | {'terms', list(openapi_ct_package_term:openapi_ct_package_term()) }
  ].


openapi_ct_codelist() ->
    openapi_ct_codelist([]).

openapi_ct_codelist(Fields) ->
  Default = [ {'conceptId', binary() }
            , {'extensible', binary() }
            , {'name', binary() }
            , {'submissionValue', binary() }
            , {'definition', binary() }
            , {'preferredTerm', binary() }
            , {'synonyms', list(binary()) }
            , {'_links', openapi_ct_codelist_links:openapi_ct_codelist_links() }
            , {'terms', list(openapi_ct_package_term:openapi_ct_package_term()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

