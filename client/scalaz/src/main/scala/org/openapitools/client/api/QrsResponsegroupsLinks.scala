package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QrsResponsegroupsLinks._

case class QrsResponsegroupsLinks (
  self: Option[QrsResponsegroupsRef],
responsegroups: Option[List[QrsResponsegroupRefElement]])

object QrsResponsegroupsLinks {
  import DateTimeCodecs._

  implicit val QrsResponsegroupsLinksCodecJson: CodecJson[QrsResponsegroupsLinks] = CodecJson.derive[QrsResponsegroupsLinks]
  implicit val QrsResponsegroupsLinksDecoder: EntityDecoder[QrsResponsegroupsLinks] = jsonOf[QrsResponsegroupsLinks]
  implicit val QrsResponsegroupsLinksEncoder: EntityEncoder[QrsResponsegroupsLinks] = jsonEncoderOf[QrsResponsegroupsLinks]
}
