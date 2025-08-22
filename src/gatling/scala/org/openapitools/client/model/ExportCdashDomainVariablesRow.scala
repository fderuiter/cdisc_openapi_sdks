
package org.openapitools.client.model


case class ExportCdashDomainVariablesRow (
    _version: Option[String],
    _class: Option[String],
    _domain: Option[String],
    _variableOrder: Option[String],
    _cDASHVariable: Option[String],
    _cDASHVariableLabel: Option[String],
    _dRAFTCDASHDefinition: Option[String],
    _domainSpecific: Option[String],
    _questionText: Option[String],
    _prompt: Option[String],
    _type: Option[String],
    _sDTMTarget: Option[List[String]],
    _mappingInstructions: Option[String],
    _controlledTerminologyCodelistName: Option[String],
    _implementationNotes: Option[String]
)
object ExportCdashDomainVariablesRow {
    def toStringBody(var_version: Object, var_class: Object, var_domain: Object, var_variableOrder: Object, var_cDASHVariable: Object, var_cDASHVariableLabel: Object, var_dRAFTCDASHDefinition: Object, var_domainSpecific: Object, var_questionText: Object, var_prompt: Object, var_type: Object, var_sDTMTarget: Object, var_mappingInstructions: Object, var_controlledTerminologyCodelistName: Object, var_implementationNotes: Object) =
        s"""
        | {
        | "version":$var_version,"class":$var_class,"domain":$var_domain,"variableOrder":$var_variableOrder,"cDASHVariable":$var_cDASHVariable,"cDASHVariableLabel":$var_cDASHVariableLabel,"dRAFTCDASHDefinition":$var_dRAFTCDASHDefinition,"domainSpecific":$var_domainSpecific,"questionText":$var_questionText,"prompt":$var_prompt,"type":$var_type,"sDTMTarget":$var_sDTMTarget,"mappingInstructions":$var_mappingInstructions,"controlledTerminologyCodelistName":$var_controlledTerminologyCodelistName,"implementationNotes":$var_implementationNotes
        | }
        """.stripMargin
}
