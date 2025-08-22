
package org.openapitools.client.model


case class CtCodelistTermsLinks (
    _self: Option[CtCodelistTermsRef],
    _parentPackage: Option[CtPackageRef],
    _rootItem: Option[RootCtCodelistRef],
    _priorVersion: Option[CtCodelistTermsRef],
    _terms: Option[List[CtTermRefElement]]
)
object CtCodelistTermsLinks {
    def toStringBody(var_self: Object, var_parentPackage: Object, var_rootItem: Object, var_priorVersion: Object, var_terms: Object) =
        s"""
        | {
        | "self":$var_self,"parentPackage":$var_parentPackage,"rootItem":$var_rootItem,"priorVersion":$var_priorVersion,"terms":$var_terms
        | }
        """.stripMargin
}
