package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashClassField._

case class XmlCdashClassField (
  self: Option[CdashClassField])

object XmlCdashClassField {
  import DateTimeCodecs._

  implicit val XmlCdashClassFieldCodecJson: CodecJson[XmlCdashClassField] = CodecJson.derive[XmlCdashClassField]
  implicit val XmlCdashClassFieldDecoder: EntityDecoder[XmlCdashClassField] = jsonOf[XmlCdashClassField]
  implicit val XmlCdashClassFieldEncoder: EntityEncoder[XmlCdashClassField] = jsonEncoderOf[XmlCdashClassField]
}
