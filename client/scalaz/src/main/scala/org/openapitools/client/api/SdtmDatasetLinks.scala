package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmDatasetLinks._

case class SdtmDatasetLinks (
  self: Option[SdtmDatasetRef],
parentProduct: Option[SdtmProductRef],
parentClass: Option[SdtmClassRef],
priorVersion: Option[SdtmDatasetRef])

object SdtmDatasetLinks {
  import DateTimeCodecs._

  implicit val SdtmDatasetLinksCodecJson: CodecJson[SdtmDatasetLinks] = CodecJson.derive[SdtmDatasetLinks]
  implicit val SdtmDatasetLinksDecoder: EntityDecoder[SdtmDatasetLinks] = jsonOf[SdtmDatasetLinks]
  implicit val SdtmDatasetLinksEncoder: EntityEncoder[SdtmDatasetLinks] = jsonEncoderOf[SdtmDatasetLinks]
}
