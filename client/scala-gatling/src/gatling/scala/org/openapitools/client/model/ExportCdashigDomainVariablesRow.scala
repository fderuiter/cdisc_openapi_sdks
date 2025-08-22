
package org.openapitools.client.model


case class ExportCdashigDomainVariablesRow (
    _version: Option[String],
    _class: Option[String],
    _domain: Option[String],
    _dataCollectionScenario: Option[String],
    _variableOrder: Option[String],
    _cDASHIGVariable: Option[String],
    _cDASHIGVariableLabel: Option[String],
    _dRAFTCDASHIGDefinition: Option[String],
    _questionText: Option[String],
    _prompt: Option[String],
    _type: Option[String],
    _cDASHIGCore: Option[String],
    _caseReportFormCompletionInstructions: Option[String],
    _sDTMIGTarget: Option[List[String]],
    _mappingInstructions: Option[String],
    _controlledTerminologyCodelistName: Option[String],
    _implementationNotes: Option[String]
)
object ExportCdashigDomainVariablesRow {
    def toStringBody(var_version: Object, var_class: Object, var_domain: Object, var_dataCollectionScenario: Object, var_variableOrder: Object, var_cDASHIGVariable: Object, var_cDASHIGVariableLabel: Object, var_dRAFTCDASHIGDefinition: Object, var_questionText: Object, var_prompt: Object, var_type: Object, var_cDASHIGCore: Object, var_caseReportFormCompletionInstructions: Object, var_sDTMIGTarget: Object, var_mappingInstructions: Object, var_controlledTerminologyCodelistName: Object, var_implementationNotes: Object) =
        s"""
        | {
        | "version":$var_version,"class":$var_class,"domain":$var_domain,"dataCollectionScenario":$var_dataCollectionScenario,"variableOrder":$var_variableOrder,"cDASHIGVariable":$var_cDASHIGVariable,"cDASHIGVariableLabel":$var_cDASHIGVariableLabel,"dRAFTCDASHIGDefinition":$var_dRAFTCDASHIGDefinition,"questionText":$var_questionText,"prompt":$var_prompt,"type":$var_type,"cDASHIGCore":$var_cDASHIGCore,"caseReportFormCompletionInstructions":$var_caseReportFormCompletionInstructions,"sDTMIGTarget":$var_sDTMIGTarget,"mappingInstructions":$var_mappingInstructions,"controlledTerminologyCodelistName":$var_controlledTerminologyCodelistName,"implementationNotes":$var_implementationNotes
        | }
        """.stripMargin
}
