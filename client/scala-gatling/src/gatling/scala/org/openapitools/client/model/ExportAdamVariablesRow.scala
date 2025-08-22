
package org.openapitools.client.model


case class ExportAdamVariablesRow (
    _version: Option[String],
    _dataStructureName: Option[String],
    _datasetName: Option[String],
    _variableGroup: Option[String],
    _variableName: Option[String],
    _variableLabel: Option[String],
    _type: Option[String],
    _codelistControlledTerms: Option[String],
    _core: Option[String],
    _cDISCNotes: Option[String]
)
object ExportAdamVariablesRow {
    def toStringBody(var_version: Object, var_dataStructureName: Object, var_datasetName: Object, var_variableGroup: Object, var_variableName: Object, var_variableLabel: Object, var_type: Object, var_codelistControlledTerms: Object, var_core: Object, var_cDISCNotes: Object) =
        s"""
        | {
        | "version":$var_version,"dataStructureName":$var_dataStructureName,"datasetName":$var_datasetName,"variableGroup":$var_variableGroup,"variableName":$var_variableName,"variableLabel":$var_variableLabel,"type":$var_type,"codelistControlledTerms":$var_codelistControlledTerms,"core":$var_core,"cDISCNotes":$var_cDISCNotes
        | }
        """.stripMargin
}
