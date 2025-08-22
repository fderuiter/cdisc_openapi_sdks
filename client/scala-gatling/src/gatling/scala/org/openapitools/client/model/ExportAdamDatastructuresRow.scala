
package org.openapitools.client.model


case class ExportAdamDatastructuresRow (
    _version: Option[String],
    _dataStructureName: Option[String],
    _datasetName: Option[String],
    _datasetLabel: Option[String],
    _datasetDescription: Option[String],
    _class: Option[String]
)
object ExportAdamDatastructuresRow {
    def toStringBody(var_version: Object, var_dataStructureName: Object, var_datasetName: Object, var_datasetLabel: Object, var_datasetDescription: Object, var_class: Object) =
        s"""
        | {
        | "version":$var_version,"dataStructureName":$var_dataStructureName,"datasetName":$var_datasetName,"datasetLabel":$var_datasetLabel,"datasetDescription":$var_datasetDescription,"class":$var_class
        | }
        """.stripMargin
}
