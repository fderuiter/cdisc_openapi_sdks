package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashigClass._

case class XmlCdashigClass (
  self: Option[CdashigClass])

object XmlCdashigClass {
  import DateTimeCodecs._

  implicit val XmlCdashigClassCodecJson: CodecJson[XmlCdashigClass] = CodecJson.derive[XmlCdashigClass]
  implicit val XmlCdashigClassDecoder: EntityDecoder[XmlCdashigClass] = jsonOf[XmlCdashigClass]
  implicit val XmlCdashigClassEncoder: EntityEncoder[XmlCdashigClass] = jsonEncoderOf[XmlCdashigClass]
}
