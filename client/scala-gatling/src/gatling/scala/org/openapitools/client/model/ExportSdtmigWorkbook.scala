
package org.openapitools.client.model


case class ExportSdtmigWorkbook (
    _variables: Option[List[ExportSdtmigVariablesRow]],
    _datasets: Option[List[ExportSdtmigDatasetsRow]]
)
object ExportSdtmigWorkbook {
    def toStringBody(var_variables: Object, var_datasets: Object) =
        s"""
        | {
        | "variables":$var_variables,"datasets":$var_datasets
        | }
        """.stripMargin
}
