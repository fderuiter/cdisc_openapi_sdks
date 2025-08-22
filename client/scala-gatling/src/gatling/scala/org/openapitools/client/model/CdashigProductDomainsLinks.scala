
package org.openapitools.client.model


case class CdashigProductDomainsLinks (
    _self: Option[CdashigProductDomainsRef],
    _parentProduct: Option[CdashigProductRef],
    _domains: Option[List[CdashigDomainRefElement]]
)
object CdashigProductDomainsLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_domains: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"domains":$var_domains
        | }
        """.stripMargin
}
