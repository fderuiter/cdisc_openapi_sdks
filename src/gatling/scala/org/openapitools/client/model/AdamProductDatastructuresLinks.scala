
package org.openapitools.client.model


case class AdamProductDatastructuresLinks (
    _self: Option[AdamProductDatastructuresRef],
    _priorVersion: Option[AdamProductDatastructuresRef],
    _dataStructures: Option[List[AdamDatastructureRefElement]]
)
object AdamProductDatastructuresLinks {
    def toStringBody(var_self: Object, var_priorVersion: Object, var_dataStructures: Object) =
        s"""
        | {
        | "self":$var_self,"priorVersion":$var_priorVersion,"dataStructures":$var_dataStructures
        | }
        """.stripMargin
}
