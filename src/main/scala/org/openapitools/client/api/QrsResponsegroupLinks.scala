package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QrsResponsegroupLinks._

case class QrsResponsegroupLinks (
  self: Option[QrsResponsegroupRef],
responses: Option[List[QrsResponses]])

object QrsResponsegroupLinks {
  import DateTimeCodecs._

  implicit val QrsResponsegroupLinksCodecJson: CodecJson[QrsResponsegroupLinks] = CodecJson.derive[QrsResponsegroupLinks]
  implicit val QrsResponsegroupLinksDecoder: EntityDecoder[QrsResponsegroupLinks] = jsonOf[QrsResponsegroupLinks]
  implicit val QrsResponsegroupLinksEncoder: EntityEncoder[QrsResponsegroupLinks] = jsonEncoderOf[QrsResponsegroupLinks]
}
