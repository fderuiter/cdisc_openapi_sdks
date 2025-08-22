-module(openapi_export_ct_term).

-export([encode/1]).

-export_type([openapi_export_ct_term/0]).

-type openapi_export_ct_term() ::
    #{ 'bundle_1' => binary(),
       'CDISC_Synonym_s' => list(),
       'bundle_2' => binary()
     }.

encode(#{ 'bundle_1' := Bundle1,
          'CDISC_Synonym_s' := CDISCSynonymS,
          'bundle_2' := Bundle2
        }) ->
    #{ 'bundle-1' => Bundle1,
       'CDISC Synonym(s)' => CDISCSynonymS,
       'bundle-2' => Bundle2
     }.
