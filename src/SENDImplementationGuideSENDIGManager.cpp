#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "SENDImplementationGuideSENDIGManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


SENDImplementationGuideSENDIGManager::SENDImplementationGuideSENDIGManager()
{

}

SENDImplementationGuideSENDIGManager::~SENDImplementationGuideSENDIGManager()
{

}

static gboolean __SENDImplementationGuideSENDIGManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __SENDImplementationGuideSENDIGManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__SENDImplementationGuideSENDIGManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool mdrRootSendigDatasetsDatasetVariablesVarGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(RootSendigDatasetVariable, Error, void* )
	= reinterpret_cast<void(*)(RootSendigDatasetVariable, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	RootSendigDatasetVariable out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("RootSendigDatasetVariable")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "RootSendigDatasetVariable", "RootSendigDatasetVariable");
			json_node_free(pJson);

			if ("RootSendigDatasetVariable" == "std::string") {
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

static bool mdrRootSendigDatasetsDatasetVariablesVarGetHelper(char * accessToken,
	std::string dataset, std::string var, 
	void(* handler)(RootSendigDatasetVariable, Error, void* )
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

	string url("/mdr/root/sendig/datasets/{dataset}/variables/{var}");
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
		NetClient::easycurl(SENDImplementationGuideSENDIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrRootSendigDatasetsDatasetVariablesVarGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SENDImplementationGuideSENDIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrRootSendigDatasetsDatasetVariablesVarGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SENDImplementationGuideSENDIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SENDImplementationGuideSENDIGManager::mdrRootSendigDatasetsDatasetVariablesVarGetAsync(char * accessToken,
	std::string dataset, std::string var, 
	void(* handler)(RootSendigDatasetVariable, Error, void* )
	, void* userData)
{
	return mdrRootSendigDatasetsDatasetVariablesVarGetHelper(accessToken,
	dataset, var, 
	handler, userData, true);
}

bool SENDImplementationGuideSENDIGManager::mdrRootSendigDatasetsDatasetVariablesVarGetSync(char * accessToken,
	std::string dataset, std::string var, 
	void(* handler)(RootSendigDatasetVariable, Error, void* )
	, void* userData)
{
	return mdrRootSendigDatasetsDatasetVariablesVarGetHelper(accessToken,
	dataset, var, 
	handler, userData, false);
}

static bool mdrSendigVersionClassesClassDatasetsGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SendigClassDatasets, Error, void* )
	= reinterpret_cast<void(*)(SendigClassDatasets, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SendigClassDatasets out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SendigClassDatasets")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SendigClassDatasets", "SendigClassDatasets");
			json_node_free(pJson);

			if ("SendigClassDatasets" == "std::string") {
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

static bool mdrSendigVersionClassesClassDatasetsGetHelper(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SendigClassDatasets, Error, void* )
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

	string url("/mdr/sendig/{version}/classes/{class}/datasets");
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
		NetClient::easycurl(SENDImplementationGuideSENDIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrSendigVersionClassesClassDatasetsGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SENDImplementationGuideSENDIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrSendigVersionClassesClassDatasetsGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SENDImplementationGuideSENDIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SENDImplementationGuideSENDIGManager::mdrSendigVersionClassesClassDatasetsGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SendigClassDatasets, Error, void* )
	, void* userData)
{
	return mdrSendigVersionClassesClassDatasetsGetHelper(accessToken,
	version, r_class, 
	handler, userData, true);
}

bool SENDImplementationGuideSENDIGManager::mdrSendigVersionClassesClassDatasetsGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SendigClassDatasets, Error, void* )
	, void* userData)
{
	return mdrSendigVersionClassesClassDatasetsGetHelper(accessToken,
	version, r_class, 
	handler, userData, false);
}

static bool mdrSendigVersionClassesClassGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SendigClass, Error, void* )
	= reinterpret_cast<void(*)(SendigClass, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SendigClass out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SendigClass")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SendigClass", "SendigClass");
			json_node_free(pJson);

			if ("SendigClass" == "std::string") {
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

static bool mdrSendigVersionClassesClassGetHelper(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SendigClass, Error, void* )
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

	string url("/mdr/sendig/{version}/classes/{class}");
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
		NetClient::easycurl(SENDImplementationGuideSENDIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrSendigVersionClassesClassGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SENDImplementationGuideSENDIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrSendigVersionClassesClassGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SENDImplementationGuideSENDIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SENDImplementationGuideSENDIGManager::mdrSendigVersionClassesClassGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SendigClass, Error, void* )
	, void* userData)
{
	return mdrSendigVersionClassesClassGetHelper(accessToken,
	version, r_class, 
	handler, userData, true);
}

bool SENDImplementationGuideSENDIGManager::mdrSendigVersionClassesClassGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SendigClass, Error, void* )
	, void* userData)
{
	return mdrSendigVersionClassesClassGetHelper(accessToken,
	version, r_class, 
	handler, userData, false);
}

static bool mdrSendigVersionClassesGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SendigClasses, Error, void* )
	= reinterpret_cast<void(*)(SendigClasses, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SendigClasses out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SendigClasses")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SendigClasses", "SendigClasses");
			json_node_free(pJson);

			if ("SendigClasses" == "std::string") {
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

static bool mdrSendigVersionClassesGetHelper(char * accessToken,
	std::string version, 
	void(* handler)(SendigClasses, Error, void* )
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

	string url("/mdr/sendig/{version}/classes");
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
		NetClient::easycurl(SENDImplementationGuideSENDIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrSendigVersionClassesGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SENDImplementationGuideSENDIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrSendigVersionClassesGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SENDImplementationGuideSENDIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SENDImplementationGuideSENDIGManager::mdrSendigVersionClassesGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(SendigClasses, Error, void* )
	, void* userData)
{
	return mdrSendigVersionClassesGetHelper(accessToken,
	version, 
	handler, userData, true);
}

bool SENDImplementationGuideSENDIGManager::mdrSendigVersionClassesGetSync(char * accessToken,
	std::string version, 
	void(* handler)(SendigClasses, Error, void* )
	, void* userData)
{
	return mdrSendigVersionClassesGetHelper(accessToken,
	version, 
	handler, userData, false);
}

static bool mdrSendigVersionDatasetsDatasetGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SendigDataset, Error, void* )
	= reinterpret_cast<void(*)(SendigDataset, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SendigDataset out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SendigDataset")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SendigDataset", "SendigDataset");
			json_node_free(pJson);

			if ("SendigDataset" == "std::string") {
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

static bool mdrSendigVersionDatasetsDatasetGetHelper(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SendigDataset, Error, void* )
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

	string url("/mdr/sendig/{version}/datasets/{dataset}");
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
		NetClient::easycurl(SENDImplementationGuideSENDIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrSendigVersionDatasetsDatasetGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SENDImplementationGuideSENDIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrSendigVersionDatasetsDatasetGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SENDImplementationGuideSENDIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SENDImplementationGuideSENDIGManager::mdrSendigVersionDatasetsDatasetGetAsync(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SendigDataset, Error, void* )
	, void* userData)
{
	return mdrSendigVersionDatasetsDatasetGetHelper(accessToken,
	version, dataset, 
	handler, userData, true);
}

bool SENDImplementationGuideSENDIGManager::mdrSendigVersionDatasetsDatasetGetSync(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SendigDataset, Error, void* )
	, void* userData)
{
	return mdrSendigVersionDatasetsDatasetGetHelper(accessToken,
	version, dataset, 
	handler, userData, false);
}

static bool mdrSendigVersionDatasetsDatasetVariablesGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SendigDatasetVariables, Error, void* )
	= reinterpret_cast<void(*)(SendigDatasetVariables, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SendigDatasetVariables out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SendigDatasetVariables")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SendigDatasetVariables", "SendigDatasetVariables");
			json_node_free(pJson);

			if ("SendigDatasetVariables" == "std::string") {
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

static bool mdrSendigVersionDatasetsDatasetVariablesGetHelper(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SendigDatasetVariables, Error, void* )
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

	string url("/mdr/sendig/{version}/datasets/{dataset}/variables");
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
		NetClient::easycurl(SENDImplementationGuideSENDIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrSendigVersionDatasetsDatasetVariablesGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SENDImplementationGuideSENDIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrSendigVersionDatasetsDatasetVariablesGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SENDImplementationGuideSENDIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SENDImplementationGuideSENDIGManager::mdrSendigVersionDatasetsDatasetVariablesGetAsync(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SendigDatasetVariables, Error, void* )
	, void* userData)
{
	return mdrSendigVersionDatasetsDatasetVariablesGetHelper(accessToken,
	version, dataset, 
	handler, userData, true);
}

bool SENDImplementationGuideSENDIGManager::mdrSendigVersionDatasetsDatasetVariablesGetSync(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SendigDatasetVariables, Error, void* )
	, void* userData)
{
	return mdrSendigVersionDatasetsDatasetVariablesGetHelper(accessToken,
	version, dataset, 
	handler, userData, false);
}

static bool mdrSendigVersionDatasetsDatasetVariablesVarGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SendigDatasetVariable, Error, void* )
	= reinterpret_cast<void(*)(SendigDatasetVariable, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SendigDatasetVariable out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SendigDatasetVariable")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SendigDatasetVariable", "SendigDatasetVariable");
			json_node_free(pJson);

			if ("SendigDatasetVariable" == "std::string") {
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

static bool mdrSendigVersionDatasetsDatasetVariablesVarGetHelper(char * accessToken,
	std::string version, std::string dataset, std::string var, 
	void(* handler)(SendigDatasetVariable, Error, void* )
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

	string url("/mdr/sendig/{version}/datasets/{dataset}/variables/{var}");
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
		NetClient::easycurl(SENDImplementationGuideSENDIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrSendigVersionDatasetsDatasetVariablesVarGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SENDImplementationGuideSENDIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrSendigVersionDatasetsDatasetVariablesVarGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SENDImplementationGuideSENDIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SENDImplementationGuideSENDIGManager::mdrSendigVersionDatasetsDatasetVariablesVarGetAsync(char * accessToken,
	std::string version, std::string dataset, std::string var, 
	void(* handler)(SendigDatasetVariable, Error, void* )
	, void* userData)
{
	return mdrSendigVersionDatasetsDatasetVariablesVarGetHelper(accessToken,
	version, dataset, var, 
	handler, userData, true);
}

bool SENDImplementationGuideSENDIGManager::mdrSendigVersionDatasetsDatasetVariablesVarGetSync(char * accessToken,
	std::string version, std::string dataset, std::string var, 
	void(* handler)(SendigDatasetVariable, Error, void* )
	, void* userData)
{
	return mdrSendigVersionDatasetsDatasetVariablesVarGetHelper(accessToken,
	version, dataset, var, 
	handler, userData, false);
}

static bool mdrSendigVersionDatasetsGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SendigDatasets, Error, void* )
	= reinterpret_cast<void(*)(SendigDatasets, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SendigDatasets out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SendigDatasets")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SendigDatasets", "SendigDatasets");
			json_node_free(pJson);

			if ("SendigDatasets" == "std::string") {
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

static bool mdrSendigVersionDatasetsGetHelper(char * accessToken,
	std::string version, 
	void(* handler)(SendigDatasets, Error, void* )
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

	string url("/mdr/sendig/{version}/datasets");
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
		NetClient::easycurl(SENDImplementationGuideSENDIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrSendigVersionDatasetsGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SENDImplementationGuideSENDIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrSendigVersionDatasetsGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SENDImplementationGuideSENDIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SENDImplementationGuideSENDIGManager::mdrSendigVersionDatasetsGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(SendigDatasets, Error, void* )
	, void* userData)
{
	return mdrSendigVersionDatasetsGetHelper(accessToken,
	version, 
	handler, userData, true);
}

bool SENDImplementationGuideSENDIGManager::mdrSendigVersionDatasetsGetSync(char * accessToken,
	std::string version, 
	void(* handler)(SendigDatasets, Error, void* )
	, void* userData)
{
	return mdrSendigVersionDatasetsGetHelper(accessToken,
	version, 
	handler, userData, false);
}

static bool mdrSendigVersionGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SendigProduct, Error, void* )
	= reinterpret_cast<void(*)(SendigProduct, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SendigProduct out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SendigProduct")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SendigProduct", "SendigProduct");
			json_node_free(pJson);

			if ("SendigProduct" == "std::string") {
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

static bool mdrSendigVersionGetHelper(char * accessToken,
	std::string version, 
	void(* handler)(SendigProduct, Error, void* )
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

	string url("/mdr/sendig/{version}");
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
		NetClient::easycurl(SENDImplementationGuideSENDIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrSendigVersionGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SENDImplementationGuideSENDIGManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrSendigVersionGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SENDImplementationGuideSENDIGManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SENDImplementationGuideSENDIGManager::mdrSendigVersionGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(SendigProduct, Error, void* )
	, void* userData)
{
	return mdrSendigVersionGetHelper(accessToken,
	version, 
	handler, userData, true);
}

bool SENDImplementationGuideSENDIGManager::mdrSendigVersionGetSync(char * accessToken,
	std::string version, 
	void(* handler)(SendigProduct, Error, void* )
	, void* userData)
{
	return mdrSendigVersionGetHelper(accessToken,
	version, 
	handler, userData, false);
}

