-module(openapi_productgroup_qrs_links).

-include("openapi.hrl").

-export([openapi_productgroup_qrs_links/0]).

-export([openapi_productgroup_qrs_links/1]).

-export_type([openapi_productgroup_qrs_links/0]).

-type openapi_productgroup_qrs_links() ::
  [ {'self', openapi_productgroup_ref:openapi_productgroup_ref() }
  | {'qrs', list(openapi_qrs_ref_element:openapi_qrs_ref_element()) }
  ].


openapi_productgroup_qrs_links() ->
    openapi_productgroup_qrs_links([]).

openapi_productgroup_qrs_links(Fields) ->
  Default = [ {'self', openapi_productgroup_ref:openapi_productgroup_ref() }
            , {'qrs', list(openapi_qrs_ref_element:openapi_qrs_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

