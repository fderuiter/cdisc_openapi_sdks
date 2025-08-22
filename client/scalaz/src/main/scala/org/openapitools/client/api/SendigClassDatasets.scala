package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigClassDatasets._

case class SendigClassDatasets (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
links: Option[SendigClassDatasetsLinks])

object SendigClassDatasets {
  import DateTimeCodecs._

  implicit val SendigClassDatasetsCodecJson: CodecJson[SendigClassDatasets] = CodecJson.derive[SendigClassDatasets]
  implicit val SendigClassDatasetsDecoder: EntityDecoder[SendigClassDatasets] = jsonOf[SendigClassDatasets]
  implicit val SendigClassDatasetsEncoder: EntityEncoder[SendigClassDatasets] = jsonEncoderOf[SendigClassDatasets]
}
