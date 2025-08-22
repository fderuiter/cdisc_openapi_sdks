package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSdtmigDatasets._

case class XmlSdtmigDatasets (
  self: Option[SdtmigDatasets])

object XmlSdtmigDatasets {
  import DateTimeCodecs._

  implicit val XmlSdtmigDatasetsCodecJson: CodecJson[XmlSdtmigDatasets] = CodecJson.derive[XmlSdtmigDatasets]
  implicit val XmlSdtmigDatasetsDecoder: EntityDecoder[XmlSdtmigDatasets] = jsonOf[XmlSdtmigDatasets]
  implicit val XmlSdtmigDatasetsEncoder: EntityEncoder[XmlSdtmigDatasets] = jsonEncoderOf[XmlSdtmigDatasets]
}
