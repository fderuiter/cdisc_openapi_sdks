package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSdtmClass._

case class XmlSdtmClass (
  self: Option[SdtmClass])

object XmlSdtmClass {
  import DateTimeCodecs._

  implicit val XmlSdtmClassCodecJson: CodecJson[XmlSdtmClass] = CodecJson.derive[XmlSdtmClass]
  implicit val XmlSdtmClassDecoder: EntityDecoder[XmlSdtmClass] = jsonOf[XmlSdtmClass]
  implicit val XmlSdtmClassEncoder: EntityEncoder[XmlSdtmClass] = jsonEncoderOf[XmlSdtmClass]
}
