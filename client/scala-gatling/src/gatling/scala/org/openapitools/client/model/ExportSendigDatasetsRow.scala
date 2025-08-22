
package org.openapitools.client.model


case class ExportSendigDatasetsRow (
    _version: Option[String],
    _class: Option[String],
    _datasetName: Option[String],
    _datasetLabel: Option[String],
    _structure: Option[String]
)
object ExportSendigDatasetsRow {
    def toStringBody(var_version: Object, var_class: Object, var_datasetName: Object, var_datasetLabel: Object, var_structure: Object) =
        s"""
        | {
        | "version":$var_version,"class":$var_class,"datasetName":$var_datasetName,"datasetLabel":$var_datasetLabel,"structure":$var_structure
        | }
        """.stripMargin
}
