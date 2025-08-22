package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigDatasetLinks._

case class SendigDatasetLinks (
  self: Option[SendigDatasetRef],
modelDataset: Option[SdtmDatasetRef],
parentProduct: Option[SendigProductRef],
parentClass: Option[SendigClassRef],
priorVersion: Option[SendigDatasetRef])

object SendigDatasetLinks {
  import DateTimeCodecs._

  implicit val SendigDatasetLinksCodecJson: CodecJson[SendigDatasetLinks] = CodecJson.derive[SendigDatasetLinks]
  implicit val SendigDatasetLinksDecoder: EntityDecoder[SendigDatasetLinks] = jsonOf[SendigDatasetLinks]
  implicit val SendigDatasetLinksEncoder: EntityEncoder[SendigDatasetLinks] = jsonEncoderOf[SendigDatasetLinks]
}
