
package org.openapitools.client.model


case class XmlCtPackages (
    _self: Option[CtPackages]
)
object XmlCtPackages {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
