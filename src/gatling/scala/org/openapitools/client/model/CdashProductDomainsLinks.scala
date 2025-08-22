
package org.openapitools.client.model


case class CdashProductDomainsLinks (
    _self: Option[CdashProductDomainsRef],
    _parentProduct: Option[CdashProductRef],
    _domains: Option[List[CdashDomainRefElement]]
)
object CdashProductDomainsLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_domains: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"domains":$var_domains
        | }
        """.stripMargin
}
