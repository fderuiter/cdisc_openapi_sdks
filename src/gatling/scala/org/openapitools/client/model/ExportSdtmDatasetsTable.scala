
package org.openapitools.client.model


case class ExportSdtmDatasetsTable (
    _datasets: Option[List[ExportSdtmDatasetsRow]]
)
object ExportSdtmDatasetsTable {
    def toStringBody(var_datasets: Object) =
        s"""
        | {
        | "datasets":$var_datasets
        | }
        """.stripMargin
}
