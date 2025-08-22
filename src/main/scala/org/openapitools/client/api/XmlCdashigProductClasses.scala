package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashigProductClasses._

case class XmlCdashigProductClasses (
  self: Option[CdashigProductClasses])

object XmlCdashigProductClasses {
  import DateTimeCodecs._

  implicit val XmlCdashigProductClassesCodecJson: CodecJson[XmlCdashigProductClasses] = CodecJson.derive[XmlCdashigProductClasses]
  implicit val XmlCdashigProductClassesDecoder: EntityDecoder[XmlCdashigProductClasses] = jsonOf[XmlCdashigProductClasses]
  implicit val XmlCdashigProductClassesEncoder: EntityEncoder[XmlCdashigProductClasses] = jsonEncoderOf[XmlCdashigProductClasses]
}
