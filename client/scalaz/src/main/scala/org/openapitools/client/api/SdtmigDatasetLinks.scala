package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigDatasetLinks._

case class SdtmigDatasetLinks (
  self: Option[SdtmigDatasetRef],
modelDataset: Option[SdtmDatasetRef],
parentProduct: Option[SdtmigProductRef],
parentClass: Option[SdtmigClassRef],
priorVersion: Option[SdtmigDatasetRef])

object SdtmigDatasetLinks {
  import DateTimeCodecs._

  implicit val SdtmigDatasetLinksCodecJson: CodecJson[SdtmigDatasetLinks] = CodecJson.derive[SdtmigDatasetLinks]
  implicit val SdtmigDatasetLinksDecoder: EntityDecoder[SdtmigDatasetLinks] = jsonOf[SdtmigDatasetLinks]
  implicit val SdtmigDatasetLinksEncoder: EntityEncoder[SdtmigDatasetLinks] = jsonEncoderOf[SdtmigDatasetLinks]
}
