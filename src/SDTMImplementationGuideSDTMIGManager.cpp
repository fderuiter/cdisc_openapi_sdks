#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "SDTMImplementationGuideSDTMIGManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


SDTMImplementationGuideSDTMIGManager::SDTMImplementationGuideSDTMIGManager()
{

}

SDTMImplementationGuideSDTMIGManager::~SDTMImplementationGuideSDTMIGManager()
{

}

static gboolean __SDTMImplementationGuideSDTMIGManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __SDTMImplementationGuideSDTMIGManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__SDTMImplementationGuideSDTMIGManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool mdrRootSdtmigDatasetsDatasetVariablesVarGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(RootSdtmigDatasetVariable, Error, void* )
	= reinterpret_cast<void(*)(RootSdtmigDatasetVariable, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	RootSdtmigDatasetVariable out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("RootSdtmigDatasetVariable")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "RootSdtmigDatasetVariable", "RootSdtmigDatasetVariable");
			json_node_free(pJson);

			if ("RootSdtmigDatasetVariable" == "std::string") {
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

static bool mdrRootSdtmigDatasetsDatasetVariablesVarGetHelper(char * accessToken,
	std::string dataset, std::string var, 
	void(* handler)(RootSdtmigDatasetVariable, Error, void* )
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

	string url("/mdr/root/sdtmig/datasets/{dataset}/variables/{var}");
	int pos;

	string s_dataset("{");
	s_dataset.append("dataset");
	s_dataset.append("}");
	pos = url.find(s_dataset);
	url.erase(pos, s_dataset.length());
	url.insert(pos, stringify(&dataset, "std::string"));
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
		NetClient::easycurl(SDTMImplementationGuideSDTMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrRootSdtmigDatasetsDatasetVariablesVarGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SDTMImplementationGuideSDTMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrRootSdtmigDatasetsDatasetVariablesVarGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SDTMImplementationGuideSDTMIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SDTMImplementationGuideSDTMIGManager::mdrRootSdtmigDatasetsDatasetVariablesVarGetAsync(char * accessToken,
	std::string dataset, std::string var, 
	void(* handler)(RootSdtmigDatasetVariable, Error, void* )
	, void* userData)
{
	return mdrRootSdtmigDatasetsDatasetVariablesVarGetHelper(accessToken,
	dataset, var, 
	handler, userData, true);
}

bool SDTMImplementationGuideSDTMIGManager::mdrRootSdtmigDatasetsDatasetVariablesVarGetSync(char * accessToken,
	std::string dataset, std::string var, 
	void(* handler)(RootSdtmigDatasetVariable, Error, void* )
	, void* userData)
{
	return mdrRootSdtmigDatasetsDatasetVariablesVarGetHelper(accessToken,
	dataset, var, 
	handler, userData, false);
}

static bool mdrSdtmigVersionClassesClassDatasetsGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SdtmigClassDatasets, Error, void* )
	= reinterpret_cast<void(*)(SdtmigClassDatasets, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SdtmigClassDatasets out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SdtmigClassDatasets")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SdtmigClassDatasets", "SdtmigClassDatasets");
			json_node_free(pJson);

			if ("SdtmigClassDatasets" == "std::string") {
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

static bool mdrSdtmigVersionClassesClassDatasetsGetHelper(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SdtmigClassDatasets, Error, void* )
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

	string url("/mdr/sdtmig/{version}/classes/{class}/datasets");
	int pos;

	string s_version("{");
	s_version.append("version");
	s_version.append("}");
	pos = url.find(s_version);
	url.erase(pos, s_version.length());
	url.insert(pos, stringify(&version, "std::string"));
	string s_r_class("{");
	s_r_class.append("class");
	s_r_class.append("}");
	pos = url.find(s_r_class);
	url.erase(pos, s_r_class.length());
	url.insert(pos, stringify(&r_class, "std::string"));

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
		NetClient::easycurl(SDTMImplementationGuideSDTMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrSdtmigVersionClassesClassDatasetsGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SDTMImplementationGuideSDTMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrSdtmigVersionClassesClassDatasetsGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SDTMImplementationGuideSDTMIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SDTMImplementationGuideSDTMIGManager::mdrSdtmigVersionClassesClassDatasetsGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SdtmigClassDatasets, Error, void* )
	, void* userData)
{
	return mdrSdtmigVersionClassesClassDatasetsGetHelper(accessToken,
	version, r_class, 
	handler, userData, true);
}

bool SDTMImplementationGuideSDTMIGManager::mdrSdtmigVersionClassesClassDatasetsGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SdtmigClassDatasets, Error, void* )
	, void* userData)
{
	return mdrSdtmigVersionClassesClassDatasetsGetHelper(accessToken,
	version, r_class, 
	handler, userData, false);
}

static bool mdrSdtmigVersionClassesClassGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SdtmigClass, Error, void* )
	= reinterpret_cast<void(*)(SdtmigClass, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SdtmigClass out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SdtmigClass")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SdtmigClass", "SdtmigClass");
			json_node_free(pJson);

			if ("SdtmigClass" == "std::string") {
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

static bool mdrSdtmigVersionClassesClassGetHelper(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SdtmigClass, Error, void* )
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

	string url("/mdr/sdtmig/{version}/classes/{class}");
	int pos;

	string s_version("{");
	s_version.append("version");
	s_version.append("}");
	pos = url.find(s_version);
	url.erase(pos, s_version.length());
	url.insert(pos, stringify(&version, "std::string"));
	string s_r_class("{");
	s_r_class.append("class");
	s_r_class.append("}");
	pos = url.find(s_r_class);
	url.erase(pos, s_r_class.length());
	url.insert(pos, stringify(&r_class, "std::string"));

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
		NetClient::easycurl(SDTMImplementationGuideSDTMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrSdtmigVersionClassesClassGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SDTMImplementationGuideSDTMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrSdtmigVersionClassesClassGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SDTMImplementationGuideSDTMIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SDTMImplementationGuideSDTMIGManager::mdrSdtmigVersionClassesClassGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SdtmigClass, Error, void* )
	, void* userData)
{
	return mdrSdtmigVersionClassesClassGetHelper(accessToken,
	version, r_class, 
	handler, userData, true);
}

bool SDTMImplementationGuideSDTMIGManager::mdrSdtmigVersionClassesClassGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SdtmigClass, Error, void* )
	, void* userData)
{
	return mdrSdtmigVersionClassesClassGetHelper(accessToken,
	version, r_class, 
	handler, userData, false);
}

static bool mdrSdtmigVersionClassesGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SdtmigClasses, Error, void* )
	= reinterpret_cast<void(*)(SdtmigClasses, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SdtmigClasses out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SdtmigClasses")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SdtmigClasses", "SdtmigClasses");
			json_node_free(pJson);

			if ("SdtmigClasses" == "std::string") {
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

static bool mdrSdtmigVersionClassesGetHelper(char * accessToken,
	std::string version, 
	void(* handler)(SdtmigClasses, Error, void* )
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

	string url("/mdr/sdtmig/{version}/classes");
	int pos;

	string s_version("{");
	s_version.append("version");
	s_version.append("}");
	pos = url.find(s_version);
	url.erase(pos, s_version.length());
	url.insert(pos, stringify(&version, "std::string"));

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
		NetClient::easycurl(SDTMImplementationGuideSDTMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrSdtmigVersionClassesGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SDTMImplementationGuideSDTMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrSdtmigVersionClassesGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SDTMImplementationGuideSDTMIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SDTMImplementationGuideSDTMIGManager::mdrSdtmigVersionClassesGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(SdtmigClasses, Error, void* )
	, void* userData)
{
	return mdrSdtmigVersionClassesGetHelper(accessToken,
	version, 
	handler, userData, true);
}

bool SDTMImplementationGuideSDTMIGManager::mdrSdtmigVersionClassesGetSync(char * accessToken,
	std::string version, 
	void(* handler)(SdtmigClasses, Error, void* )
	, void* userData)
{
	return mdrSdtmigVersionClassesGetHelper(accessToken,
	version, 
	handler, userData, false);
}

static bool mdrSdtmigVersionDatasetsDatasetGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SdtmigDataset, Error, void* )
	= reinterpret_cast<void(*)(SdtmigDataset, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SdtmigDataset out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SdtmigDataset")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SdtmigDataset", "SdtmigDataset");
			json_node_free(pJson);

			if ("SdtmigDataset" == "std::string") {
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

static bool mdrSdtmigVersionDatasetsDatasetGetHelper(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SdtmigDataset, Error, void* )
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

	string url("/mdr/sdtmig/{version}/datasets/{dataset}");
	int pos;

	string s_version("{");
	s_version.append("version");
	s_version.append("}");
	pos = url.find(s_version);
	url.erase(pos, s_version.length());
	url.insert(pos, stringify(&version, "std::string"));
	string s_dataset("{");
	s_dataset.append("dataset");
	s_dataset.append("}");
	pos = url.find(s_dataset);
	url.erase(pos, s_dataset.length());
	url.insert(pos, stringify(&dataset, "std::string"));

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
		NetClient::easycurl(SDTMImplementationGuideSDTMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrSdtmigVersionDatasetsDatasetGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SDTMImplementationGuideSDTMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrSdtmigVersionDatasetsDatasetGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SDTMImplementationGuideSDTMIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SDTMImplementationGuideSDTMIGManager::mdrSdtmigVersionDatasetsDatasetGetAsync(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SdtmigDataset, Error, void* )
	, void* userData)
{
	return mdrSdtmigVersionDatasetsDatasetGetHelper(accessToken,
	version, dataset, 
	handler, userData, true);
}

bool SDTMImplementationGuideSDTMIGManager::mdrSdtmigVersionDatasetsDatasetGetSync(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SdtmigDataset, Error, void* )
	, void* userData)
{
	return mdrSdtmigVersionDatasetsDatasetGetHelper(accessToken,
	version, dataset, 
	handler, userData, false);
}

static bool mdrSdtmigVersionDatasetsDatasetVariablesGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SdtmigDatasetVariables, Error, void* )
	= reinterpret_cast<void(*)(SdtmigDatasetVariables, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SdtmigDatasetVariables out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SdtmigDatasetVariables")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SdtmigDatasetVariables", "SdtmigDatasetVariables");
			json_node_free(pJson);

			if ("SdtmigDatasetVariables" == "std::string") {
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

static bool mdrSdtmigVersionDatasetsDatasetVariablesGetHelper(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SdtmigDatasetVariables, Error, void* )
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

	string url("/mdr/sdtmig/{version}/datasets/{dataset}/variables");
	int pos;

	string s_version("{");
	s_version.append("version");
	s_version.append("}");
	pos = url.find(s_version);
	url.erase(pos, s_version.length());
	url.insert(pos, stringify(&version, "std::string"));
	string s_dataset("{");
	s_dataset.append("dataset");
	s_dataset.append("}");
	pos = url.find(s_dataset);
	url.erase(pos, s_dataset.length());
	url.insert(pos, stringify(&dataset, "std::string"));

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
		NetClient::easycurl(SDTMImplementationGuideSDTMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrSdtmigVersionDatasetsDatasetVariablesGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SDTMImplementationGuideSDTMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrSdtmigVersionDatasetsDatasetVariablesGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SDTMImplementationGuideSDTMIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SDTMImplementationGuideSDTMIGManager::mdrSdtmigVersionDatasetsDatasetVariablesGetAsync(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SdtmigDatasetVariables, Error, void* )
	, void* userData)
{
	return mdrSdtmigVersionDatasetsDatasetVariablesGetHelper(accessToken,
	version, dataset, 
	handler, userData, true);
}

bool SDTMImplementationGuideSDTMIGManager::mdrSdtmigVersionDatasetsDatasetVariablesGetSync(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SdtmigDatasetVariables, Error, void* )
	, void* userData)
{
	return mdrSdtmigVersionDatasetsDatasetVariablesGetHelper(accessToken,
	version, dataset, 
	handler, userData, false);
}

static bool mdrSdtmigVersionDatasetsDatasetVariablesVarGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SdtmigDatasetVariable, Error, void* )
	= reinterpret_cast<void(*)(SdtmigDatasetVariable, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SdtmigDatasetVariable out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SdtmigDatasetVariable")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SdtmigDatasetVariable", "SdtmigDatasetVariable");
			json_node_free(pJson);

			if ("SdtmigDatasetVariable" == "std::string") {
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

static bool mdrSdtmigVersionDatasetsDatasetVariablesVarGetHelper(char * accessToken,
	std::string version, std::string dataset, std::string var, 
	void(* handler)(SdtmigDatasetVariable, Error, void* )
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

	string url("/mdr/sdtmig/{version}/datasets/{dataset}/variables/{var}");
	int pos;

	string s_version("{");
	s_version.append("version");
	s_version.append("}");
	pos = url.find(s_version);
	url.erase(pos, s_version.length());
	url.insert(pos, stringify(&version, "std::string"));
	string s_dataset("{");
	s_dataset.append("dataset");
	s_dataset.append("}");
	pos = url.find(s_dataset);
	url.erase(pos, s_dataset.length());
	url.insert(pos, stringify(&dataset, "std::string"));
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
		NetClient::easycurl(SDTMImplementationGuideSDTMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrSdtmigVersionDatasetsDatasetVariablesVarGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SDTMImplementationGuideSDTMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrSdtmigVersionDatasetsDatasetVariablesVarGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SDTMImplementationGuideSDTMIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SDTMImplementationGuideSDTMIGManager::mdrSdtmigVersionDatasetsDatasetVariablesVarGetAsync(char * accessToken,
	std::string version, std::string dataset, std::string var, 
	void(* handler)(SdtmigDatasetVariable, Error, void* )
	, void* userData)
{
	return mdrSdtmigVersionDatasetsDatasetVariablesVarGetHelper(accessToken,
	version, dataset, var, 
	handler, userData, true);
}

bool SDTMImplementationGuideSDTMIGManager::mdrSdtmigVersionDatasetsDatasetVariablesVarGetSync(char * accessToken,
	std::string version, std::string dataset, std::string var, 
	void(* handler)(SdtmigDatasetVariable, Error, void* )
	, void* userData)
{
	return mdrSdtmigVersionDatasetsDatasetVariablesVarGetHelper(accessToken,
	version, dataset, var, 
	handler, userData, false);
}

static bool mdrSdtmigVersionDatasetsGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SdtmigDatasets, Error, void* )
	= reinterpret_cast<void(*)(SdtmigDatasets, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SdtmigDatasets out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SdtmigDatasets")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SdtmigDatasets", "SdtmigDatasets");
			json_node_free(pJson);

			if ("SdtmigDatasets" == "std::string") {
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

static bool mdrSdtmigVersionDatasetsGetHelper(char * accessToken,
	std::string version, 
	void(* handler)(SdtmigDatasets, Error, void* )
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

	string url("/mdr/sdtmig/{version}/datasets");
	int pos;

	string s_version("{");
	s_version.append("version");
	s_version.append("}");
	pos = url.find(s_version);
	url.erase(pos, s_version.length());
	url.insert(pos, stringify(&version, "std::string"));

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
		NetClient::easycurl(SDTMImplementationGuideSDTMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrSdtmigVersionDatasetsGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SDTMImplementationGuideSDTMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrSdtmigVersionDatasetsGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SDTMImplementationGuideSDTMIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SDTMImplementationGuideSDTMIGManager::mdrSdtmigVersionDatasetsGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(SdtmigDatasets, Error, void* )
	, void* userData)
{
	return mdrSdtmigVersionDatasetsGetHelper(accessToken,
	version, 
	handler, userData, true);
}

bool SDTMImplementationGuideSDTMIGManager::mdrSdtmigVersionDatasetsGetSync(char * accessToken,
	std::string version, 
	void(* handler)(SdtmigDatasets, Error, void* )
	, void* userData)
{
	return mdrSdtmigVersionDatasetsGetHelper(accessToken,
	version, 
	handler, userData, false);
}

static bool mdrSdtmigVersionGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SdtmigProduct, Error, void* )
	= reinterpret_cast<void(*)(SdtmigProduct, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SdtmigProduct out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SdtmigProduct")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SdtmigProduct", "SdtmigProduct");
			json_node_free(pJson);

			if ("SdtmigProduct" == "std::string") {
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

static bool mdrSdtmigVersionGetHelper(char * accessToken,
	std::string version, 
	void(* handler)(SdtmigProduct, Error, void* )
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

	string url("/mdr/sdtmig/{version}");
	int pos;

	string s_version("{");
	s_version.append("version");
	s_version.append("}");
	pos = url.find(s_version);
	url.erase(pos, s_version.length());
	url.insert(pos, stringify(&version, "std::string"));

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
		NetClient::easycurl(SDTMImplementationGuideSDTMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrSdtmigVersionGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SDTMImplementationGuideSDTMIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrSdtmigVersionGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SDTMImplementationGuideSDTMIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SDTMImplementationGuideSDTMIGManager::mdrSdtmigVersionGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(SdtmigProduct, Error, void* )
	, void* userData)
{
	return mdrSdtmigVersionGetHelper(accessToken,
	version, 
	handler, userData, true);
}

bool SDTMImplementationGuideSDTMIGManager::mdrSdtmigVersionGetSync(char * accessToken,
	std::string version, 
	void(* handler)(SdtmigProduct, Error, void* )
	, void* userData)
{
	return mdrSdtmigVersionGetHelper(accessToken,
	version, 
	handler, userData, false);
}

