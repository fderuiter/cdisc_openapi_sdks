package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSdtmDataset._

case class XmlSdtmDataset (
  self: Option[SdtmDataset])

object XmlSdtmDataset {
  import DateTimeCodecs._

  implicit val XmlSdtmDatasetCodecJson: CodecJson[XmlSdtmDataset] = CodecJson.derive[XmlSdtmDataset]
  implicit val XmlSdtmDatasetDecoder: EntityDecoder[XmlSdtmDataset] = jsonOf[XmlSdtmDataset]
  implicit val XmlSdtmDatasetEncoder: EntityEncoder[XmlSdtmDataset] = jsonEncoderOf[XmlSdtmDataset]
}
