package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmDatasetsLinks._

case class SdtmDatasetsLinks (
  self: Option[SdtmDatasetsRef],
parentProduct: Option[SdtmProductRef],
priorVersion: Option[SdtmDatasetsRef],
datasets: Option[List[SdtmDatasetRefElement]])

object SdtmDatasetsLinks {
  import DateTimeCodecs._

  implicit val SdtmDatasetsLinksCodecJson: CodecJson[SdtmDatasetsLinks] = CodecJson.derive[SdtmDatasetsLinks]
  implicit val SdtmDatasetsLinksDecoder: EntityDecoder[SdtmDatasetsLinks] = jsonOf[SdtmDatasetsLinks]
  implicit val SdtmDatasetsLinksEncoder: EntityEncoder[SdtmDatasetsLinks] = jsonEncoderOf[SdtmDatasetsLinks]
}
