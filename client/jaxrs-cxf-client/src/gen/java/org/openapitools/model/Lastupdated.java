package org.openapitools.model;

import org.openapitools.model.LastupdatedLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Lastupdated  {
  
  @ApiModelProperty(value = "")
  private LastupdatedLinks links;

  @ApiModelProperty(example = "2020-02-14", value = "")
  private String overall;

  @ApiModelProperty(example = "2020-02-14", value = "")
  private String dataAnalysis;

  @ApiModelProperty(example = "2020-02-14", value = "")
  private String dataCollection;

  @ApiModelProperty(example = "2020-02-14", value = "")
  private String dataTabulation;

  @ApiModelProperty(example = "2020-02-14", value = "")
  private String measure;

  @ApiModelProperty(example = "2020-02-14", value = "")
  private String terminology;
 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public LastupdatedLinks getLinks() {
    return links;
  }

  public void setLinks(LastupdatedLinks links) {
    this.links = links;
  }

  public Lastupdated links(LastupdatedLinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get overall
   * @return overall
  **/
  @JsonProperty("overall")
  public String getOverall() {
    return overall;
  }

  public void setOverall(String overall) {
    this.overall = overall;
  }

  public Lastupdated overall(String overall) {
    this.overall = overall;
    return this;
  }

 /**
   * Get dataAnalysis
   * @return dataAnalysis
  **/
  @JsonProperty("data-analysis")
  public String getDataAnalysis() {
    return dataAnalysis;
  }

  public void setDataAnalysis(String dataAnalysis) {
    this.dataAnalysis = dataAnalysis;
  }

  public Lastupdated dataAnalysis(String dataAnalysis) {
    this.dataAnalysis = dataAnalysis;
    return this;
  }

 /**
   * Get dataCollection
   * @return dataCollection
  **/
  @JsonProperty("data-collection")
  public String getDataCollection() {
    return dataCollection;
  }

  public void setDataCollection(String dataCollection) {
    this.dataCollection = dataCollection;
  }

  public Lastupdated dataCollection(String dataCollection) {
    this.dataCollection = dataCollection;
    return this;
  }

 /**
   * Get dataTabulation
   * @return dataTabulation
  **/
  @JsonProperty("data-tabulation")
  public String getDataTabulation() {
    return dataTabulation;
  }

  public void setDataTabulation(String dataTabulation) {
    this.dataTabulation = dataTabulation;
  }

  public Lastupdated dataTabulation(String dataTabulation) {
    this.dataTabulation = dataTabulation;
    return this;
  }

 /**
   * Get measure
   * @return measure
  **/
  @JsonProperty("measure")
  public String getMeasure() {
    return measure;
  }

  public void setMeasure(String measure) {
    this.measure = measure;
  }

  public Lastupdated measure(String measure) {
    this.measure = measure;
    return this;
  }

 /**
   * Get terminology
   * @return terminology
  **/
  @JsonProperty("terminology")
  public String getTerminology() {
    return terminology;
  }

  public void setTerminology(String terminology) {
    this.terminology = terminology;
  }

  public Lastupdated terminology(String terminology) {
    this.terminology = terminology;
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
    Lastupdated lastupdated = (Lastupdated) o;
    return Objects.equals(this.links, lastupdated.links) &&
        Objects.equals(this.overall, lastupdated.overall) &&
        Objects.equals(this.dataAnalysis, lastupdated.dataAnalysis) &&
        Objects.equals(this.dataCollection, lastupdated.dataCollection) &&
        Objects.equals(this.dataTabulation, lastupdated.dataTabulation) &&
        Objects.equals(this.measure, lastupdated.measure) &&
        Objects.equals(this.terminology, lastupdated.terminology);
  }

  @Override
  public int hashCode() {
    return Objects.hash(links, overall, dataAnalysis, dataCollection, dataTabulation, measure, terminology);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Lastupdated {\n");
    
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    overall: ").append(toIndentedString(overall)).append("\n");
    sb.append("    dataAnalysis: ").append(toIndentedString(dataAnalysis)).append("\n");
    sb.append("    dataCollection: ").append(toIndentedString(dataCollection)).append("\n");
    sb.append("    dataTabulation: ").append(toIndentedString(dataTabulation)).append("\n");
    sb.append("    measure: ").append(toIndentedString(measure)).append("\n");
    sb.append("    terminology: ").append(toIndentedString(terminology)).append("\n");
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

