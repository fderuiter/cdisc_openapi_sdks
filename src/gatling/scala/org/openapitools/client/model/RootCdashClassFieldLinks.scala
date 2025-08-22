
package org.openapitools.client.model


case class RootCdashClassFieldLinks (
    _self: Option[RootCdashClassFieldRef],
    _versions: Option[List[CdashClassFieldRefVersion]]
)
object RootCdashClassFieldLinks {
    def toStringBody(var_self: Object, var_versions: Object) =
        s"""
        | {
        | "self":$var_self,"versions":$var_versions
        | }
        """.stripMargin
}
