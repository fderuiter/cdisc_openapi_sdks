-module(openapi_xml_ct_codelist_terms).

-include("openapi.hrl").

-export([openapi_xml_ct_codelist_terms/0]).

-export([openapi_xml_ct_codelist_terms/1]).

-export_type([openapi_xml_ct_codelist_terms/0]).

-type openapi_xml_ct_codelist_terms() ::
  [ {'self', openapi_ct_codelist_terms:openapi_ct_codelist_terms() }
  ].


openapi_xml_ct_codelist_terms() ->
    openapi_xml_ct_codelist_terms([]).

openapi_xml_ct_codelist_terms(Fields) ->
  Default = [ {'self', openapi_ct_codelist_terms:openapi_ct_codelist_terms() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

