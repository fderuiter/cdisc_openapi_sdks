
package org.openapitools.client.model


case class SdtmProduct (
    _name: Option[String],
    _label: Option[String],
    _description: Option[String],
    _source: Option[String],
    _effectiveDate: Option[String],
    _registrationStatus: Option[String],
    _version: Option[String],
    _links: Option[SdtmProductLinks],
    _classes: Option[List[SdtmClass]],
    _datasets: Option[List[SdtmDataset]]
)
object SdtmProduct {
    def toStringBody(var_name: Object, var_label: Object, var_description: Object, var_source: Object, var_effectiveDate: Object, var_registrationStatus: Object, var_version: Object, var_links: Object, var_classes: Object, var_datasets: Object) =
        s"""
        | {
        | "name":$var_name,"label":$var_label,"description":$var_description,"source":$var_source,"effectiveDate":$var_effectiveDate,"registrationStatus":$var_registrationStatus,"version":$var_version,"links":$var_links,"classes":$var_classes,"datasets":$var_datasets
        | }
        """.stripMargin
}
