
package org.openapitools.client.model


case class SendigClassesLinks (
    _self: Option[SendigClassesRef],
    _priorVersion: Option[SendigClassesRef],
    _classes: Option[List[SendigClassRefElement]]
)
object SendigClassesLinks {
    def toStringBody(var_self: Object, var_priorVersion: Object, var_classes: Object) =
        s"""
        | {
        | "self":$var_self,"priorVersion":$var_priorVersion,"classes":$var_classes
        | }
        """.stripMargin
}
