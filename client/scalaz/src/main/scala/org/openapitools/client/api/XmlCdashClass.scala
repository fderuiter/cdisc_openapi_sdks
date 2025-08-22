package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashClass._

case class XmlCdashClass (
  self: Option[CdashClass])

object XmlCdashClass {
  import DateTimeCodecs._

  implicit val XmlCdashClassCodecJson: CodecJson[XmlCdashClass] = CodecJson.derive[XmlCdashClass]
  implicit val XmlCdashClassDecoder: EntityDecoder[XmlCdashClass] = jsonOf[XmlCdashClass]
  implicit val XmlCdashClassEncoder: EntityEncoder[XmlCdashClass] = jsonEncoderOf[XmlCdashClass]
}
