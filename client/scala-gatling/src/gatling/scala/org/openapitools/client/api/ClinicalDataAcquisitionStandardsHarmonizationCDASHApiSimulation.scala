package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class ClinicalDataAcquisitionStandardsHarmonizationCDASHApiSimulation extends Simulation {

    def getCurrentDirectory = new File("").getAbsolutePath
    def userDataDirectory = getCurrentDirectory + "/src/gatling/resources/data"

    // basic test setup
    val configName = System.getProperty("testConfig", "baseline")
    val config = ConfigFactory.load(configName).withFallback(ConfigFactory.load("default"))
    val durationSeconds = config.getInt("performance.durationSeconds")
    val rampUpSeconds = config.getInt("performance.rampUpSeconds")
    val rampDownSeconds = config.getInt("performance.rampDownSeconds")
    val authentication = config.getString("performance.authorizationHeader")
    val acceptHeader = config.getString("performance.acceptType")
    val contentTypeHeader = config.getString("performance.contentType")
    val rateMultiplier = config.getDouble("performance.rateMultiplier")
    val instanceMultiplier = config.getDouble("performance.instanceMultiplier")

    // global assertion data
    val globalResponseTimeMinLTE = config.getInt("performance.global.assertions.responseTime.min.lte")
    val globalResponseTimeMinGTE = config.getInt("performance.global.assertions.responseTime.min.gte")
    val globalResponseTimeMaxLTE = config.getInt("performance.global.assertions.responseTime.max.lte")
    val globalResponseTimeMaxGTE = config.getInt("performance.global.assertions.responseTime.max.gte")
    val globalResponseTimeMeanLTE = config.getInt("performance.global.assertions.responseTime.mean.lte")
    val globalResponseTimeMeanGTE = config.getInt("performance.global.assertions.responseTime.mean.gte")
    val globalResponseTimeFailedRequestsPercentLTE = config.getDouble("performance.global.assertions.failedRequests.percent.lte")
    val globalResponseTimeFailedRequestsPercentGTE = config.getDouble("performance.global.assertions.failedRequests.percent.gte")
    val globalResponseTimeSuccessfulRequestsPercentLTE = config.getDouble("performance.global.assertions.successfulRequests.percent.lte")
    val globalResponseTimeSuccessfulRequestsPercentGTE = config.getDouble("performance.global.assertions.successfulRequests.percent.gte")

// Setup http protocol configuration
    val httpConf = http
        .baseURL("https://library.cdisc.org/api")
        .doNotTrackHeader("1")
        .acceptLanguageHeader("en-US,en;q=0.5")
        .acceptEncodingHeader("gzip, deflate")
        .userAgentHeader("Mozilla/5.0 (Windows NT 5.1; rv:31.0) Gecko/20100101 Firefox/31.0")
        .acceptHeader(acceptHeader)
        .contentTypeHeader(contentTypeHeader)

    // set authorization header if it has been modified from config
    if(!authentication.equals("~MANUAL_ENTRY")){
        httpConf.authorizationHeader(authentication)
    }

    // Setup all the operations per second for the test to ultimately be generated from configs
    val mdrCdashVersionClassesClassDomainsGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashVersionClassesClassDomainsGet") * rateMultiplier * instanceMultiplier
    val mdrCdashVersionClassesClassFieldsFieldGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashVersionClassesClassFieldsFieldGet") * rateMultiplier * instanceMultiplier
    val mdrCdashVersionClassesClassGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashVersionClassesClassGet") * rateMultiplier * instanceMultiplier
    val mdrCdashVersionClassesGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashVersionClassesGet") * rateMultiplier * instanceMultiplier
    val mdrCdashVersionDomainsDomainFieldsFieldGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashVersionDomainsDomainFieldsFieldGet") * rateMultiplier * instanceMultiplier
    val mdrCdashVersionDomainsDomainFieldsGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashVersionDomainsDomainFieldsGet") * rateMultiplier * instanceMultiplier
    val mdrCdashVersionDomainsDomainGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashVersionDomainsDomainGet") * rateMultiplier * instanceMultiplier
    val mdrCdashVersionDomainsGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashVersionDomainsGet") * rateMultiplier * instanceMultiplier
    val mdrCdashVersionGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashVersionGet") * rateMultiplier * instanceMultiplier
    val mdrRootCdashClassesClassFieldsFieldGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrRootCdashClassesClassFieldsFieldGet") * rateMultiplier * instanceMultiplier
    val mdrRootCdashDomainsDomainFieldsFieldGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrRootCdashDomainsDomainFieldsFieldGet") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashVersionClassesClassDomainsGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashVersionClassesClassFieldsFieldGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashVersionClassesClassGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashVersionClassesGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashVersionDomainsDomainFieldsFieldGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashVersionDomainsDomainFieldsGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashVersionDomainsDomainGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashVersionDomainsGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashVersionGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrRootCdashClassesClassFieldsFieldGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrRootCdashDomainsDomainFieldsFieldGet-pathParams.csv").random

    // Setup all scenarios

    
    val scnmdrCdashVersionClassesClassDomainsGet = scenario("mdrCdashVersionClassesClassDomainsGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashVersionClassesClassDomainsGet")
        .httpRequest("GET","/mdr/cdash/${version}/classes/${class}/domains")
)

    // Run scnmdrCdashVersionClassesClassDomainsGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashVersionClassesClassDomainsGet.inject(
        rampUsersPerSec(1) to(mdrCdashVersionClassesClassDomainsGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashVersionClassesClassDomainsGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashVersionClassesClassDomainsGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCdashVersionClassesClassFieldsFieldGet = scenario("mdrCdashVersionClassesClassFieldsFieldGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashVersionClassesClassFieldsFieldGet")
        .httpRequest("GET","/mdr/cdash/${version}/classes/${class}/fields/${field}")
)

    // Run scnmdrCdashVersionClassesClassFieldsFieldGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashVersionClassesClassFieldsFieldGet.inject(
        rampUsersPerSec(1) to(mdrCdashVersionClassesClassFieldsFieldGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashVersionClassesClassFieldsFieldGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashVersionClassesClassFieldsFieldGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCdashVersionClassesClassGet = scenario("mdrCdashVersionClassesClassGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashVersionClassesClassGet")
        .httpRequest("GET","/mdr/cdash/${version}/classes/${class}")
)

    // Run scnmdrCdashVersionClassesClassGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashVersionClassesClassGet.inject(
        rampUsersPerSec(1) to(mdrCdashVersionClassesClassGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashVersionClassesClassGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashVersionClassesClassGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCdashVersionClassesGet = scenario("mdrCdashVersionClassesGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashVersionClassesGet")
        .httpRequest("GET","/mdr/cdash/${version}/classes")
)

    // Run scnmdrCdashVersionClassesGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashVersionClassesGet.inject(
        rampUsersPerSec(1) to(mdrCdashVersionClassesGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashVersionClassesGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashVersionClassesGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCdashVersionDomainsDomainFieldsFieldGet = scenario("mdrCdashVersionDomainsDomainFieldsFieldGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashVersionDomainsDomainFieldsFieldGet")
        .httpRequest("GET","/mdr/cdash/${version}/domains/${domain}/fields/${field}")
)

    // Run scnmdrCdashVersionDomainsDomainFieldsFieldGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashVersionDomainsDomainFieldsFieldGet.inject(
        rampUsersPerSec(1) to(mdrCdashVersionDomainsDomainFieldsFieldGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashVersionDomainsDomainFieldsFieldGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashVersionDomainsDomainFieldsFieldGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCdashVersionDomainsDomainFieldsGet = scenario("mdrCdashVersionDomainsDomainFieldsGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashVersionDomainsDomainFieldsGet")
        .httpRequest("GET","/mdr/cdash/${version}/domains/${domain}/fields")
)

    // Run scnmdrCdashVersionDomainsDomainFieldsGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashVersionDomainsDomainFieldsGet.inject(
        rampUsersPerSec(1) to(mdrCdashVersionDomainsDomainFieldsGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashVersionDomainsDomainFieldsGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashVersionDomainsDomainFieldsGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCdashVersionDomainsDomainGet = scenario("mdrCdashVersionDomainsDomainGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashVersionDomainsDomainGet")
        .httpRequest("GET","/mdr/cdash/${version}/domains/${domain}")
)

    // Run scnmdrCdashVersionDomainsDomainGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashVersionDomainsDomainGet.inject(
        rampUsersPerSec(1) to(mdrCdashVersionDomainsDomainGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashVersionDomainsDomainGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashVersionDomainsDomainGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCdashVersionDomainsGet = scenario("mdrCdashVersionDomainsGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashVersionDomainsGet")
        .httpRequest("GET","/mdr/cdash/${version}/domains")
)

    // Run scnmdrCdashVersionDomainsGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashVersionDomainsGet.inject(
        rampUsersPerSec(1) to(mdrCdashVersionDomainsGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashVersionDomainsGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashVersionDomainsGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCdashVersionGet = scenario("mdrCdashVersionGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashVersionGet")
        .httpRequest("GET","/mdr/cdash/${version}")
)

    // Run scnmdrCdashVersionGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashVersionGet.inject(
        rampUsersPerSec(1) to(mdrCdashVersionGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashVersionGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashVersionGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrRootCdashClassesClassFieldsFieldGet = scenario("mdrRootCdashClassesClassFieldsFieldGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrRootCdashClassesClassFieldsFieldGet")
        .httpRequest("GET","/mdr/root/cdash/classes/${class}/fields/${field}")
)

    // Run scnmdrRootCdashClassesClassFieldsFieldGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrRootCdashClassesClassFieldsFieldGet.inject(
        rampUsersPerSec(1) to(mdrRootCdashClassesClassFieldsFieldGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrRootCdashClassesClassFieldsFieldGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrRootCdashClassesClassFieldsFieldGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrRootCdashDomainsDomainFieldsFieldGet = scenario("mdrRootCdashDomainsDomainFieldsFieldGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrRootCdashDomainsDomainFieldsFieldGet")
        .httpRequest("GET","/mdr/root/cdash/domains/${domain}/fields/${field}")
)

    // Run scnmdrRootCdashDomainsDomainFieldsFieldGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrRootCdashDomainsDomainFieldsFieldGet.inject(
        rampUsersPerSec(1) to(mdrRootCdashDomainsDomainFieldsFieldGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrRootCdashDomainsDomainFieldsFieldGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrRootCdashDomainsDomainFieldsFieldGetPerSecond) to(1) during(rampDownSeconds)
    )

    setUp(
        scenarioBuilders.toList
    ).protocols(httpConf).assertions(
        global.responseTime.min.lte(globalResponseTimeMinLTE),
        global.responseTime.min.gte(globalResponseTimeMinGTE),
        global.responseTime.max.lte(globalResponseTimeMaxLTE),
        global.responseTime.max.gte(globalResponseTimeMaxGTE),
        global.responseTime.mean.lte(globalResponseTimeMeanLTE),
        global.responseTime.mean.gte(globalResponseTimeMeanGTE),
        global.failedRequests.percent.lte(globalResponseTimeFailedRequestsPercentLTE),
        global.failedRequests.percent.gte(globalResponseTimeFailedRequestsPercentGTE),
        global.successfulRequests.percent.lte(globalResponseTimeSuccessfulRequestsPercentLTE),
        global.successfulRequests.percent.gte(globalResponseTimeSuccessfulRequestsPercentGTE)
    )
}
