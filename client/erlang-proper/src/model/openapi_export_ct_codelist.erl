-module(openapi_export_ct_codelist).

-include("openapi.hrl").

-export([openapi_export_ct_codelist/0]).

-export([openapi_export_ct_codelist/1]).

-export_type([openapi_export_ct_codelist/0]).

-type openapi_export_ct_codelist() ::
  [ {'Code', binary() }
  | {'Codelist_Code', binary() }
  | {'Codelist_Extensible__Yes_No', binary() }
  | {'Codelist_Name', binary() }
  | {'CDISC_Submission_Value', binary() }
  | {'CDISC_Synonym_s', list(binary()) }
  | {'CDISC_Definition', binary() }
  | {'NCI_Preferred_Term', binary() }
  | {'Standard_and_Date', binary() }
  | {'', list(openapi_export_ct_term:openapi_export_ct_term()) }
  ].


openapi_export_ct_codelist() ->
    openapi_export_ct_codelist([]).

openapi_export_ct_codelist(Fields) ->
  Default = [ {'Code', binary() }
            , {'Codelist Code', binary() }
            , {'Codelist Extensible (Yes/No)', binary() }
            , {'Codelist Name', binary() }
            , {'CDISC Submission Value', binary() }
            , {'CDISC Synonym(s)', list(binary()) }
            , {'CDISC Definition', binary() }
            , {'NCI Preferred Term', binary() }
            , {'Standard and Date', binary() }
            , {'', list(openapi_export_ct_term:openapi_export_ct_term()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

