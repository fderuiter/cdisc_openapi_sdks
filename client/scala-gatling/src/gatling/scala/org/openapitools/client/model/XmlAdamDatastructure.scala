
package org.openapitools.client.model


case class XmlAdamDatastructure (
    _self: Option[AdamDatastructure]
)
object XmlAdamDatastructure {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
