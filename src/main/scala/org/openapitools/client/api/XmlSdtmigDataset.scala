package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSdtmigDataset._

case class XmlSdtmigDataset (
  self: Option[SdtmigDataset])

object XmlSdtmigDataset {
  import DateTimeCodecs._

  implicit val XmlSdtmigDatasetCodecJson: CodecJson[XmlSdtmigDataset] = CodecJson.derive[XmlSdtmigDataset]
  implicit val XmlSdtmigDatasetDecoder: EntityDecoder[XmlSdtmigDataset] = jsonOf[XmlSdtmigDataset]
  implicit val XmlSdtmigDatasetEncoder: EntityEncoder[XmlSdtmigDataset] = jsonEncoderOf[XmlSdtmigDataset]
}
