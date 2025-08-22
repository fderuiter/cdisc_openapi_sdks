
package org.openapitools.client.model


case class AdamDatastructureVariablesRef (
    _href: Option[String],
    _title: Option[String],
    _type: Option[String]
)
object AdamDatastructureVariablesRef {
    def toStringBody(var_href: Object, var_title: Object, var_type: Object) =
        s"""
        | {
        | "href":$var_href,"title":$var_title,"type":$var_type
        | }
        """.stripMargin
}
