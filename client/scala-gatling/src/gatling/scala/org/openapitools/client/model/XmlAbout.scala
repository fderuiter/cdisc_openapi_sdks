
package org.openapitools.client.model


case class XmlAbout (
    _self: Option[About]
)
object XmlAbout {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
