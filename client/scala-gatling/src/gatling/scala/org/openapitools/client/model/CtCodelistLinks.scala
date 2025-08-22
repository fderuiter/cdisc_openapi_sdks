
package org.openapitools.client.model


case class CtCodelistLinks (
    _self: Option[CtCodelistRef],
    _parentPackage: Option[CtPackageRef],
    _rootItem: Option[RootCtCodelistRef],
    _priorVersion: Option[CtCodelistRef]
)
object CtCodelistLinks {
    def toStringBody(var_self: Object, var_parentPackage: Object, var_rootItem: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"parentPackage":$var_parentPackage,"rootItem":$var_rootItem,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}
