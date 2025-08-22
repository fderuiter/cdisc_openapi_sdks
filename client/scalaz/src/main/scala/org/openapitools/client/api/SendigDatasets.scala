package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigDatasets._

case class SendigDatasets (
  name: Option[String],
label: Option[String],
description: Option[String],
source: Option[String],
effectiveDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
links: Option[SendigDatasetsLinks])

object SendigDatasets {
  import DateTimeCodecs._

  implicit val SendigDatasetsCodecJson: CodecJson[SendigDatasets] = CodecJson.derive[SendigDatasets]
  implicit val SendigDatasetsDecoder: EntityDecoder[SendigDatasets] = jsonOf[SendigDatasets]
  implicit val SendigDatasetsEncoder: EntityEncoder[SendigDatasets] = jsonEncoderOf[SendigDatasets]
}
