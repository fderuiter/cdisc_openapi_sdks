
package org.openapitools.client.model


case class RootCtCodelistLinks (
    _self: Option[RootCtCodelistRef],
    _versions: Option[List[CtCodelistRefVersion]]
)
object RootCtCodelistLinks {
    def toStringBody(var_self: Object, var_versions: Object) =
        s"""
        | {
        | "self":$var_self,"versions":$var_versions
        | }
        """.stripMargin
}
