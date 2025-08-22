package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSendigClasses._

case class XmlSendigClasses (
  self: Option[SendigClasses])

object XmlSendigClasses {
  import DateTimeCodecs._

  implicit val XmlSendigClassesCodecJson: CodecJson[XmlSendigClasses] = CodecJson.derive[XmlSendigClasses]
  implicit val XmlSendigClassesDecoder: EntityDecoder[XmlSendigClasses] = jsonOf[XmlSendigClasses]
  implicit val XmlSendigClassesEncoder: EntityEncoder[XmlSendigClasses] = jsonEncoderOf[XmlSendigClasses]
}
