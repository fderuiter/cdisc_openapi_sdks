
package org.openapitools.client.model


case class CtPackageLinks (
    _self: Option[CtPackageRef],
    _priorVersion: Option[CtPackageRef]
)
object CtPackageLinks {
    def toStringBody(var_self: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}
