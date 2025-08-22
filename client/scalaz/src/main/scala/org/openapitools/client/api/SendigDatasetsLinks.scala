package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigDatasetsLinks._

case class SendigDatasetsLinks (
  self: Option[SendigDatasetsRef],
parentProduct: Option[SendigProductRef],
datasets: Option[List[SendigDatasetRefElement]])

object SendigDatasetsLinks {
  import DateTimeCodecs._

  implicit val SendigDatasetsLinksCodecJson: CodecJson[SendigDatasetsLinks] = CodecJson.derive[SendigDatasetsLinks]
  implicit val SendigDatasetsLinksDecoder: EntityDecoder[SendigDatasetsLinks] = jsonOf[SendigDatasetsLinks]
  implicit val SendigDatasetsLinksEncoder: EntityEncoder[SendigDatasetsLinks] = jsonEncoderOf[SendigDatasetsLinks]
}
