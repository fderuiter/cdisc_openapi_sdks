#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager()
{

}

AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::~AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager()
{

}

static gboolean __AnalysisDataModelAndImplementationGuideADaMAndADaMIGManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __AnalysisDataModelAndImplementationGuideADaMAndADaMIGManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__AnalysisDataModelAndImplementationGuideADaMAndADaMIGManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool mdrAdamProductDatastructuresGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(AdamProductDatastructures, Error, void* )
	= reinterpret_cast<void(*)(AdamProductDatastructures, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	AdamProductDatastructures out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("AdamProductDatastructures")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "AdamProductDatastructures", "AdamProductDatastructures");
			json_node_free(pJson);

			if ("AdamProductDatastructures" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool mdrAdamProductDatastructuresGetHelper(char * accessToken,
	std::string product, 
	void(* handler)(AdamProductDatastructures, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/mdr/adam/{product}/datastructures");
	int pos;

	string s_product("{");
	s_product.append("product");
	s_product.append("}");
	pos = url.find(s_product);
	url.erase(pos, s_product.length());
	url.insert(pos, stringify(&product, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrAdamProductDatastructuresGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrAdamProductDatastructuresGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __AnalysisDataModelAndImplementationGuideADaMAndADaMIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::mdrAdamProductDatastructuresGetAsync(char * accessToken,
	std::string product, 
	void(* handler)(AdamProductDatastructures, Error, void* )
	, void* userData)
{
	return mdrAdamProductDatastructuresGetHelper(accessToken,
	product, 
	handler, userData, true);
}

bool AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::mdrAdamProductDatastructuresGetSync(char * accessToken,
	std::string product, 
	void(* handler)(AdamProductDatastructures, Error, void* )
	, void* userData)
{
	return mdrAdamProductDatastructuresGetHelper(accessToken,
	product, 
	handler, userData, false);
}

static bool mdrAdamProductDatastructuresStructureGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(AdamDatastructure, Error, void* )
	= reinterpret_cast<void(*)(AdamDatastructure, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	AdamDatastructure out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("AdamDatastructure")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "AdamDatastructure", "AdamDatastructure");
			json_node_free(pJson);

			if ("AdamDatastructure" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool mdrAdamProductDatastructuresStructureGetHelper(char * accessToken,
	std::string product, std::string structure, 
	void(* handler)(AdamDatastructure, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/mdr/adam/{product}/datastructures/{structure}");
	int pos;

	string s_product("{");
	s_product.append("product");
	s_product.append("}");
	pos = url.find(s_product);
	url.erase(pos, s_product.length());
	url.insert(pos, stringify(&product, "std::string"));
	string s_structure("{");
	s_structure.append("structure");
	s_structure.append("}");
	pos = url.find(s_structure);
	url.erase(pos, s_structure.length());
	url.insert(pos, stringify(&structure, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrAdamProductDatastructuresStructureGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrAdamProductDatastructuresStructureGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __AnalysisDataModelAndImplementationGuideADaMAndADaMIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::mdrAdamProductDatastructuresStructureGetAsync(char * accessToken,
	std::string product, std::string structure, 
	void(* handler)(AdamDatastructure, Error, void* )
	, void* userData)
{
	return mdrAdamProductDatastructuresStructureGetHelper(accessToken,
	product, structure, 
	handler, userData, true);
}

bool AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::mdrAdamProductDatastructuresStructureGetSync(char * accessToken,
	std::string product, std::string structure, 
	void(* handler)(AdamDatastructure, Error, void* )
	, void* userData)
{
	return mdrAdamProductDatastructuresStructureGetHelper(accessToken,
	product, structure, 
	handler, userData, false);
}

static bool mdrAdamProductDatastructuresStructureVariablesGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(AdamDatastructureVariables, Error, void* )
	= reinterpret_cast<void(*)(AdamDatastructureVariables, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	AdamDatastructureVariables out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("AdamDatastructureVariables")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "AdamDatastructureVariables", "AdamDatastructureVariables");
			json_node_free(pJson);

			if ("AdamDatastructureVariables" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool mdrAdamProductDatastructuresStructureVariablesGetHelper(char * accessToken,
	std::string product, std::string structure, 
	void(* handler)(AdamDatastructureVariables, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/mdr/adam/{product}/datastructures/{structure}/variables");
	int pos;

	string s_product("{");
	s_product.append("product");
	s_product.append("}");
	pos = url.find(s_product);
	url.erase(pos, s_product.length());
	url.insert(pos, stringify(&product, "std::string"));
	string s_structure("{");
	s_structure.append("structure");
	s_structure.append("}");
	pos = url.find(s_structure);
	url.erase(pos, s_structure.length());
	url.insert(pos, stringify(&structure, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrAdamProductDatastructuresStructureVariablesGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrAdamProductDatastructuresStructureVariablesGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __AnalysisDataModelAndImplementationGuideADaMAndADaMIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::mdrAdamProductDatastructuresStructureVariablesGetAsync(char * accessToken,
	std::string product, std::string structure, 
	void(* handler)(AdamDatastructureVariables, Error, void* )
	, void* userData)
{
	return mdrAdamProductDatastructuresStructureVariablesGetHelper(accessToken,
	product, structure, 
	handler, userData, true);
}

bool AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::mdrAdamProductDatastructuresStructureVariablesGetSync(char * accessToken,
	std::string product, std::string structure, 
	void(* handler)(AdamDatastructureVariables, Error, void* )
	, void* userData)
{
	return mdrAdamProductDatastructuresStructureVariablesGetHelper(accessToken,
	product, structure, 
	handler, userData, false);
}

static bool mdrAdamProductDatastructuresStructureVariablesVarGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(AdamVariable, Error, void* )
	= reinterpret_cast<void(*)(AdamVariable, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	AdamVariable out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("AdamVariable")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "AdamVariable", "AdamVariable");
			json_node_free(pJson);

			if ("AdamVariable" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool mdrAdamProductDatastructuresStructureVariablesVarGetHelper(char * accessToken,
	std::string product, std::string structure, std::string var, 
	void(* handler)(AdamVariable, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/mdr/adam/{product}/datastructures/{structure}/variables/{var}");
	int pos;

	string s_product("{");
	s_product.append("product");
	s_product.append("}");
	pos = url.find(s_product);
	url.erase(pos, s_product.length());
	url.insert(pos, stringify(&product, "std::string"));
	string s_structure("{");
	s_structure.append("structure");
	s_structure.append("}");
	pos = url.find(s_structure);
	url.erase(pos, s_structure.length());
	url.insert(pos, stringify(&structure, "std::string"));
	string s_var("{");
	s_var.append("var");
	s_var.append("}");
	pos = url.find(s_var);
	url.erase(pos, s_var.length());
	url.insert(pos, stringify(&var, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrAdamProductDatastructuresStructureVariablesVarGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrAdamProductDatastructuresStructureVariablesVarGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __AnalysisDataModelAndImplementationGuideADaMAndADaMIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::mdrAdamProductDatastructuresStructureVariablesVarGetAsync(char * accessToken,
	std::string product, std::string structure, std::string var, 
	void(* handler)(AdamVariable, Error, void* )
	, void* userData)
{
	return mdrAdamProductDatastructuresStructureVariablesVarGetHelper(accessToken,
	product, structure, var, 
	handler, userData, true);
}

bool AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::mdrAdamProductDatastructuresStructureVariablesVarGetSync(char * accessToken,
	std::string product, std::string structure, std::string var, 
	void(* handler)(AdamVariable, Error, void* )
	, void* userData)
{
	return mdrAdamProductDatastructuresStructureVariablesVarGetHelper(accessToken,
	product, structure, var, 
	handler, userData, false);
}

static bool mdrAdamProductDatastructuresStructureVarsetsGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(AdamDatastructureVarsets, Error, void* )
	= reinterpret_cast<void(*)(AdamDatastructureVarsets, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	AdamDatastructureVarsets out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("AdamDatastructureVarsets")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "AdamDatastructureVarsets", "AdamDatastructureVarsets");
			json_node_free(pJson);

			if ("AdamDatastructureVarsets" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool mdrAdamProductDatastructuresStructureVarsetsGetHelper(char * accessToken,
	std::string product, std::string structure, 
	void(* handler)(AdamDatastructureVarsets, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/mdr/adam/{product}/datastructures/{structure}/varsets");
	int pos;

	string s_product("{");
	s_product.append("product");
	s_product.append("}");
	pos = url.find(s_product);
	url.erase(pos, s_product.length());
	url.insert(pos, stringify(&product, "std::string"));
	string s_structure("{");
	s_structure.append("structure");
	s_structure.append("}");
	pos = url.find(s_structure);
	url.erase(pos, s_structure.length());
	url.insert(pos, stringify(&structure, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrAdamProductDatastructuresStructureVarsetsGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrAdamProductDatastructuresStructureVarsetsGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __AnalysisDataModelAndImplementationGuideADaMAndADaMIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::mdrAdamProductDatastructuresStructureVarsetsGetAsync(char * accessToken,
	std::string product, std::string structure, 
	void(* handler)(AdamDatastructureVarsets, Error, void* )
	, void* userData)
{
	return mdrAdamProductDatastructuresStructureVarsetsGetHelper(accessToken,
	product, structure, 
	handler, userData, true);
}

bool AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::mdrAdamProductDatastructuresStructureVarsetsGetSync(char * accessToken,
	std::string product, std::string structure, 
	void(* handler)(AdamDatastructureVarsets, Error, void* )
	, void* userData)
{
	return mdrAdamProductDatastructuresStructureVarsetsGetHelper(accessToken,
	product, structure, 
	handler, userData, false);
}

static bool mdrAdamProductDatastructuresStructureVarsetsVarsetGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(AdamVarset, Error, void* )
	= reinterpret_cast<void(*)(AdamVarset, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	AdamVarset out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("AdamVarset")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "AdamVarset", "AdamVarset");
			json_node_free(pJson);

			if ("AdamVarset" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool mdrAdamProductDatastructuresStructureVarsetsVarsetGetHelper(char * accessToken,
	std::string product, std::string structure, std::string varset, 
	void(* handler)(AdamVarset, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/mdr/adam/{product}/datastructures/{structure}/varsets/{varset}");
	int pos;

	string s_product("{");
	s_product.append("product");
	s_product.append("}");
	pos = url.find(s_product);
	url.erase(pos, s_product.length());
	url.insert(pos, stringify(&product, "std::string"));
	string s_structure("{");
	s_structure.append("structure");
	s_structure.append("}");
	pos = url.find(s_structure);
	url.erase(pos, s_structure.length());
	url.insert(pos, stringify(&structure, "std::string"));
	string s_varset("{");
	s_varset.append("varset");
	s_varset.append("}");
	pos = url.find(s_varset);
	url.erase(pos, s_varset.length());
	url.insert(pos, stringify(&varset, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrAdamProductDatastructuresStructureVarsetsVarsetGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrAdamProductDatastructuresStructureVarsetsVarsetGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __AnalysisDataModelAndImplementationGuideADaMAndADaMIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::mdrAdamProductDatastructuresStructureVarsetsVarsetGetAsync(char * accessToken,
	std::string product, std::string structure, std::string varset, 
	void(* handler)(AdamVarset, Error, void* )
	, void* userData)
{
	return mdrAdamProductDatastructuresStructureVarsetsVarsetGetHelper(accessToken,
	product, structure, varset, 
	handler, userData, true);
}

bool AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::mdrAdamProductDatastructuresStructureVarsetsVarsetGetSync(char * accessToken,
	std::string product, std::string structure, std::string varset, 
	void(* handler)(AdamVarset, Error, void* )
	, void* userData)
{
	return mdrAdamProductDatastructuresStructureVarsetsVarsetGetHelper(accessToken,
	product, structure, varset, 
	handler, userData, false);
}

static bool mdrAdamProductGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(AdamProduct, Error, void* )
	= reinterpret_cast<void(*)(AdamProduct, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	AdamProduct out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("AdamProduct")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "AdamProduct", "AdamProduct");
			json_node_free(pJson);

			if ("AdamProduct" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool mdrAdamProductGetHelper(char * accessToken,
	std::string product, 
	void(* handler)(AdamProduct, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/mdr/adam/{product}");
	int pos;

	string s_product("{");
	s_product.append("product");
	s_product.append("}");
	pos = url.find(s_product);
	url.erase(pos, s_product.length());
	url.insert(pos, stringify(&product, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrAdamProductGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrAdamProductGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __AnalysisDataModelAndImplementationGuideADaMAndADaMIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::mdrAdamProductGetAsync(char * accessToken,
	std::string product, 
	void(* handler)(AdamProduct, Error, void* )
	, void* userData)
{
	return mdrAdamProductGetHelper(accessToken,
	product, 
	handler, userData, true);
}

bool AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager::mdrAdamProductGetSync(char * accessToken,
	std::string product, 
	void(* handler)(AdamProduct, Error, void* )
	, void* userData)
{
	return mdrAdamProductGetHelper(accessToken,
	product, 
	handler, userData, false);
}

