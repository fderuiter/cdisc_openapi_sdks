
package org.openapitools.client.model


case class XmlSendigClassDatasets (
    _self: Option[SendigClassDatasets]
)
object XmlSendigClassDatasets {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
