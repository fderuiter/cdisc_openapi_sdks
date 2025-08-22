package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigClassDatasetsRef._

case class SendigClassDatasetsRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SendigClassDatasetsRef {
  import DateTimeCodecs._

  implicit val SendigClassDatasetsRefCodecJson: CodecJson[SendigClassDatasetsRef] = CodecJson.derive[SendigClassDatasetsRef]
  implicit val SendigClassDatasetsRefDecoder: EntityDecoder[SendigClassDatasetsRef] = jsonOf[SendigClassDatasetsRef]
  implicit val SendigClassDatasetsRefEncoder: EntityEncoder[SendigClassDatasetsRef] = jsonEncoderOf[SendigClassDatasetsRef]
}
