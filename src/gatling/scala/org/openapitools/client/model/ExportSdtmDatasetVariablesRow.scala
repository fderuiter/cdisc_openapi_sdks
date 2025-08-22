
package org.openapitools.client.model


case class ExportSdtmDatasetVariablesRow (
    _version: Option[String],
    _variableOrder: Option[String],
    _class: Option[String],
    _datasetName: Option[String],
    _variableName: Option[String],
    _variableLabel: Option[String],
    _type: Option[String],
    _controlledTermsCodelistOrFormat: Option[String],
    _role: Option[String],
    _roleDescription: Option[String],
    _description: Option[String]
)
object ExportSdtmDatasetVariablesRow {
    def toStringBody(var_version: Object, var_variableOrder: Object, var_class: Object, var_datasetName: Object, var_variableName: Object, var_variableLabel: Object, var_type: Object, var_controlledTermsCodelistOrFormat: Object, var_role: Object, var_roleDescription: Object, var_description: Object) =
        s"""
        | {
        | "version":$var_version,"variableOrder":$var_variableOrder,"class":$var_class,"datasetName":$var_datasetName,"variableName":$var_variableName,"variableLabel":$var_variableLabel,"type":$var_type,"controlledTermsCodelistOrFormat":$var_controlledTermsCodelistOrFormat,"role":$var_role,"roleDescription":$var_roleDescription,"description":$var_description
        | }
        """.stripMargin
}
