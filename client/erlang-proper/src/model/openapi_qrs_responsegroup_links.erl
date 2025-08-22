-module(openapi_qrs_responsegroup_links).

-include("openapi.hrl").

-export([openapi_qrs_responsegroup_links/0]).

-export([openapi_qrs_responsegroup_links/1]).

-export_type([openapi_qrs_responsegroup_links/0]).

-type openapi_qrs_responsegroup_links() ::
  [ {'self', openapi_qrs_responsegroup_ref:openapi_qrs_responsegroup_ref() }
  | {'responses', list(openapi_qrs_responses:openapi_qrs_responses()) }
  ].


openapi_qrs_responsegroup_links() ->
    openapi_qrs_responsegroup_links([]).

openapi_qrs_responsegroup_links(Fields) ->
  Default = [ {'self', openapi_qrs_responsegroup_ref:openapi_qrs_responsegroup_ref() }
            , {'responses', list(openapi_qrs_responses:openapi_qrs_responses()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

