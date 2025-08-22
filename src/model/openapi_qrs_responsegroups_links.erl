-module(openapi_qrs_responsegroups_links).

-include("openapi.hrl").

-export([openapi_qrs_responsegroups_links/0]).

-export([openapi_qrs_responsegroups_links/1]).

-export_type([openapi_qrs_responsegroups_links/0]).

-type openapi_qrs_responsegroups_links() ::
  [ {'self', openapi_qrs_responsegroups_ref:openapi_qrs_responsegroups_ref() }
  | {'responsegroups', list(openapi_qrs_responsegroup_ref_element:openapi_qrs_responsegroup_ref_element()) }
  ].


openapi_qrs_responsegroups_links() ->
    openapi_qrs_responsegroups_links([]).

openapi_qrs_responsegroups_links(Fields) ->
  Default = [ {'self', openapi_qrs_responsegroups_ref:openapi_qrs_responsegroups_ref() }
            , {'responsegroups', list(openapi_qrs_responsegroup_ref_element:openapi_qrs_responsegroup_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

