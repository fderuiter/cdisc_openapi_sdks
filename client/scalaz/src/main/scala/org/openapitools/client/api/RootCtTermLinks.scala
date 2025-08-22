package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootCtTermLinks._

case class RootCtTermLinks (
  self: Option[RootCtTermRef],
versions: Option[List[CtTermRefVersion]])

object RootCtTermLinks {
  import DateTimeCodecs._

  implicit val RootCtTermLinksCodecJson: CodecJson[RootCtTermLinks] = CodecJson.derive[RootCtTermLinks]
  implicit val RootCtTermLinksDecoder: EntityDecoder[RootCtTermLinks] = jsonOf[RootCtTermLinks]
  implicit val RootCtTermLinksEncoder: EntityEncoder[RootCtTermLinks] = jsonEncoderOf[RootCtTermLinks]
}
