-module(openapi_sendig_classes).

-include("openapi.hrl").

-export([openapi_sendig_classes/0]).

-export([openapi_sendig_classes/1]).

-export_type([openapi_sendig_classes/0]).

-type openapi_sendig_classes() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'description', binary() }
  | {'source', binary() }
  | {'effectiveDate', binary() }
  | {'registrationStatus', binary() }
  | {'version', binary() }
  | {'_links', openapi_sendig_classes_links:openapi_sendig_classes_links() }
  ].


openapi_sendig_classes() ->
    openapi_sendig_classes([]).

openapi_sendig_classes(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'description', binary() }
            , {'source', binary() }
            , {'effectiveDate', binary() }
            , {'registrationStatus', binary() }
            , {'version', binary() }
            , {'_links', openapi_sendig_classes_links:openapi_sendig_classes_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

