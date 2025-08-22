-module(openapi_export_qrs_general).

-export([encode/1]).

-export_type([openapi_export_qrs_general/0]).

-type openapi_export_qrs_general() ::
    #{ 'Name' => binary(),
       'Label' => binary(),
       'Effective_Date' => binary(),
       'Description' => binary(),
       'Type' => binary(),
       'Categorys_Codelist_C_Code' => binary(),
       'Categorys_Term_C_Code' => binary()
     }.

encode(#{ 'Name' := Name,
          'Label' := Label,
          'Effective_Date' := EffectiveDate,
          'Description' := Description,
          'Type' := Type,
          'Categorys_Codelist_C_Code' := CategorysCodelistCCode,
          'Categorys_Term_C_Code' := CategorysTermCCode
        }) ->
    #{ 'Name' => Name,
       'Label' => Label,
       'Effective Date' => EffectiveDate,
       'Description' => Description,
       'Type' => Type,
       'Category&#39;s Codelist C-Code' => CategorysCodelistCCode,
       'Category&#39;s Term C-Code' => CategorysTermCCode
     }.
