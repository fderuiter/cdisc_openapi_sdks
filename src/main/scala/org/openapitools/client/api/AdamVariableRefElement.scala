package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamVariableRefElement._

case class AdamVariableRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object AdamVariableRefElement {
  import DateTimeCodecs._

  implicit val AdamVariableRefElementCodecJson: CodecJson[AdamVariableRefElement] = CodecJson.derive[AdamVariableRefElement]
  implicit val AdamVariableRefElementDecoder: EntityDecoder[AdamVariableRefElement] = jsonOf[AdamVariableRefElement]
  implicit val AdamVariableRefElementEncoder: EntityEncoder[AdamVariableRefElement] = jsonEncoderOf[AdamVariableRefElement]
}
