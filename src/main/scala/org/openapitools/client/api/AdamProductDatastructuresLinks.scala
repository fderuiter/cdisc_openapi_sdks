package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamProductDatastructuresLinks._

case class AdamProductDatastructuresLinks (
  self: Option[AdamProductDatastructuresRef],
priorVersion: Option[AdamProductDatastructuresRef],
dataStructures: Option[List[AdamDatastructureRefElement]])

object AdamProductDatastructuresLinks {
  import DateTimeCodecs._

  implicit val AdamProductDatastructuresLinksCodecJson: CodecJson[AdamProductDatastructuresLinks] = CodecJson.derive[AdamProductDatastructuresLinks]
  implicit val AdamProductDatastructuresLinksDecoder: EntityDecoder[AdamProductDatastructuresLinks] = jsonOf[AdamProductDatastructuresLinks]
  implicit val AdamProductDatastructuresLinksEncoder: EntityEncoder[AdamProductDatastructuresLinks] = jsonEncoderOf[AdamProductDatastructuresLinks]
}
