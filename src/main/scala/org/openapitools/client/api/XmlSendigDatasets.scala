package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSendigDatasets._

case class XmlSendigDatasets (
  self: Option[SendigDatasets])

object XmlSendigDatasets {
  import DateTimeCodecs._

  implicit val XmlSendigDatasetsCodecJson: CodecJson[XmlSendigDatasets] = CodecJson.derive[XmlSendigDatasets]
  implicit val XmlSendigDatasetsDecoder: EntityDecoder[XmlSendigDatasets] = jsonOf[XmlSendigDatasets]
  implicit val XmlSendigDatasetsEncoder: EntityEncoder[XmlSendigDatasets] = jsonEncoderOf[XmlSendigDatasets]
}
