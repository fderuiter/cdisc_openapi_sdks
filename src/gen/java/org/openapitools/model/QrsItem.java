package org.openapitools.model;

import org.openapitools.model.QrsItemLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class QrsItem  {
  
  @ApiModelProperty(example = "1", value = "")
  private String ordinal;

  @ApiModelProperty(example = "AIMS01-Muscles of Facial Expression", value = "")
  private String label;

  @ApiModelProperty(example = "Abnormal Involuntary Movement Scale - Facial and Oral Movements, Muscles of facial expression, e.g., movements of forehead, eyebrows, periorbital area, cheeks. Include frowning, blinking, grimacing of upper face.", value = "")
  private String questionText;

  @ApiModelProperty(value = "")
  private QrsItemLinks links;
 /**
   * Get ordinal
   * @return ordinal
  **/
  @JsonProperty("ordinal")
  public String getOrdinal() {
    return ordinal;
  }

  public void setOrdinal(String ordinal) {
    this.ordinal = ordinal;
  }

  public QrsItem ordinal(String ordinal) {
    this.ordinal = ordinal;
    return this;
  }

 /**
   * Get label
   * @return label
  **/
  @JsonProperty("label")
  public String getLabel() {
    return label;
  }

  public void setLabel(String label) {
    this.label = label;
  }

  public QrsItem label(String label) {
    this.label = label;
    return this;
  }

 /**
   * Get questionText
   * @return questionText
  **/
  @JsonProperty("questionText")
  public String getQuestionText() {
    return questionText;
  }

  public void setQuestionText(String questionText) {
    this.questionText = questionText;
  }

  public QrsItem questionText(String questionText) {
    this.questionText = questionText;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public QrsItemLinks getLinks() {
    return links;
  }

  public void setLinks(QrsItemLinks links) {
    this.links = links;
  }

  public QrsItem links(QrsItemLinks links) {
    this.links = links;
    return this;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    QrsItem qrsItem = (QrsItem) o;
    return Objects.equals(this.ordinal, qrsItem.ordinal) &&
        Objects.equals(this.label, qrsItem.label) &&
        Objects.equals(this.questionText, qrsItem.questionText) &&
        Objects.equals(this.links, qrsItem.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, label, questionText, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QrsItem {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    questionText: ").append(toIndentedString(questionText)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

