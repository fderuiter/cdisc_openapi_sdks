package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSdtmDatasets._

case class XmlSdtmDatasets (
  self: Option[SdtmDatasets])

object XmlSdtmDatasets {
  import DateTimeCodecs._

  implicit val XmlSdtmDatasetsCodecJson: CodecJson[XmlSdtmDatasets] = CodecJson.derive[XmlSdtmDatasets]
  implicit val XmlSdtmDatasetsDecoder: EntityDecoder[XmlSdtmDatasets] = jsonOf[XmlSdtmDatasets]
  implicit val XmlSdtmDatasetsEncoder: EntityEncoder[XmlSdtmDatasets] = jsonEncoderOf[XmlSdtmDatasets]
}
