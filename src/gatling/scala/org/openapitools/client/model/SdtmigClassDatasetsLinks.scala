
package org.openapitools.client.model


case class SdtmigClassDatasetsLinks (
    _self: Option[SdtmigClassDatasetsRef],
    _parentProduct: Option[SdtmigProductRef],
    _priorVersion: Option[SdtmigClassDatasetsRef],
    _datasets: Option[List[SdtmigDatasetRefElement]]
)
object SdtmigClassDatasetsLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_priorVersion: Object, var_datasets: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"priorVersion":$var_priorVersion,"datasets":$var_datasets
        | }
        """.stripMargin
}
