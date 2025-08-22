package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSdtmigClassDatasets._

case class XmlSdtmigClassDatasets (
  self: Option[SdtmigClassDatasets])

object XmlSdtmigClassDatasets {
  import DateTimeCodecs._

  implicit val XmlSdtmigClassDatasetsCodecJson: CodecJson[XmlSdtmigClassDatasets] = CodecJson.derive[XmlSdtmigClassDatasets]
  implicit val XmlSdtmigClassDatasetsDecoder: EntityDecoder[XmlSdtmigClassDatasets] = jsonOf[XmlSdtmigClassDatasets]
  implicit val XmlSdtmigClassDatasetsEncoder: EntityEncoder[XmlSdtmigClassDatasets] = jsonEncoderOf[XmlSdtmigClassDatasets]
}
