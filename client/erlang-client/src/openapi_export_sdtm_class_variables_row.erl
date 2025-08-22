-module(openapi_export_sdtm_class_variables_row).

-export([encode/1]).

-export_type([openapi_export_sdtm_class_variables_row/0]).

-type openapi_export_sdtm_class_variables_row() ::
    #{ 'Version' => binary(),
       'Variable_Order' => binary(),
       'Class' => binary(),
       'Dataset_Name' => binary(),
       'Variable_Name' => binary(),
       'Variable_Label' => binary(),
       'Type' => binary(),
       'Controlled_Terms_Codelist_or_Format' => binary(),
       'Role' => binary(),
       'Role_Description' => binary(),
       'Description' => binary()
     }.

encode(#{ 'Version' := Version,
          'Variable_Order' := VariableOrder,
          'Class' := Class,
          'Dataset_Name' := DatasetName,
          'Variable_Name' := VariableName,
          'Variable_Label' := VariableLabel,
          'Type' := Type,
          'Controlled_Terms_Codelist_or_Format' := ControlledTermsCodelistOrFormat,
          'Role' := Role,
          'Role_Description' := RoleDescription,
          'Description' := Description
        }) ->
    #{ 'Version' => Version,
       'Variable Order' => VariableOrder,
       'Class' => Class,
       'Dataset Name' => DatasetName,
       'Variable Name' => VariableName,
       'Variable Label' => VariableLabel,
       'Type' => Type,
       'Controlled Terms, Codelist or Format' => ControlledTermsCodelistOrFormat,
       'Role' => Role,
       'Role Description' => RoleDescription,
       'Description' => Description
     }.
