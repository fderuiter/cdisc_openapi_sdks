
package org.openapitools.client.model


case class SdtmigClassDatasets (
    _ordinal: Option[String],
    _name: Option[String],
    _label: Option[String],
    _description: Option[String],
    _links: Option[SdtmigClassDatasetsLinks]
)
object SdtmigClassDatasets {
    def toStringBody(var_ordinal: Object, var_name: Object, var_label: Object, var_description: Object, var_links: Object) =
        s"""
        | {
        | "ordinal":$var_ordinal,"name":$var_name,"label":$var_label,"description":$var_description,"links":$var_links
        | }
        """.stripMargin
}
