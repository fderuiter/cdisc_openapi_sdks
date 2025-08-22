package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamVariableRef._

case class AdamVariableRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object AdamVariableRef {
  import DateTimeCodecs._

  implicit val AdamVariableRefCodecJson: CodecJson[AdamVariableRef] = CodecJson.derive[AdamVariableRef]
  implicit val AdamVariableRefDecoder: EntityDecoder[AdamVariableRef] = jsonOf[AdamVariableRef]
  implicit val AdamVariableRefEncoder: EntityEncoder[AdamVariableRef] = jsonEncoderOf[AdamVariableRef]
}
