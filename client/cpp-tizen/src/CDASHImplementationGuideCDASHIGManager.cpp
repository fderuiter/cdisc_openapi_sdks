#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "CDASHImplementationGuideCDASHIGManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


CDASHImplementationGuideCDASHIGManager::CDASHImplementationGuideCDASHIGManager()
{

}

CDASHImplementationGuideCDASHIGManager::~CDASHImplementationGuideCDASHIGManager()
{

}

static gboolean __CDASHImplementationGuideCDASHIGManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __CDASHImplementationGuideCDASHIGManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__CDASHImplementationGuideCDASHIGManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool mdrCdashigVersionClassesClassDomainsGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashigClassDomains, Error, void* )
	= reinterpret_cast<void(*)(CdashigClassDomains, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashigClassDomains out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashigClassDomains")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashigClassDomains", "CdashigClassDomains");
			json_node_free(pJson);

			if ("CdashigClassDomains" == "std::string") {
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

static bool mdrCdashigVersionClassesClassDomainsGetHelper(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashigClassDomains, Error, void* )
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

	string url("/mdr/cdashig/{version}/classes/{class}/domains");
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
		NetClient::easycurl(CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashigVersionClassesClassDomainsGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashigVersionClassesClassDomainsGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __CDASHImplementationGuideCDASHIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionClassesClassDomainsGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashigClassDomains, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionClassesClassDomainsGetHelper(accessToken,
	version, r_class, 
	handler, userData, true);
}

bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionClassesClassDomainsGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashigClassDomains, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionClassesClassDomainsGetHelper(accessToken,
	version, r_class, 
	handler, userData, false);
}

static bool mdrCdashigVersionClassesClassGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashigClass, Error, void* )
	= reinterpret_cast<void(*)(CdashigClass, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashigClass out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashigClass")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashigClass", "CdashigClass");
			json_node_free(pJson);

			if ("CdashigClass" == "std::string") {
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

static bool mdrCdashigVersionClassesClassGetHelper(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashigClass, Error, void* )
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

	string url("/mdr/cdashig/{version}/classes/{class}");
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
		NetClient::easycurl(CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashigVersionClassesClassGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashigVersionClassesClassGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __CDASHImplementationGuideCDASHIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionClassesClassGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashigClass, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionClassesClassGetHelper(accessToken,
	version, r_class, 
	handler, userData, true);
}

bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionClassesClassGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashigClass, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionClassesClassGetHelper(accessToken,
	version, r_class, 
	handler, userData, false);
}

static bool mdrCdashigVersionClassesClassScenariosGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashigClassScenarios, Error, void* )
	= reinterpret_cast<void(*)(CdashigClassScenarios, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashigClassScenarios out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashigClassScenarios")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashigClassScenarios", "CdashigClassScenarios");
			json_node_free(pJson);

			if ("CdashigClassScenarios" == "std::string") {
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

static bool mdrCdashigVersionClassesClassScenariosGetHelper(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashigClassScenarios, Error, void* )
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

	string url("/mdr/cdashig/{version}/classes/{class}/scenarios");
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
		NetClient::easycurl(CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashigVersionClassesClassScenariosGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashigVersionClassesClassScenariosGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __CDASHImplementationGuideCDASHIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionClassesClassScenariosGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashigClassScenarios, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionClassesClassScenariosGetHelper(accessToken,
	version, r_class, 
	handler, userData, true);
}

bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionClassesClassScenariosGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashigClassScenarios, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionClassesClassScenariosGetHelper(accessToken,
	version, r_class, 
	handler, userData, false);
}

static bool mdrCdashigVersionClassesGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashigProductClasses, Error, void* )
	= reinterpret_cast<void(*)(CdashigProductClasses, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashigProductClasses out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashigProductClasses")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashigProductClasses", "CdashigProductClasses");
			json_node_free(pJson);

			if ("CdashigProductClasses" == "std::string") {
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

static bool mdrCdashigVersionClassesGetHelper(char * accessToken,
	std::string version, 
	void(* handler)(CdashigProductClasses, Error, void* )
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

	string url("/mdr/cdashig/{version}/classes");
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
		NetClient::easycurl(CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashigVersionClassesGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashigVersionClassesGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __CDASHImplementationGuideCDASHIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionClassesGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(CdashigProductClasses, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionClassesGetHelper(accessToken,
	version, 
	handler, userData, true);
}

bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionClassesGetSync(char * accessToken,
	std::string version, 
	void(* handler)(CdashigProductClasses, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionClassesGetHelper(accessToken,
	version, 
	handler, userData, false);
}

static bool mdrCdashigVersionDomainsDomainFieldsFieldGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashigDomainField, Error, void* )
	= reinterpret_cast<void(*)(CdashigDomainField, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashigDomainField out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashigDomainField")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashigDomainField", "CdashigDomainField");
			json_node_free(pJson);

			if ("CdashigDomainField" == "std::string") {
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

static bool mdrCdashigVersionDomainsDomainFieldsFieldGetHelper(char * accessToken,
	std::string version, std::string domain, std::string field, 
	void(* handler)(CdashigDomainField, Error, void* )
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

	string url("/mdr/cdashig/{version}/domains/{domain}/fields/{field}");
	int pos;

	string s_version("{");
	s_version.append("version");
	s_version.append("}");
	pos = url.find(s_version);
	url.erase(pos, s_version.length());
	url.insert(pos, stringify(&version, "std::string"));
	string s_domain("{");
	s_domain.append("domain");
	s_domain.append("}");
	pos = url.find(s_domain);
	url.erase(pos, s_domain.length());
	url.insert(pos, stringify(&domain, "std::string"));
	string s_field("{");
	s_field.append("field");
	s_field.append("}");
	pos = url.find(s_field);
	url.erase(pos, s_field.length());
	url.insert(pos, stringify(&field, "std::string"));

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
		NetClient::easycurl(CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashigVersionDomainsDomainFieldsFieldGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashigVersionDomainsDomainFieldsFieldGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __CDASHImplementationGuideCDASHIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionDomainsDomainFieldsFieldGetAsync(char * accessToken,
	std::string version, std::string domain, std::string field, 
	void(* handler)(CdashigDomainField, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionDomainsDomainFieldsFieldGetHelper(accessToken,
	version, domain, field, 
	handler, userData, true);
}

bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionDomainsDomainFieldsFieldGetSync(char * accessToken,
	std::string version, std::string domain, std::string field, 
	void(* handler)(CdashigDomainField, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionDomainsDomainFieldsFieldGetHelper(accessToken,
	version, domain, field, 
	handler, userData, false);
}

static bool mdrCdashigVersionDomainsDomainFieldsGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashigDomainFields, Error, void* )
	= reinterpret_cast<void(*)(CdashigDomainFields, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashigDomainFields out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashigDomainFields")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashigDomainFields", "CdashigDomainFields");
			json_node_free(pJson);

			if ("CdashigDomainFields" == "std::string") {
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

static bool mdrCdashigVersionDomainsDomainFieldsGetHelper(char * accessToken,
	std::string version, std::string domain, 
	void(* handler)(CdashigDomainFields, Error, void* )
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

	string url("/mdr/cdashig/{version}/domains/{domain}/fields");
	int pos;

	string s_version("{");
	s_version.append("version");
	s_version.append("}");
	pos = url.find(s_version);
	url.erase(pos, s_version.length());
	url.insert(pos, stringify(&version, "std::string"));
	string s_domain("{");
	s_domain.append("domain");
	s_domain.append("}");
	pos = url.find(s_domain);
	url.erase(pos, s_domain.length());
	url.insert(pos, stringify(&domain, "std::string"));

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
		NetClient::easycurl(CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashigVersionDomainsDomainFieldsGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashigVersionDomainsDomainFieldsGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __CDASHImplementationGuideCDASHIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionDomainsDomainFieldsGetAsync(char * accessToken,
	std::string version, std::string domain, 
	void(* handler)(CdashigDomainFields, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionDomainsDomainFieldsGetHelper(accessToken,
	version, domain, 
	handler, userData, true);
}

bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionDomainsDomainFieldsGetSync(char * accessToken,
	std::string version, std::string domain, 
	void(* handler)(CdashigDomainFields, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionDomainsDomainFieldsGetHelper(accessToken,
	version, domain, 
	handler, userData, false);
}

static bool mdrCdashigVersionDomainsDomainGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashigDomain, Error, void* )
	= reinterpret_cast<void(*)(CdashigDomain, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashigDomain out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashigDomain")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashigDomain", "CdashigDomain");
			json_node_free(pJson);

			if ("CdashigDomain" == "std::string") {
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

static bool mdrCdashigVersionDomainsDomainGetHelper(char * accessToken,
	std::string version, std::string domain, 
	void(* handler)(CdashigDomain, Error, void* )
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

	string url("/mdr/cdashig/{version}/domains/{domain}");
	int pos;

	string s_version("{");
	s_version.append("version");
	s_version.append("}");
	pos = url.find(s_version);
	url.erase(pos, s_version.length());
	url.insert(pos, stringify(&version, "std::string"));
	string s_domain("{");
	s_domain.append("domain");
	s_domain.append("}");
	pos = url.find(s_domain);
	url.erase(pos, s_domain.length());
	url.insert(pos, stringify(&domain, "std::string"));

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
		NetClient::easycurl(CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashigVersionDomainsDomainGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashigVersionDomainsDomainGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __CDASHImplementationGuideCDASHIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionDomainsDomainGetAsync(char * accessToken,
	std::string version, std::string domain, 
	void(* handler)(CdashigDomain, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionDomainsDomainGetHelper(accessToken,
	version, domain, 
	handler, userData, true);
}

bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionDomainsDomainGetSync(char * accessToken,
	std::string version, std::string domain, 
	void(* handler)(CdashigDomain, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionDomainsDomainGetHelper(accessToken,
	version, domain, 
	handler, userData, false);
}

static bool mdrCdashigVersionDomainsGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashigProductDomains, Error, void* )
	= reinterpret_cast<void(*)(CdashigProductDomains, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashigProductDomains out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashigProductDomains")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashigProductDomains", "CdashigProductDomains");
			json_node_free(pJson);

			if ("CdashigProductDomains" == "std::string") {
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

static bool mdrCdashigVersionDomainsGetHelper(char * accessToken,
	std::string version, 
	void(* handler)(CdashigProductDomains, Error, void* )
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

	string url("/mdr/cdashig/{version}/domains");
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
		NetClient::easycurl(CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashigVersionDomainsGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashigVersionDomainsGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __CDASHImplementationGuideCDASHIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionDomainsGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(CdashigProductDomains, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionDomainsGetHelper(accessToken,
	version, 
	handler, userData, true);
}

bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionDomainsGetSync(char * accessToken,
	std::string version, 
	void(* handler)(CdashigProductDomains, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionDomainsGetHelper(accessToken,
	version, 
	handler, userData, false);
}

static bool mdrCdashigVersionGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashigProduct, Error, void* )
	= reinterpret_cast<void(*)(CdashigProduct, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashigProduct out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashigProduct")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashigProduct", "CdashigProduct");
			json_node_free(pJson);

			if ("CdashigProduct" == "std::string") {
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

static bool mdrCdashigVersionGetHelper(char * accessToken,
	std::string version, 
	void(* handler)(CdashigProduct, Error, void* )
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

	string url("/mdr/cdashig/{version}");
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
		NetClient::easycurl(CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashigVersionGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashigVersionGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __CDASHImplementationGuideCDASHIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(CdashigProduct, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionGetHelper(accessToken,
	version, 
	handler, userData, true);
}

bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionGetSync(char * accessToken,
	std::string version, 
	void(* handler)(CdashigProduct, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionGetHelper(accessToken,
	version, 
	handler, userData, false);
}

static bool mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashigScenarioField, Error, void* )
	= reinterpret_cast<void(*)(CdashigScenarioField, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashigScenarioField out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashigScenarioField")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashigScenarioField", "CdashigScenarioField");
			json_node_free(pJson);

			if ("CdashigScenarioField" == "std::string") {
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

static bool mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetHelper(char * accessToken,
	std::string version, std::string domain, std::string scenario, std::string field, 
	void(* handler)(CdashigScenarioField, Error, void* )
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

	string url("/mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field}");
	int pos;

	string s_version("{");
	s_version.append("version");
	s_version.append("}");
	pos = url.find(s_version);
	url.erase(pos, s_version.length());
	url.insert(pos, stringify(&version, "std::string"));
	string s_domain("{");
	s_domain.append("domain");
	s_domain.append("}");
	pos = url.find(s_domain);
	url.erase(pos, s_domain.length());
	url.insert(pos, stringify(&domain, "std::string"));
	string s_scenario("{");
	s_scenario.append("scenario");
	s_scenario.append("}");
	pos = url.find(s_scenario);
	url.erase(pos, s_scenario.length());
	url.insert(pos, stringify(&scenario, "std::string"));
	string s_field("{");
	s_field.append("field");
	s_field.append("}");
	pos = url.find(s_field);
	url.erase(pos, s_field.length());
	url.insert(pos, stringify(&field, "std::string"));

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
		NetClient::easycurl(CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __CDASHImplementationGuideCDASHIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetAsync(char * accessToken,
	std::string version, std::string domain, std::string scenario, std::string field, 
	void(* handler)(CdashigScenarioField, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetHelper(accessToken,
	version, domain, scenario, field, 
	handler, userData, true);
}

bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetSync(char * accessToken,
	std::string version, std::string domain, std::string scenario, std::string field, 
	void(* handler)(CdashigScenarioField, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetHelper(accessToken,
	version, domain, scenario, field, 
	handler, userData, false);
}

static bool mdrCdashigVersionScenariosDomainScenarioFieldsGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashigScenarioFields, Error, void* )
	= reinterpret_cast<void(*)(CdashigScenarioFields, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashigScenarioFields out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashigScenarioFields")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashigScenarioFields", "CdashigScenarioFields");
			json_node_free(pJson);

			if ("CdashigScenarioFields" == "std::string") {
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

static bool mdrCdashigVersionScenariosDomainScenarioFieldsGetHelper(char * accessToken,
	std::string version, std::string domain, std::string scenario, 
	void(* handler)(CdashigScenarioFields, Error, void* )
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

	string url("/mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields");
	int pos;

	string s_version("{");
	s_version.append("version");
	s_version.append("}");
	pos = url.find(s_version);
	url.erase(pos, s_version.length());
	url.insert(pos, stringify(&version, "std::string"));
	string s_domain("{");
	s_domain.append("domain");
	s_domain.append("}");
	pos = url.find(s_domain);
	url.erase(pos, s_domain.length());
	url.insert(pos, stringify(&domain, "std::string"));
	string s_scenario("{");
	s_scenario.append("scenario");
	s_scenario.append("}");
	pos = url.find(s_scenario);
	url.erase(pos, s_scenario.length());
	url.insert(pos, stringify(&scenario, "std::string"));

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
		NetClient::easycurl(CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashigVersionScenariosDomainScenarioFieldsGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashigVersionScenariosDomainScenarioFieldsGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __CDASHImplementationGuideCDASHIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionScenariosDomainScenarioFieldsGetAsync(char * accessToken,
	std::string version, std::string domain, std::string scenario, 
	void(* handler)(CdashigScenarioFields, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionScenariosDomainScenarioFieldsGetHelper(accessToken,
	version, domain, scenario, 
	handler, userData, true);
}

bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionScenariosDomainScenarioFieldsGetSync(char * accessToken,
	std::string version, std::string domain, std::string scenario, 
	void(* handler)(CdashigScenarioFields, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionScenariosDomainScenarioFieldsGetHelper(accessToken,
	version, domain, scenario, 
	handler, userData, false);
}

static bool mdrCdashigVersionScenariosDomainScenarioGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashigScenario, Error, void* )
	= reinterpret_cast<void(*)(CdashigScenario, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashigScenario out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashigScenario")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashigScenario", "CdashigScenario");
			json_node_free(pJson);

			if ("CdashigScenario" == "std::string") {
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

static bool mdrCdashigVersionScenariosDomainScenarioGetHelper(char * accessToken,
	std::string version, std::string domain, std::string scenario, 
	void(* handler)(CdashigScenario, Error, void* )
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

	string url("/mdr/cdashig/{version}/scenarios/{domain}.{scenario}");
	int pos;

	string s_version("{");
	s_version.append("version");
	s_version.append("}");
	pos = url.find(s_version);
	url.erase(pos, s_version.length());
	url.insert(pos, stringify(&version, "std::string"));
	string s_domain("{");
	s_domain.append("domain");
	s_domain.append("}");
	pos = url.find(s_domain);
	url.erase(pos, s_domain.length());
	url.insert(pos, stringify(&domain, "std::string"));
	string s_scenario("{");
	s_scenario.append("scenario");
	s_scenario.append("}");
	pos = url.find(s_scenario);
	url.erase(pos, s_scenario.length());
	url.insert(pos, stringify(&scenario, "std::string"));

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
		NetClient::easycurl(CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashigVersionScenariosDomainScenarioGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashigVersionScenariosDomainScenarioGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __CDASHImplementationGuideCDASHIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionScenariosDomainScenarioGetAsync(char * accessToken,
	std::string version, std::string domain, std::string scenario, 
	void(* handler)(CdashigScenario, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionScenariosDomainScenarioGetHelper(accessToken,
	version, domain, scenario, 
	handler, userData, true);
}

bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionScenariosDomainScenarioGetSync(char * accessToken,
	std::string version, std::string domain, std::string scenario, 
	void(* handler)(CdashigScenario, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionScenariosDomainScenarioGetHelper(accessToken,
	version, domain, scenario, 
	handler, userData, false);
}

static bool mdrCdashigVersionScenariosGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashigProductScenarios, Error, void* )
	= reinterpret_cast<void(*)(CdashigProductScenarios, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashigProductScenarios out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashigProductScenarios")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashigProductScenarios", "CdashigProductScenarios");
			json_node_free(pJson);

			if ("CdashigProductScenarios" == "std::string") {
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

static bool mdrCdashigVersionScenariosGetHelper(char * accessToken,
	std::string version, 
	void(* handler)(CdashigProductScenarios, Error, void* )
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

	string url("/mdr/cdashig/{version}/scenarios");
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
		NetClient::easycurl(CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashigVersionScenariosGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashigVersionScenariosGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __CDASHImplementationGuideCDASHIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionScenariosGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(CdashigProductScenarios, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionScenariosGetHelper(accessToken,
	version, 
	handler, userData, true);
}

bool CDASHImplementationGuideCDASHIGManager::mdrCdashigVersionScenariosGetSync(char * accessToken,
	std::string version, 
	void(* handler)(CdashigProductScenarios, Error, void* )
	, void* userData)
{
	return mdrCdashigVersionScenariosGetHelper(accessToken,
	version, 
	handler, userData, false);
}

static bool mdrRootCdashigDomainsDomainFieldsFieldGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(RootCdashigDomainField, Error, void* )
	= reinterpret_cast<void(*)(RootCdashigDomainField, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	RootCdashigDomainField out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("RootCdashigDomainField")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "RootCdashigDomainField", "RootCdashigDomainField");
			json_node_free(pJson);

			if ("RootCdashigDomainField" == "std::string") {
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

static bool mdrRootCdashigDomainsDomainFieldsFieldGetHelper(char * accessToken,
	std::string domain, std::string field, 
	void(* handler)(RootCdashigDomainField, Error, void* )
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

	string url("/mdr/root/cdashig/domains/{domain}/fields/{field}");
	int pos;

	string s_domain("{");
	s_domain.append("domain");
	s_domain.append("}");
	pos = url.find(s_domain);
	url.erase(pos, s_domain.length());
	url.insert(pos, stringify(&domain, "std::string"));
	string s_field("{");
	s_field.append("field");
	s_field.append("}");
	pos = url.find(s_field);
	url.erase(pos, s_field.length());
	url.insert(pos, stringify(&field, "std::string"));

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
		NetClient::easycurl(CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrRootCdashigDomainsDomainFieldsFieldGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrRootCdashigDomainsDomainFieldsFieldGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __CDASHImplementationGuideCDASHIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool CDASHImplementationGuideCDASHIGManager::mdrRootCdashigDomainsDomainFieldsFieldGetAsync(char * accessToken,
	std::string domain, std::string field, 
	void(* handler)(RootCdashigDomainField, Error, void* )
	, void* userData)
{
	return mdrRootCdashigDomainsDomainFieldsFieldGetHelper(accessToken,
	domain, field, 
	handler, userData, true);
}

bool CDASHImplementationGuideCDASHIGManager::mdrRootCdashigDomainsDomainFieldsFieldGetSync(char * accessToken,
	std::string domain, std::string field, 
	void(* handler)(RootCdashigDomainField, Error, void* )
	, void* userData)
{
	return mdrRootCdashigDomainsDomainFieldsFieldGetHelper(accessToken,
	domain, field, 
	handler, userData, false);
}

static bool mdrRootCdashigScenariosDomainScenarioFieldsFieldGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(RootCdashigScenarioField, Error, void* )
	= reinterpret_cast<void(*)(RootCdashigScenarioField, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	RootCdashigScenarioField out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("RootCdashigScenarioField")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "RootCdashigScenarioField", "RootCdashigScenarioField");
			json_node_free(pJson);

			if ("RootCdashigScenarioField" == "std::string") {
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

static bool mdrRootCdashigScenariosDomainScenarioFieldsFieldGetHelper(char * accessToken,
	std::string domain, std::string scenario, std::string field, 
	void(* handler)(RootCdashigScenarioField, Error, void* )
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

	string url("/mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field}");
	int pos;

	string s_domain("{");
	s_domain.append("domain");
	s_domain.append("}");
	pos = url.find(s_domain);
	url.erase(pos, s_domain.length());
	url.insert(pos, stringify(&domain, "std::string"));
	string s_scenario("{");
	s_scenario.append("scenario");
	s_scenario.append("}");
	pos = url.find(s_scenario);
	url.erase(pos, s_scenario.length());
	url.insert(pos, stringify(&scenario, "std::string"));
	string s_field("{");
	s_field.append("field");
	s_field.append("}");
	pos = url.find(s_field);
	url.erase(pos, s_field.length());
	url.insert(pos, stringify(&field, "std::string"));

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
		NetClient::easycurl(CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrRootCdashigScenariosDomainScenarioFieldsFieldGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (CDASHImplementationGuideCDASHIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrRootCdashigScenariosDomainScenarioFieldsFieldGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __CDASHImplementationGuideCDASHIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool CDASHImplementationGuideCDASHIGManager::mdrRootCdashigScenariosDomainScenarioFieldsFieldGetAsync(char * accessToken,
	std::string domain, std::string scenario, std::string field, 
	void(* handler)(RootCdashigScenarioField, Error, void* )
	, void* userData)
{
	return mdrRootCdashigScenariosDomainScenarioFieldsFieldGetHelper(accessToken,
	domain, scenario, field, 
	handler, userData, true);
}

bool CDASHImplementationGuideCDASHIGManager::mdrRootCdashigScenariosDomainScenarioFieldsFieldGetSync(char * accessToken,
	std::string domain, std::string scenario, std::string field, 
	void(* handler)(RootCdashigScenarioField, Error, void* )
	, void* userData)
{
	return mdrRootCdashigScenariosDomainScenarioFieldsFieldGetHelper(accessToken,
	domain, scenario, field, 
	handler, userData, false);
}

