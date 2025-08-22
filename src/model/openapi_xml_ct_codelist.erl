-module(openapi_xml_ct_codelist).

-include("openapi.hrl").

-export([openapi_xml_ct_codelist/0]).

-export([openapi_xml_ct_codelist/1]).

-export_type([openapi_xml_ct_codelist/0]).

-type openapi_xml_ct_codelist() ::
  [ {'self', openapi_ct_codelist:openapi_ct_codelist() }
  ].


openapi_xml_ct_codelist() ->
    openapi_xml_ct_codelist([]).

openapi_xml_ct_codelist(Fields) ->
  Default = [ {'self', openapi_ct_codelist:openapi_ct_codelist() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

