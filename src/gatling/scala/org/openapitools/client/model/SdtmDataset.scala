
package org.openapitools.client.model


case class SdtmDataset (
    _ordinal: Option[String],
    _name: Option[String],
    _label: Option[String],
    _description: Option[String],
    _datasetStructure: Option[String],
    _links: Option[SdtmDatasetLinks],
    _datasetVariables: Option[List[SdtmDatasetVariable]]
)
object SdtmDataset {
    def toStringBody(var_ordinal: Object, var_name: Object, var_label: Object, var_description: Object, var_datasetStructure: Object, var_links: Object, var_datasetVariables: Object) =
        s"""
        | {
        | "ordinal":$var_ordinal,"name":$var_name,"label":$var_label,"description":$var_description,"datasetStructure":$var_datasetStructure,"links":$var_links,"datasetVariables":$var_datasetVariables
        | }
        """.stripMargin
}
