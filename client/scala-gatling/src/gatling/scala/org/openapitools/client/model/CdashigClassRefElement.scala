
package org.openapitools.client.model


case class CdashigClassRefElement (
    _href: Option[String],
    _title: Option[String],
    _type: Option[String]
)
object CdashigClassRefElement {
    def toStringBody(var_href: Object, var_title: Object, var_type: Object) =
        s"""
        | {
        | "href":$var_href,"title":$var_title,"type":$var_type
        | }
        """.stripMargin
}
