-module(openapi_sdtmig_classes).

-include("openapi.hrl").

-export([openapi_sdtmig_classes/0]).

-export([openapi_sdtmig_classes/1]).

-export_type([openapi_sdtmig_classes/0]).

-type openapi_sdtmig_classes() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'source', binary() }
  | {'effectiveDate', binary() }
  | {'registrationStatus', binary() }
  | {'version', binary() }
  | {'_links', openapi_sdtmig_classes_links:openapi_sdtmig_classes_links() }
  ].


openapi_sdtmig_classes() ->
    openapi_sdtmig_classes([]).

openapi_sdtmig_classes(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'source', binary() }
            , {'effectiveDate', binary() }
            , {'registrationStatus', binary() }
            , {'version', binary() }
            , {'_links', openapi_sdtmig_classes_links:openapi_sdtmig_classes_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

