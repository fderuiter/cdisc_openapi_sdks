
package org.openapitools.client.model


case class RootCtTermLinks (
    _self: Option[RootCtTermRef],
    _versions: Option[List[CtTermRefVersion]]
)
object RootCtTermLinks {
    def toStringBody(var_self: Object, var_versions: Object) =
        s"""
        | {
        | "self":$var_self,"versions":$var_versions
        | }
        """.stripMargin
}
