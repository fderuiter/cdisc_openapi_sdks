package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootSdtmClassVariable._

case class RootSdtmClassVariable (
  links: Option[RootSdtmClassVariableLinks])

object RootSdtmClassVariable {
  import DateTimeCodecs._

  implicit val RootSdtmClassVariableCodecJson: CodecJson[RootSdtmClassVariable] = CodecJson.derive[RootSdtmClassVariable]
  implicit val RootSdtmClassVariableDecoder: EntityDecoder[RootSdtmClassVariable] = jsonOf[RootSdtmClassVariable]
  implicit val RootSdtmClassVariableEncoder: EntityEncoder[RootSdtmClassVariable] = jsonEncoderOf[RootSdtmClassVariable]
}
