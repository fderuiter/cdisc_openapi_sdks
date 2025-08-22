
package org.openapitools.client.model


case class XmlSendigDatasetVariables (
    _self: Option[SendigDatasetVariables]
)
object XmlSendigDatasetVariables {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
