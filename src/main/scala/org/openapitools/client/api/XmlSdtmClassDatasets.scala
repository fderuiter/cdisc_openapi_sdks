package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSdtmClassDatasets._

case class XmlSdtmClassDatasets (
  self: Option[SdtmClassDatasets])

object XmlSdtmClassDatasets {
  import DateTimeCodecs._

  implicit val XmlSdtmClassDatasetsCodecJson: CodecJson[XmlSdtmClassDatasets] = CodecJson.derive[XmlSdtmClassDatasets]
  implicit val XmlSdtmClassDatasetsDecoder: EntityDecoder[XmlSdtmClassDatasets] = jsonOf[XmlSdtmClassDatasets]
  implicit val XmlSdtmClassDatasetsEncoder: EntityEncoder[XmlSdtmClassDatasets] = jsonEncoderOf[XmlSdtmClassDatasets]
}
