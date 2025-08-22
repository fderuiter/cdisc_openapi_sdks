
package org.openapitools.client.model


case class ExportSendigDatasetsTable (
    _datasets: Option[List[ExportSendigDatasetsRow]]
)
object ExportSendigDatasetsTable {
    def toStringBody(var_datasets: Object) =
        s"""
        | {
        | "datasets":$var_datasets
        | }
        """.stripMargin
}
