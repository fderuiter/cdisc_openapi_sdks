package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigDatasetVariableRef._

case class SendigDatasetVariableRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SendigDatasetVariableRef {
  import DateTimeCodecs._

  implicit val SendigDatasetVariableRefCodecJson: CodecJson[SendigDatasetVariableRef] = CodecJson.derive[SendigDatasetVariableRef]
  implicit val SendigDatasetVariableRefDecoder: EntityDecoder[SendigDatasetVariableRef] = jsonOf[SendigDatasetVariableRef]
  implicit val SendigDatasetVariableRefEncoder: EntityEncoder[SendigDatasetVariableRef] = jsonEncoderOf[SendigDatasetVariableRef]
}
