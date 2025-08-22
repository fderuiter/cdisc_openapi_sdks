
package org.openapitools.client.model


case class CdashDomainLinks (
    _self: Option[CdashDomainRef],
    _parentProduct: Option[CdashProductRef],
    _parentClass: Option[CdashClassRef],
    _priorVersion: Option[CdashDomainRef]
)
object CdashDomainLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_parentClass: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"parentClass":$var_parentClass,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}
