
package org.openapitools.client.model


case class RootCdashDomainFieldLinks (
    _self: Option[RootCdashDomainFieldRef],
    _versions: Option[List[CdashDomainFieldRefVersion]]
)
object RootCdashDomainFieldLinks {
    def toStringBody(var_self: Object, var_versions: Object) =
        s"""
        | {
        | "self":$var_self,"versions":$var_versions
        | }
        """.stripMargin
}
