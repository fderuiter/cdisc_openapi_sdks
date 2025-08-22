package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlRootSdtmClassVariable._

case class XmlRootSdtmClassVariable (
  self: Option[RootSdtmClassVariable])

object XmlRootSdtmClassVariable {
  import DateTimeCodecs._

  implicit val XmlRootSdtmClassVariableCodecJson: CodecJson[XmlRootSdtmClassVariable] = CodecJson.derive[XmlRootSdtmClassVariable]
  implicit val XmlRootSdtmClassVariableDecoder: EntityDecoder[XmlRootSdtmClassVariable] = jsonOf[XmlRootSdtmClassVariable]
  implicit val XmlRootSdtmClassVariableEncoder: EntityEncoder[XmlRootSdtmClassVariable] = jsonEncoderOf[XmlRootSdtmClassVariable]
}
