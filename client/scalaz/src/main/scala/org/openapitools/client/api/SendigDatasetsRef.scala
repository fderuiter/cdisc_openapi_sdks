package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigDatasetsRef._

case class SendigDatasetsRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SendigDatasetsRef {
  import DateTimeCodecs._

  implicit val SendigDatasetsRefCodecJson: CodecJson[SendigDatasetsRef] = CodecJson.derive[SendigDatasetsRef]
  implicit val SendigDatasetsRefDecoder: EntityDecoder[SendigDatasetsRef] = jsonOf[SendigDatasetsRef]
  implicit val SendigDatasetsRefEncoder: EntityEncoder[SendigDatasetsRef] = jsonEncoderOf[SendigDatasetsRef]
}
