package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigDatasetVariablesRef._

case class SendigDatasetVariablesRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SendigDatasetVariablesRef {
  import DateTimeCodecs._

  implicit val SendigDatasetVariablesRefCodecJson: CodecJson[SendigDatasetVariablesRef] = CodecJson.derive[SendigDatasetVariablesRef]
  implicit val SendigDatasetVariablesRefDecoder: EntityDecoder[SendigDatasetVariablesRef] = jsonOf[SendigDatasetVariablesRef]
  implicit val SendigDatasetVariablesRefEncoder: EntityEncoder[SendigDatasetVariablesRef] = jsonEncoderOf[SendigDatasetVariablesRef]
}
