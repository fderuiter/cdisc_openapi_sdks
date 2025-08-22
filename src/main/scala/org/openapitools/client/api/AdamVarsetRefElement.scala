package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamVarsetRefElement._

case class AdamVarsetRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object AdamVarsetRefElement {
  import DateTimeCodecs._

  implicit val AdamVarsetRefElementCodecJson: CodecJson[AdamVarsetRefElement] = CodecJson.derive[AdamVarsetRefElement]
  implicit val AdamVarsetRefElementDecoder: EntityDecoder[AdamVarsetRefElement] = jsonOf[AdamVarsetRefElement]
  implicit val AdamVarsetRefElementEncoder: EntityEncoder[AdamVarsetRefElement] = jsonEncoderOf[AdamVarsetRefElement]
}
