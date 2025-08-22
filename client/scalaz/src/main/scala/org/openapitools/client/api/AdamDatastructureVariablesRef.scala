package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamDatastructureVariablesRef._

case class AdamDatastructureVariablesRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object AdamDatastructureVariablesRef {
  import DateTimeCodecs._

  implicit val AdamDatastructureVariablesRefCodecJson: CodecJson[AdamDatastructureVariablesRef] = CodecJson.derive[AdamDatastructureVariablesRef]
  implicit val AdamDatastructureVariablesRefDecoder: EntityDecoder[AdamDatastructureVariablesRef] = jsonOf[AdamDatastructureVariablesRef]
  implicit val AdamDatastructureVariablesRefEncoder: EntityEncoder[AdamDatastructureVariablesRef] = jsonEncoderOf[AdamDatastructureVariablesRef]
}
