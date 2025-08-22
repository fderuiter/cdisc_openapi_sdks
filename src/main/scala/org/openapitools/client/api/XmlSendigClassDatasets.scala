package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSendigClassDatasets._

case class XmlSendigClassDatasets (
  self: Option[SendigClassDatasets])

object XmlSendigClassDatasets {
  import DateTimeCodecs._

  implicit val XmlSendigClassDatasetsCodecJson: CodecJson[XmlSendigClassDatasets] = CodecJson.derive[XmlSendigClassDatasets]
  implicit val XmlSendigClassDatasetsDecoder: EntityDecoder[XmlSendigClassDatasets] = jsonOf[XmlSendigClassDatasets]
  implicit val XmlSendigClassDatasetsEncoder: EntityEncoder[XmlSendigClassDatasets] = jsonEncoderOf[XmlSendigClassDatasets]
}
