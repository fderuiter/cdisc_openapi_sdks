package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class SDTMImplementationGuideSDTMIGApiSimulation extends Simulation {

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
    val mdrRootSdtmigDatasetsDatasetVariablesVarGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrRootSdtmigDatasetsDatasetVariablesVarGet") * rateMultiplier * instanceMultiplier
    val mdrSdtmigVersionClassesClassDatasetsGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSdtmigVersionClassesClassDatasetsGet") * rateMultiplier * instanceMultiplier
    val mdrSdtmigVersionClassesClassGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSdtmigVersionClassesClassGet") * rateMultiplier * instanceMultiplier
    val mdrSdtmigVersionClassesGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSdtmigVersionClassesGet") * rateMultiplier * instanceMultiplier
    val mdrSdtmigVersionDatasetsDatasetGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSdtmigVersionDatasetsDatasetGet") * rateMultiplier * instanceMultiplier
    val mdrSdtmigVersionDatasetsDatasetVariablesGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSdtmigVersionDatasetsDatasetVariablesGet") * rateMultiplier * instanceMultiplier
    val mdrSdtmigVersionDatasetsDatasetVariablesVarGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSdtmigVersionDatasetsDatasetVariablesVarGet") * rateMultiplier * instanceMultiplier
    val mdrSdtmigVersionDatasetsGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSdtmigVersionDatasetsGet") * rateMultiplier * instanceMultiplier
    val mdrSdtmigVersionGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSdtmigVersionGet") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrRootSdtmigDatasetsDatasetVariablesVarGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSdtmigVersionClassesClassDatasetsGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSdtmigVersionClassesClassGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSdtmigVersionClassesGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSdtmigVersionDatasetsDatasetGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSdtmigVersionDatasetsDatasetVariablesGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSdtmigVersionDatasetsDatasetVariablesVarGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSdtmigVersionDatasetsGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSdtmigVersionGet-pathParams.csv").random

    // Setup all scenarios

    
    val scnmdrRootSdtmigDatasetsDatasetVariablesVarGet = scenario("mdrRootSdtmigDatasetsDatasetVariablesVarGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrRootSdtmigDatasetsDatasetVariablesVarGet")
        .httpRequest("GET","/mdr/root/sdtmig/datasets/${dataset}/variables/${var}")
)

    // Run scnmdrRootSdtmigDatasetsDatasetVariablesVarGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrRootSdtmigDatasetsDatasetVariablesVarGet.inject(
        rampUsersPerSec(1) to(mdrRootSdtmigDatasetsDatasetVariablesVarGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrRootSdtmigDatasetsDatasetVariablesVarGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrRootSdtmigDatasetsDatasetVariablesVarGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSdtmigVersionClassesClassDatasetsGet = scenario("mdrSdtmigVersionClassesClassDatasetsGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSdtmigVersionClassesClassDatasetsGet")
        .httpRequest("GET","/mdr/sdtmig/${version}/classes/${class}/datasets")
)

    // Run scnmdrSdtmigVersionClassesClassDatasetsGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSdtmigVersionClassesClassDatasetsGet.inject(
        rampUsersPerSec(1) to(mdrSdtmigVersionClassesClassDatasetsGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSdtmigVersionClassesClassDatasetsGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSdtmigVersionClassesClassDatasetsGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSdtmigVersionClassesClassGet = scenario("mdrSdtmigVersionClassesClassGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSdtmigVersionClassesClassGet")
        .httpRequest("GET","/mdr/sdtmig/${version}/classes/${class}")
)

    // Run scnmdrSdtmigVersionClassesClassGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSdtmigVersionClassesClassGet.inject(
        rampUsersPerSec(1) to(mdrSdtmigVersionClassesClassGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSdtmigVersionClassesClassGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSdtmigVersionClassesClassGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSdtmigVersionClassesGet = scenario("mdrSdtmigVersionClassesGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSdtmigVersionClassesGet")
        .httpRequest("GET","/mdr/sdtmig/${version}/classes")
)

    // Run scnmdrSdtmigVersionClassesGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSdtmigVersionClassesGet.inject(
        rampUsersPerSec(1) to(mdrSdtmigVersionClassesGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSdtmigVersionClassesGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSdtmigVersionClassesGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSdtmigVersionDatasetsDatasetGet = scenario("mdrSdtmigVersionDatasetsDatasetGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSdtmigVersionDatasetsDatasetGet")
        .httpRequest("GET","/mdr/sdtmig/${version}/datasets/${dataset}")
)

    // Run scnmdrSdtmigVersionDatasetsDatasetGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSdtmigVersionDatasetsDatasetGet.inject(
        rampUsersPerSec(1) to(mdrSdtmigVersionDatasetsDatasetGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSdtmigVersionDatasetsDatasetGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSdtmigVersionDatasetsDatasetGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSdtmigVersionDatasetsDatasetVariablesGet = scenario("mdrSdtmigVersionDatasetsDatasetVariablesGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSdtmigVersionDatasetsDatasetVariablesGet")
        .httpRequest("GET","/mdr/sdtmig/${version}/datasets/${dataset}/variables")
)

    // Run scnmdrSdtmigVersionDatasetsDatasetVariablesGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSdtmigVersionDatasetsDatasetVariablesGet.inject(
        rampUsersPerSec(1) to(mdrSdtmigVersionDatasetsDatasetVariablesGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSdtmigVersionDatasetsDatasetVariablesGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSdtmigVersionDatasetsDatasetVariablesGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSdtmigVersionDatasetsDatasetVariablesVarGet = scenario("mdrSdtmigVersionDatasetsDatasetVariablesVarGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSdtmigVersionDatasetsDatasetVariablesVarGet")
        .httpRequest("GET","/mdr/sdtmig/${version}/datasets/${dataset}/variables/${var}")
)

    // Run scnmdrSdtmigVersionDatasetsDatasetVariablesVarGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSdtmigVersionDatasetsDatasetVariablesVarGet.inject(
        rampUsersPerSec(1) to(mdrSdtmigVersionDatasetsDatasetVariablesVarGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSdtmigVersionDatasetsDatasetVariablesVarGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSdtmigVersionDatasetsDatasetVariablesVarGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSdtmigVersionDatasetsGet = scenario("mdrSdtmigVersionDatasetsGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSdtmigVersionDatasetsGet")
        .httpRequest("GET","/mdr/sdtmig/${version}/datasets")
)

    // Run scnmdrSdtmigVersionDatasetsGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSdtmigVersionDatasetsGet.inject(
        rampUsersPerSec(1) to(mdrSdtmigVersionDatasetsGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSdtmigVersionDatasetsGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSdtmigVersionDatasetsGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSdtmigVersionGet = scenario("mdrSdtmigVersionGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSdtmigVersionGet")
        .httpRequest("GET","/mdr/sdtmig/${version}")
)

    // Run scnmdrSdtmigVersionGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSdtmigVersionGet.inject(
        rampUsersPerSec(1) to(mdrSdtmigVersionGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSdtmigVersionGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSdtmigVersionGetPerSecond) to(1) during(rampDownSeconds)
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
