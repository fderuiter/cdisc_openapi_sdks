package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmClassDatasetsLinks._

case class SdtmClassDatasetsLinks (
  self: Option[SdtmClassDatasetsRef],
parentProduct: Option[SdtmProductRef],
priorVersion: Option[SdtmClassDatasetsRef],
datasets: Option[List[SdtmDatasetRefElement]])

object SdtmClassDatasetsLinks {
  import DateTimeCodecs._

  implicit val SdtmClassDatasetsLinksCodecJson: CodecJson[SdtmClassDatasetsLinks] = CodecJson.derive[SdtmClassDatasetsLinks]
  implicit val SdtmClassDatasetsLinksDecoder: EntityDecoder[SdtmClassDatasetsLinks] = jsonOf[SdtmClassDatasetsLinks]
  implicit val SdtmClassDatasetsLinksEncoder: EntityEncoder[SdtmClassDatasetsLinks] = jsonEncoderOf[SdtmClassDatasetsLinks]
}
