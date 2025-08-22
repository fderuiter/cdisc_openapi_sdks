
package org.openapitools.client.model


case class CtPackageCodelistsLinks (
    _self: Option[CtPackageCodelistsRef],
    _priorVersion: Option[CtPackageCodelistsRef],
    _codelists: Option[List[CtCodelistRefElement]]
)
object CtPackageCodelistsLinks {
    def toStringBody(var_self: Object, var_priorVersion: Object, var_codelists: Object) =
        s"""
        | {
        | "self":$var_self,"priorVersion":$var_priorVersion,"codelists":$var_codelists
        | }
        """.stripMargin
}
