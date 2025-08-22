package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSdtmClassVariable._

case class XmlSdtmClassVariable (
  self: Option[SdtmClassVariable])

object XmlSdtmClassVariable {
  import DateTimeCodecs._

  implicit val XmlSdtmClassVariableCodecJson: CodecJson[XmlSdtmClassVariable] = CodecJson.derive[XmlSdtmClassVariable]
  implicit val XmlSdtmClassVariableDecoder: EntityDecoder[XmlSdtmClassVariable] = jsonOf[XmlSdtmClassVariable]
  implicit val XmlSdtmClassVariableEncoder: EntityEncoder[XmlSdtmClassVariable] = jsonEncoderOf[XmlSdtmClassVariable]
}
