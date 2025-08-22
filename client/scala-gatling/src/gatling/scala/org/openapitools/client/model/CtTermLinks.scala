
package org.openapitools.client.model


case class CtTermLinks (
    _self: Option[CtTermRef],
    _parentPackage: Option[CtPackageRef],
    _parentCodelist: Option[CtCodelistRef],
    _rootItem: Option[RootCtTermRef],
    _priorVersion: Option[CtTermRef]
)
object CtTermLinks {
    def toStringBody(var_self: Object, var_parentPackage: Object, var_parentCodelist: Object, var_rootItem: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"parentPackage":$var_parentPackage,"parentCodelist":$var_parentCodelist,"rootItem":$var_rootItem,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}
