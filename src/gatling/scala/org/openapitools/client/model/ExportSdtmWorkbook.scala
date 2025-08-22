
package org.openapitools.client.model


case class ExportSdtmWorkbook (
    _classVariables: Option[List[ExportSdtmClassVariablesRow]],
    _datasetVariables: Option[List[ExportSdtmDatasetVariablesRow]],
    _datasets: Option[List[ExportSdtmDatasetsRow]]
)
object ExportSdtmWorkbook {
    def toStringBody(var_classVariables: Object, var_datasetVariables: Object, var_datasets: Object) =
        s"""
        | {
        | "classVariables":$var_classVariables,"datasetVariables":$var_datasetVariables,"datasets":$var_datasets
        | }
        """.stripMargin
}
