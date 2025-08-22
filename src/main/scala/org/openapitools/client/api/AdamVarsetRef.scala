package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamVarsetRef._

case class AdamVarsetRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object AdamVarsetRef {
  import DateTimeCodecs._

  implicit val AdamVarsetRefCodecJson: CodecJson[AdamVarsetRef] = CodecJson.derive[AdamVarsetRef]
  implicit val AdamVarsetRefDecoder: EntityDecoder[AdamVarsetRef] = jsonOf[AdamVarsetRef]
  implicit val AdamVarsetRefEncoder: EntityEncoder[AdamVarsetRef] = jsonEncoderOf[AdamVarsetRef]
}
