-module(openapi_sendig_datasets).

-include("openapi.hrl").

-export([openapi_sendig_datasets/0]).

-export([openapi_sendig_datasets/1]).

-export_type([openapi_sendig_datasets/0]).

-type openapi_sendig_datasets() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'source', binary() }
  | {'effectiveDate', binary() }
  | {'registrationStatus', binary() }
  | {'version', binary() }
  | {'_links', openapi_sendig_datasets_links:openapi_sendig_datasets_links() }
  ].


openapi_sendig_datasets() ->
    openapi_sendig_datasets([]).

openapi_sendig_datasets(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'source', binary() }
            , {'effectiveDate', binary() }
            , {'registrationStatus', binary() }
            , {'version', binary() }
            , {'_links', openapi_sendig_datasets_links:openapi_sendig_datasets_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

