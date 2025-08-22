
package org.openapitools.client.model


case class XmlSendigDatasets (
    _self: Option[SendigDatasets]
)
object XmlSendigDatasets {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
