
package org.openapitools.client.model


case class ExportSdtmigDatasetsTable (
    _datasets: Option[List[ExportSdtmigDatasetsRow]]
)
object ExportSdtmigDatasetsTable {
    def toStringBody(var_datasets: Object) =
        s"""
        | {
        | "datasets":$var_datasets
        | }
        """.stripMargin
}
