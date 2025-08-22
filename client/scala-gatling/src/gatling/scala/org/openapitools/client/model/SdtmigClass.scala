
package org.openapitools.client.model


case class SdtmigClass (
    _ordinal: Option[String],
    _name: Option[String],
    _label: Option[String],
    _description: Option[String],
    _links: Option[SdtmigClassLinks],
    _datasets: Option[List[SdtmigDataset]]
)
object SdtmigClass {
    def toStringBody(var_ordinal: Object, var_name: Object, var_label: Object, var_description: Object, var_links: Object, var_datasets: Object) =
        s"""
        | {
        | "ordinal":$var_ordinal,"name":$var_name,"label":$var_label,"description":$var_description,"links":$var_links,"datasets":$var_datasets
        | }
        """.stripMargin
}
