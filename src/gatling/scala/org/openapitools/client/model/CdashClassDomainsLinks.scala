
package org.openapitools.client.model


case class CdashClassDomainsLinks (
    _self: Option[CdashClassDomainsRef],
    _domains: Option[List[CdashDomainRefElement]]
)
object CdashClassDomainsLinks {
    def toStringBody(var_self: Object, var_domains: Object) =
        s"""
        | {
        | "self":$var_self,"domains":$var_domains
        | }
        """.stripMargin
}
