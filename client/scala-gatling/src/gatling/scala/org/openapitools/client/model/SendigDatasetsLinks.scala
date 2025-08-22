
package org.openapitools.client.model


case class SendigDatasetsLinks (
    _self: Option[SendigDatasetsRef],
    _parentProduct: Option[SendigProductRef],
    _datasets: Option[List[SendigDatasetRefElement]]
)
object SendigDatasetsLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_datasets: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"datasets":$var_datasets
        | }
        """.stripMargin
}
