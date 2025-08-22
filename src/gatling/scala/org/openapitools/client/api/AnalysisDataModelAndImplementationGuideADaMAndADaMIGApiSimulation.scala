package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class AnalysisDataModelAndImplementationGuideADaMAndADaMIGApiSimulation extends Simulation {

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
    val mdrAdamProductDatastructuresGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrAdamProductDatastructuresGet") * rateMultiplier * instanceMultiplier
    val mdrAdamProductDatastructuresStructureGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrAdamProductDatastructuresStructureGet") * rateMultiplier * instanceMultiplier
    val mdrAdamProductDatastructuresStructureVariablesGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrAdamProductDatastructuresStructureVariablesGet") * rateMultiplier * instanceMultiplier
    val mdrAdamProductDatastructuresStructureVariablesVarGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrAdamProductDatastructuresStructureVariablesVarGet") * rateMultiplier * instanceMultiplier
    val mdrAdamProductDatastructuresStructureVarsetsGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrAdamProductDatastructuresStructureVarsetsGet") * rateMultiplier * instanceMultiplier
    val mdrAdamProductDatastructuresStructureVarsetsVarsetGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrAdamProductDatastructuresStructureVarsetsVarsetGet") * rateMultiplier * instanceMultiplier
    val mdrAdamProductGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrAdamProductGet") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrAdamProductDatastructuresGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrAdamProductDatastructuresStructureGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrAdamProductDatastructuresStructureVariablesGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrAdamProductDatastructuresStructureVariablesVarGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrAdamProductDatastructuresStructureVarsetsGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrAdamProductDatastructuresStructureVarsetsVarsetGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrAdamProductGet-pathParams.csv").random

    // Setup all scenarios

    
    val scnmdrAdamProductDatastructuresGet = scenario("mdrAdamProductDatastructuresGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrAdamProductDatastructuresGet")
        .httpRequest("GET","/mdr/adam/${product}/datastructures")
)

    // Run scnmdrAdamProductDatastructuresGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrAdamProductDatastructuresGet.inject(
        rampUsersPerSec(1) to(mdrAdamProductDatastructuresGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrAdamProductDatastructuresGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrAdamProductDatastructuresGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrAdamProductDatastructuresStructureGet = scenario("mdrAdamProductDatastructuresStructureGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrAdamProductDatastructuresStructureGet")
        .httpRequest("GET","/mdr/adam/${product}/datastructures/${structure}")
)

    // Run scnmdrAdamProductDatastructuresStructureGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrAdamProductDatastructuresStructureGet.inject(
        rampUsersPerSec(1) to(mdrAdamProductDatastructuresStructureGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrAdamProductDatastructuresStructureGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrAdamProductDatastructuresStructureGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrAdamProductDatastructuresStructureVariablesGet = scenario("mdrAdamProductDatastructuresStructureVariablesGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrAdamProductDatastructuresStructureVariablesGet")
        .httpRequest("GET","/mdr/adam/${product}/datastructures/${structure}/variables")
)

    // Run scnmdrAdamProductDatastructuresStructureVariablesGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrAdamProductDatastructuresStructureVariablesGet.inject(
        rampUsersPerSec(1) to(mdrAdamProductDatastructuresStructureVariablesGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrAdamProductDatastructuresStructureVariablesGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrAdamProductDatastructuresStructureVariablesGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrAdamProductDatastructuresStructureVariablesVarGet = scenario("mdrAdamProductDatastructuresStructureVariablesVarGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrAdamProductDatastructuresStructureVariablesVarGet")
        .httpRequest("GET","/mdr/adam/${product}/datastructures/${structure}/variables/${var}")
)

    // Run scnmdrAdamProductDatastructuresStructureVariablesVarGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrAdamProductDatastructuresStructureVariablesVarGet.inject(
        rampUsersPerSec(1) to(mdrAdamProductDatastructuresStructureVariablesVarGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrAdamProductDatastructuresStructureVariablesVarGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrAdamProductDatastructuresStructureVariablesVarGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrAdamProductDatastructuresStructureVarsetsGet = scenario("mdrAdamProductDatastructuresStructureVarsetsGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrAdamProductDatastructuresStructureVarsetsGet")
        .httpRequest("GET","/mdr/adam/${product}/datastructures/${structure}/varsets")
)

    // Run scnmdrAdamProductDatastructuresStructureVarsetsGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrAdamProductDatastructuresStructureVarsetsGet.inject(
        rampUsersPerSec(1) to(mdrAdamProductDatastructuresStructureVarsetsGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrAdamProductDatastructuresStructureVarsetsGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrAdamProductDatastructuresStructureVarsetsGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrAdamProductDatastructuresStructureVarsetsVarsetGet = scenario("mdrAdamProductDatastructuresStructureVarsetsVarsetGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrAdamProductDatastructuresStructureVarsetsVarsetGet")
        .httpRequest("GET","/mdr/adam/${product}/datastructures/${structure}/varsets/${varset}")
)

    // Run scnmdrAdamProductDatastructuresStructureVarsetsVarsetGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrAdamProductDatastructuresStructureVarsetsVarsetGet.inject(
        rampUsersPerSec(1) to(mdrAdamProductDatastructuresStructureVarsetsVarsetGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrAdamProductDatastructuresStructureVarsetsVarsetGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrAdamProductDatastructuresStructureVarsetsVarsetGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrAdamProductGet = scenario("mdrAdamProductGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrAdamProductGet")
        .httpRequest("GET","/mdr/adam/${product}")
)

    // Run scnmdrAdamProductGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrAdamProductGet.inject(
        rampUsersPerSec(1) to(mdrAdamProductGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrAdamProductGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrAdamProductGetPerSecond) to(1) during(rampDownSeconds)
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
