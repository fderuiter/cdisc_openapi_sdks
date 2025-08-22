
package org.openapitools.client.model


case class RootCdashigDomainFieldLinks (
    _self: Option[RootCdashigDomainFieldRef],
    _versions: Option[List[CdashigDomainFieldRefVersion]]
)
object RootCdashigDomainFieldLinks {
    def toStringBody(var_self: Object, var_versions: Object) =
        s"""
        | {
        | "self":$var_self,"versions":$var_versions
        | }
        """.stripMargin
}
