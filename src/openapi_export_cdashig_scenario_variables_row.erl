-module(openapi_export_cdashig_scenario_variables_row).

-export([encode/1]).

-export_type([openapi_export_cdashig_scenario_variables_row/0]).

-type openapi_export_cdashig_scenario_variables_row() ::
    #{ 'Version' => binary(),
       'Class' => binary(),
       'Domain' => binary(),
       'Data_Collection_Scenario' => binary(),
       'Variable_Order' => binary(),
       'CDASHIG_Variable' => binary(),
       'CDASHIG_Variable_Label' => binary(),
       'DRAFT_CDASHIG_Definition' => binary(),
       'Question_Text' => binary(),
       'Prompt' => binary(),
       'Type' => binary(),
       'CDASHIG_Core' => binary(),
       'Case_Report_Form_Completion_Instructions' => binary(),
       'SDTMIG_Target' => list(),
       'Mapping_Instructions' => binary(),
       'Controlled_Terminology_Codelist_Name' => binary(),
       'Implementation_Notes' => binary()
     }.

encode(#{ 'Version' := Version,
          'Class' := Class,
          'Domain' := Domain,
          'Data_Collection_Scenario' := DataCollectionScenario,
          'Variable_Order' := VariableOrder,
          'CDASHIG_Variable' := CDASHIGVariable,
          'CDASHIG_Variable_Label' := CDASHIGVariableLabel,
          'DRAFT_CDASHIG_Definition' := DRAFTCDASHIGDefinition,
          'Question_Text' := QuestionText,
          'Prompt' := Prompt,
          'Type' := Type,
          'CDASHIG_Core' := CDASHIGCore,
          'Case_Report_Form_Completion_Instructions' := CaseReportFormCompletionInstructions,
          'SDTMIG_Target' := SDTMIGTarget,
          'Mapping_Instructions' := MappingInstructions,
          'Controlled_Terminology_Codelist_Name' := ControlledTerminologyCodelistName,
          'Implementation_Notes' := ImplementationNotes
        }) ->
    #{ 'Version' => Version,
       'Class' => Class,
       'Domain' => Domain,
       'Data Collection Scenario' => DataCollectionScenario,
       'Variable Order' => VariableOrder,
       'CDASHIG Variable' => CDASHIGVariable,
       'CDASHIG Variable Label' => CDASHIGVariableLabel,
       'DRAFT CDASHIG Definition' => DRAFTCDASHIGDefinition,
       'Question Text' => QuestionText,
       'Prompt' => Prompt,
       'Type' => Type,
       'CDASHIG Core' => CDASHIGCore,
       'Case Report Form Completion Instructions' => CaseReportFormCompletionInstructions,
       'SDTMIG Target' => SDTMIGTarget,
       'Mapping Instructions' => MappingInstructions,
       'Controlled Terminology Codelist Name' => ControlledTerminologyCodelistName,
       'Implementation Notes' => ImplementationNotes
     }.
