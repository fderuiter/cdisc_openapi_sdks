package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import About._

case class About (
  links: Option[AboutLinks],
releaseNotes: Option[String],
apiDocumentation: Option[String])

object About {
  import DateTimeCodecs._

  implicit val AboutCodecJson: CodecJson[About] = CodecJson.derive[About]
  implicit val AboutDecoder: EntityDecoder[About] = jsonOf[About]
  implicit val AboutEncoder: EntityEncoder[About] = jsonEncoderOf[About]
}
