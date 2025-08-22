-module(openapi_export_adam_variables_row).

-export([encode/1]).

-export_type([openapi_export_adam_variables_row/0]).

-type openapi_export_adam_variables_row() ::
    #{ 'Version' => binary(),
       'Data_Structure_Name' => binary(),
       'Dataset_Name' => binary(),
       'Variable_Group' => binary(),
       'Variable_Name' => binary(),
       'Variable_Label' => binary(),
       'Type' => binary(),
       'Codelist_Controlled_Terms' => binary(),
       'Core' => binary(),
       'CDISC_Notes' => binary()
     }.

encode(#{ 'Version' := Version,
          'Data_Structure_Name' := DataStructureName,
          'Dataset_Name' := DatasetName,
          'Variable_Group' := VariableGroup,
          'Variable_Name' := VariableName,
          'Variable_Label' := VariableLabel,
          'Type' := Type,
          'Codelist_Controlled_Terms' := CodelistControlledTerms,
          'Core' := Core,
          'CDISC_Notes' := CDISCNotes
        }) ->
    #{ 'Version' => Version,
       'Data Structure Name' => DataStructureName,
       'Dataset Name' => DatasetName,
       'Variable Group' => VariableGroup,
       'Variable Name' => VariableName,
       'Variable Label' => VariableLabel,
       'Type' => Type,
       'Codelist/Controlled Terms' => CodelistControlledTerms,
       'Core' => Core,
       'CDISC Notes' => CDISCNotes
     }.
