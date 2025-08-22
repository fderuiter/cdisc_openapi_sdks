
package org.openapitools.client.model


case class SdtmDatasetsLinks (
    _self: Option[SdtmDatasetsRef],
    _parentProduct: Option[SdtmProductRef],
    _priorVersion: Option[SdtmDatasetsRef],
    _datasets: Option[List[SdtmDatasetRefElement]]
)
object SdtmDatasetsLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_priorVersion: Object, var_datasets: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"priorVersion":$var_priorVersion,"datasets":$var_datasets
        | }
        """.stripMargin
}
