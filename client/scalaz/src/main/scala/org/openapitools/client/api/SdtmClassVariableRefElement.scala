package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmClassVariableRefElement._

case class SdtmClassVariableRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmClassVariableRefElement {
  import DateTimeCodecs._

  implicit val SdtmClassVariableRefElementCodecJson: CodecJson[SdtmClassVariableRefElement] = CodecJson.derive[SdtmClassVariableRefElement]
  implicit val SdtmClassVariableRefElementDecoder: EntityDecoder[SdtmClassVariableRefElement] = jsonOf[SdtmClassVariableRefElement]
  implicit val SdtmClassVariableRefElementEncoder: EntityEncoder[SdtmClassVariableRefElement] = jsonEncoderOf[SdtmClassVariableRefElement]
}
