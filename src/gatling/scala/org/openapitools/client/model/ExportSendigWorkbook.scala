
package org.openapitools.client.model


case class ExportSendigWorkbook (
    _variables: Option[List[ExportSendigVariablesRow]],
    _datasets: Option[List[ExportSendigDatasetsRow]]
)
object ExportSendigWorkbook {
    def toStringBody(var_variables: Object, var_datasets: Object) =
        s"""
        | {
        | "variables":$var_variables,"datasets":$var_datasets
        | }
        """.stripMargin
}
