-module(openapi_productgroup_data_tabulation_links).

-export([encode/1]).

-export_type([openapi_productgroup_data_tabulation_links/0]).

-type openapi_productgroup_data_tabulation_links() ::
    #{ 'self' => openapi_productgroup_ref:openapi_productgroup_ref(),
       'sdtm' => list(),
       'sdtmig' => list(),
       'sendig' => list()
     }.

encode(#{ 'self' := Self,
          'sdtm' := Sdtm,
          'sdtmig' := Sdtmig,
          'sendig' := Sendig
        }) ->
    #{ 'self' => Self,
       'sdtm' => Sdtm,
       'sdtmig' => Sdtmig,
       'sendig' => Sendig
     }.
