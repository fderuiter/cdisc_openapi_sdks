-module(openapi_sendig_class_ref_subclass).

-include("openapi.hrl").

-export([openapi_sendig_class_ref_subclass/0]).

-export([openapi_sendig_class_ref_subclass/1]).

-export_type([openapi_sendig_class_ref_subclass/0]).

-type openapi_sendig_class_ref_subclass() ::
  [ {'href', binary() }
  | {'title', binary() }
  | {'type', binary() }
  ].


openapi_sendig_class_ref_subclass() ->
    openapi_sendig_class_ref_subclass([]).

openapi_sendig_class_ref_subclass(Fields) ->
  Default = [ {'href', binary() }
            , {'title', binary() }
            , {'type', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

