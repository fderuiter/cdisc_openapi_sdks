package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSdtmigClass._

case class XmlSdtmigClass (
  self: Option[SdtmigClass])

object XmlSdtmigClass {
  import DateTimeCodecs._

  implicit val XmlSdtmigClassCodecJson: CodecJson[XmlSdtmigClass] = CodecJson.derive[XmlSdtmigClass]
  implicit val XmlSdtmigClassDecoder: EntityDecoder[XmlSdtmigClass] = jsonOf[XmlSdtmigClass]
  implicit val XmlSdtmigClassEncoder: EntityEncoder[XmlSdtmigClass] = jsonEncoderOf[XmlSdtmigClass]
}
