-module(openapi_lastupdated).

-include("openapi.hrl").

-export([openapi_lastupdated/0]).

-export([openapi_lastupdated/1]).

-export_type([openapi_lastupdated/0]).

-type openapi_lastupdated() ::
  [ {'_links', openapi_lastupdated_links:openapi_lastupdated_links() }
  | {'overall', binary() }
  | {'data_analysis', binary() }
  | {'data_collection', binary() }
  | {'data_tabulation', binary() }
  | {'measure', binary() }
  | {'terminology', binary() }
  ].


openapi_lastupdated() ->
    openapi_lastupdated([]).

openapi_lastupdated(Fields) ->
  Default = [ {'_links', openapi_lastupdated_links:openapi_lastupdated_links() }
            , {'overall', binary() }
            , {'data-analysis', binary() }
            , {'data-collection', binary() }
            , {'data-tabulation', binary() }
            , {'measure', binary() }
            , {'terminology', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

