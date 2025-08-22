
package org.openapitools.client.model


case class CdashigClassDomainsLinks (
    _self: Option[CdashigClassDomainsRef],
    _domains: Option[List[CdashigDomainRefElement]]
)
object CdashigClassDomainsLinks {
    def toStringBody(var_self: Object, var_domains: Object) =
        s"""
        | {
        | "self":$var_self,"domains":$var_domains
        | }
        """.stripMargin
}
