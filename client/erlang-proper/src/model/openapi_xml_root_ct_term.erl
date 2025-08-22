-module(openapi_xml_root_ct_term).

-include("openapi.hrl").

-export([openapi_xml_root_ct_term/0]).

-export([openapi_xml_root_ct_term/1]).

-export_type([openapi_xml_root_ct_term/0]).

-type openapi_xml_root_ct_term() ::
  [ {'self', openapi_root_ct_term:openapi_root_ct_term() }
  ].


openapi_xml_root_ct_term() ->
    openapi_xml_root_ct_term([]).

openapi_xml_root_ct_term(Fields) ->
  Default = [ {'self', openapi_root_ct_term:openapi_root_ct_term() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

