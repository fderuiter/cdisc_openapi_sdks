
package org.openapitools.client.model


case class AdamProductLinks (
    _self: Option[AdamProductRef],
    _model: Option[AdamProductRef],
    _priorVersion: Option[AdamProductRef]
)
object AdamProductLinks {
    def toStringBody(var_self: Object, var_model: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"model":$var_model,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}
