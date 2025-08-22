package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigClassDatasetsLinks._

case class SendigClassDatasetsLinks (
  self: Option[SendigClassDatasetsRef],
parentProduct: Option[SendigProductRef],
datasets: Option[List[SendigDatasetRefElement]])

object SendigClassDatasetsLinks {
  import DateTimeCodecs._

  implicit val SendigClassDatasetsLinksCodecJson: CodecJson[SendigClassDatasetsLinks] = CodecJson.derive[SendigClassDatasetsLinks]
  implicit val SendigClassDatasetsLinksDecoder: EntityDecoder[SendigClassDatasetsLinks] = jsonOf[SendigClassDatasetsLinks]
  implicit val SendigClassDatasetsLinksEncoder: EntityEncoder[SendigClassDatasetsLinks] = jsonEncoderOf[SendigClassDatasetsLinks]
}
