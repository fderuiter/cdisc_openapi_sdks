
package org.openapitools.client.model


case class XmlSendigDataset (
    _self: Option[SendigDataset]
)
object XmlSendigDataset {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
