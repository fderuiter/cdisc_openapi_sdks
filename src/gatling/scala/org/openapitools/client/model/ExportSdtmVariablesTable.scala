
package org.openapitools.client.model


case class ExportSdtmVariablesTable (
    _classVariables: Option[List[ExportSdtmClassVariablesRow]],
    _datasetVariables: Option[List[ExportSdtmDatasetVariablesRow]]
)
object ExportSdtmVariablesTable {
    def toStringBody(var_classVariables: Object, var_datasetVariables: Object) =
        s"""
        | {
        | "classVariables":$var_classVariables,"datasetVariables":$var_datasetVariables
        | }
        """.stripMargin
}
