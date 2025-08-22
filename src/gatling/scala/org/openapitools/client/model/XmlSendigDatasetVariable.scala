
package org.openapitools.client.model


case class XmlSendigDatasetVariable (
    _self: Option[SendigDatasetVariable]
)
object XmlSendigDatasetVariable {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
