package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class SENDImplementationGuideSENDIGApiSimulation extends Simulation {

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
    val mdrRootSendigDatasetsDatasetVariablesVarGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrRootSendigDatasetsDatasetVariablesVarGet") * rateMultiplier * instanceMultiplier
    val mdrSendigVersionClassesClassDatasetsGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSendigVersionClassesClassDatasetsGet") * rateMultiplier * instanceMultiplier
    val mdrSendigVersionClassesClassGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSendigVersionClassesClassGet") * rateMultiplier * instanceMultiplier
    val mdrSendigVersionClassesGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSendigVersionClassesGet") * rateMultiplier * instanceMultiplier
    val mdrSendigVersionDatasetsDatasetGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSendigVersionDatasetsDatasetGet") * rateMultiplier * instanceMultiplier
    val mdrSendigVersionDatasetsDatasetVariablesGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSendigVersionDatasetsDatasetVariablesGet") * rateMultiplier * instanceMultiplier
    val mdrSendigVersionDatasetsDatasetVariablesVarGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSendigVersionDatasetsDatasetVariablesVarGet") * rateMultiplier * instanceMultiplier
    val mdrSendigVersionDatasetsGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSendigVersionDatasetsGet") * rateMultiplier * instanceMultiplier
    val mdrSendigVersionGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSendigVersionGet") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrRootSendigDatasetsDatasetVariablesVarGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSendigVersionClassesClassDatasetsGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSendigVersionClassesClassGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSendigVersionClassesGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSendigVersionDatasetsDatasetGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSendigVersionDatasetsDatasetVariablesGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSendigVersionDatasetsDatasetVariablesVarGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSendigVersionDatasetsGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSendigVersionGet-pathParams.csv").random

    // Setup all scenarios

    
    val scnmdrRootSendigDatasetsDatasetVariablesVarGet = scenario("mdrRootSendigDatasetsDatasetVariablesVarGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrRootSendigDatasetsDatasetVariablesVarGet")
        .httpRequest("GET","/mdr/root/sendig/datasets/${dataset}/variables/${var}")
)

    // Run scnmdrRootSendigDatasetsDatasetVariablesVarGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrRootSendigDatasetsDatasetVariablesVarGet.inject(
        rampUsersPerSec(1) to(mdrRootSendigDatasetsDatasetVariablesVarGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrRootSendigDatasetsDatasetVariablesVarGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrRootSendigDatasetsDatasetVariablesVarGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSendigVersionClassesClassDatasetsGet = scenario("mdrSendigVersionClassesClassDatasetsGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSendigVersionClassesClassDatasetsGet")
        .httpRequest("GET","/mdr/sendig/${version}/classes/${class}/datasets")
)

    // Run scnmdrSendigVersionClassesClassDatasetsGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSendigVersionClassesClassDatasetsGet.inject(
        rampUsersPerSec(1) to(mdrSendigVersionClassesClassDatasetsGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSendigVersionClassesClassDatasetsGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSendigVersionClassesClassDatasetsGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSendigVersionClassesClassGet = scenario("mdrSendigVersionClassesClassGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSendigVersionClassesClassGet")
        .httpRequest("GET","/mdr/sendig/${version}/classes/${class}")
)

    // Run scnmdrSendigVersionClassesClassGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSendigVersionClassesClassGet.inject(
        rampUsersPerSec(1) to(mdrSendigVersionClassesClassGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSendigVersionClassesClassGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSendigVersionClassesClassGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSendigVersionClassesGet = scenario("mdrSendigVersionClassesGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSendigVersionClassesGet")
        .httpRequest("GET","/mdr/sendig/${version}/classes")
)

    // Run scnmdrSendigVersionClassesGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSendigVersionClassesGet.inject(
        rampUsersPerSec(1) to(mdrSendigVersionClassesGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSendigVersionClassesGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSendigVersionClassesGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSendigVersionDatasetsDatasetGet = scenario("mdrSendigVersionDatasetsDatasetGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSendigVersionDatasetsDatasetGet")
        .httpRequest("GET","/mdr/sendig/${version}/datasets/${dataset}")
)

    // Run scnmdrSendigVersionDatasetsDatasetGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSendigVersionDatasetsDatasetGet.inject(
        rampUsersPerSec(1) to(mdrSendigVersionDatasetsDatasetGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSendigVersionDatasetsDatasetGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSendigVersionDatasetsDatasetGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSendigVersionDatasetsDatasetVariablesGet = scenario("mdrSendigVersionDatasetsDatasetVariablesGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSendigVersionDatasetsDatasetVariablesGet")
        .httpRequest("GET","/mdr/sendig/${version}/datasets/${dataset}/variables")
)

    // Run scnmdrSendigVersionDatasetsDatasetVariablesGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSendigVersionDatasetsDatasetVariablesGet.inject(
        rampUsersPerSec(1) to(mdrSendigVersionDatasetsDatasetVariablesGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSendigVersionDatasetsDatasetVariablesGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSendigVersionDatasetsDatasetVariablesGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSendigVersionDatasetsDatasetVariablesVarGet = scenario("mdrSendigVersionDatasetsDatasetVariablesVarGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSendigVersionDatasetsDatasetVariablesVarGet")
        .httpRequest("GET","/mdr/sendig/${version}/datasets/${dataset}/variables/${var}")
)

    // Run scnmdrSendigVersionDatasetsDatasetVariablesVarGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSendigVersionDatasetsDatasetVariablesVarGet.inject(
        rampUsersPerSec(1) to(mdrSendigVersionDatasetsDatasetVariablesVarGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSendigVersionDatasetsDatasetVariablesVarGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSendigVersionDatasetsDatasetVariablesVarGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSendigVersionDatasetsGet = scenario("mdrSendigVersionDatasetsGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSendigVersionDatasetsGet")
        .httpRequest("GET","/mdr/sendig/${version}/datasets")
)

    // Run scnmdrSendigVersionDatasetsGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSendigVersionDatasetsGet.inject(
        rampUsersPerSec(1) to(mdrSendigVersionDatasetsGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSendigVersionDatasetsGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSendigVersionDatasetsGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSendigVersionGet = scenario("mdrSendigVersionGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSendigVersionGet")
        .httpRequest("GET","/mdr/sendig/${version}")
)

    // Run scnmdrSendigVersionGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSendigVersionGet.inject(
        rampUsersPerSec(1) to(mdrSendigVersionGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSendigVersionGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSendigVersionGetPerSecond) to(1) during(rampDownSeconds)
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
