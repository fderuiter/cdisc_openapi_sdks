#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "ClinicalDataAcquisitionStandardsHarmonizationCDASHManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::ClinicalDataAcquisitionStandardsHarmonizationCDASHManager()
{

}

ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::~ClinicalDataAcquisitionStandardsHarmonizationCDASHManager()
{

}

static gboolean __ClinicalDataAcquisitionStandardsHarmonizationCDASHManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __ClinicalDataAcquisitionStandardsHarmonizationCDASHManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__ClinicalDataAcquisitionStandardsHarmonizationCDASHManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool mdrCdashVersionClassesClassDomainsGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashClassDomains, Error, void* )
	= reinterpret_cast<void(*)(CdashClassDomains, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashClassDomains out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashClassDomains")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashClassDomains", "CdashClassDomains");
			json_node_free(pJson);

			if ("CdashClassDomains" == "std::string") {
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

static bool mdrCdashVersionClassesClassDomainsGetHelper(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashClassDomains, Error, void* )
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

	string url("/mdr/cdash/{version}/classes/{class}/domains");
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
		NetClient::easycurl(ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashVersionClassesClassDomainsGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashVersionClassesClassDomainsGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ClinicalDataAcquisitionStandardsHarmonizationCDASHManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrCdashVersionClassesClassDomainsGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashClassDomains, Error, void* )
	, void* userData)
{
	return mdrCdashVersionClassesClassDomainsGetHelper(accessToken,
	version, r_class, 
	handler, userData, true);
}

bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrCdashVersionClassesClassDomainsGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashClassDomains, Error, void* )
	, void* userData)
{
	return mdrCdashVersionClassesClassDomainsGetHelper(accessToken,
	version, r_class, 
	handler, userData, false);
}

static bool mdrCdashVersionClassesClassFieldsFieldGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashClassField, Error, void* )
	= reinterpret_cast<void(*)(CdashClassField, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashClassField out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashClassField")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashClassField", "CdashClassField");
			json_node_free(pJson);

			if ("CdashClassField" == "std::string") {
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

static bool mdrCdashVersionClassesClassFieldsFieldGetHelper(char * accessToken,
	std::string version, std::string r_class, std::string field, 
	void(* handler)(CdashClassField, Error, void* )
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

	string url("/mdr/cdash/{version}/classes/{class}/fields/{field}");
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
		NetClient::easycurl(ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashVersionClassesClassFieldsFieldGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashVersionClassesClassFieldsFieldGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ClinicalDataAcquisitionStandardsHarmonizationCDASHManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrCdashVersionClassesClassFieldsFieldGetAsync(char * accessToken,
	std::string version, std::string r_class, std::string field, 
	void(* handler)(CdashClassField, Error, void* )
	, void* userData)
{
	return mdrCdashVersionClassesClassFieldsFieldGetHelper(accessToken,
	version, r_class, field, 
	handler, userData, true);
}

bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrCdashVersionClassesClassFieldsFieldGetSync(char * accessToken,
	std::string version, std::string r_class, std::string field, 
	void(* handler)(CdashClassField, Error, void* )
	, void* userData)
{
	return mdrCdashVersionClassesClassFieldsFieldGetHelper(accessToken,
	version, r_class, field, 
	handler, userData, false);
}

static bool mdrCdashVersionClassesClassGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashClass, Error, void* )
	= reinterpret_cast<void(*)(CdashClass, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashClass out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashClass")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashClass", "CdashClass");
			json_node_free(pJson);

			if ("CdashClass" == "std::string") {
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

static bool mdrCdashVersionClassesClassGetHelper(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashClass, Error, void* )
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

	string url("/mdr/cdash/{version}/classes/{class}");
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
		NetClient::easycurl(ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashVersionClassesClassGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashVersionClassesClassGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ClinicalDataAcquisitionStandardsHarmonizationCDASHManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrCdashVersionClassesClassGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashClass, Error, void* )
	, void* userData)
{
	return mdrCdashVersionClassesClassGetHelper(accessToken,
	version, r_class, 
	handler, userData, true);
}

bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrCdashVersionClassesClassGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashClass, Error, void* )
	, void* userData)
{
	return mdrCdashVersionClassesClassGetHelper(accessToken,
	version, r_class, 
	handler, userData, false);
}

static bool mdrCdashVersionClassesGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashProductClasses, Error, void* )
	= reinterpret_cast<void(*)(CdashProductClasses, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashProductClasses out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashProductClasses")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashProductClasses", "CdashProductClasses");
			json_node_free(pJson);

			if ("CdashProductClasses" == "std::string") {
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

static bool mdrCdashVersionClassesGetHelper(char * accessToken,
	std::string version, 
	void(* handler)(CdashProductClasses, Error, void* )
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

	string url("/mdr/cdash/{version}/classes");
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
		NetClient::easycurl(ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashVersionClassesGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashVersionClassesGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ClinicalDataAcquisitionStandardsHarmonizationCDASHManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrCdashVersionClassesGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(CdashProductClasses, Error, void* )
	, void* userData)
{
	return mdrCdashVersionClassesGetHelper(accessToken,
	version, 
	handler, userData, true);
}

bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrCdashVersionClassesGetSync(char * accessToken,
	std::string version, 
	void(* handler)(CdashProductClasses, Error, void* )
	, void* userData)
{
	return mdrCdashVersionClassesGetHelper(accessToken,
	version, 
	handler, userData, false);
}

static bool mdrCdashVersionDomainsDomainFieldsFieldGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashDomainField, Error, void* )
	= reinterpret_cast<void(*)(CdashDomainField, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashDomainField out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashDomainField")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashDomainField", "CdashDomainField");
			json_node_free(pJson);

			if ("CdashDomainField" == "std::string") {
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

static bool mdrCdashVersionDomainsDomainFieldsFieldGetHelper(char * accessToken,
	std::string version, std::string domain, std::string field, 
	void(* handler)(CdashDomainField, Error, void* )
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

	string url("/mdr/cdash/{version}/domains/{domain}/fields/{field}");
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
		NetClient::easycurl(ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashVersionDomainsDomainFieldsFieldGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashVersionDomainsDomainFieldsFieldGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ClinicalDataAcquisitionStandardsHarmonizationCDASHManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrCdashVersionDomainsDomainFieldsFieldGetAsync(char * accessToken,
	std::string version, std::string domain, std::string field, 
	void(* handler)(CdashDomainField, Error, void* )
	, void* userData)
{
	return mdrCdashVersionDomainsDomainFieldsFieldGetHelper(accessToken,
	version, domain, field, 
	handler, userData, true);
}

bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrCdashVersionDomainsDomainFieldsFieldGetSync(char * accessToken,
	std::string version, std::string domain, std::string field, 
	void(* handler)(CdashDomainField, Error, void* )
	, void* userData)
{
	return mdrCdashVersionDomainsDomainFieldsFieldGetHelper(accessToken,
	version, domain, field, 
	handler, userData, false);
}

static bool mdrCdashVersionDomainsDomainFieldsGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashDomainFields, Error, void* )
	= reinterpret_cast<void(*)(CdashDomainFields, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashDomainFields out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashDomainFields")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashDomainFields", "CdashDomainFields");
			json_node_free(pJson);

			if ("CdashDomainFields" == "std::string") {
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

static bool mdrCdashVersionDomainsDomainFieldsGetHelper(char * accessToken,
	std::string version, std::string domain, 
	void(* handler)(CdashDomainFields, Error, void* )
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

	string url("/mdr/cdash/{version}/domains/{domain}/fields");
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
		NetClient::easycurl(ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashVersionDomainsDomainFieldsGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashVersionDomainsDomainFieldsGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ClinicalDataAcquisitionStandardsHarmonizationCDASHManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrCdashVersionDomainsDomainFieldsGetAsync(char * accessToken,
	std::string version, std::string domain, 
	void(* handler)(CdashDomainFields, Error, void* )
	, void* userData)
{
	return mdrCdashVersionDomainsDomainFieldsGetHelper(accessToken,
	version, domain, 
	handler, userData, true);
}

bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrCdashVersionDomainsDomainFieldsGetSync(char * accessToken,
	std::string version, std::string domain, 
	void(* handler)(CdashDomainFields, Error, void* )
	, void* userData)
{
	return mdrCdashVersionDomainsDomainFieldsGetHelper(accessToken,
	version, domain, 
	handler, userData, false);
}

static bool mdrCdashVersionDomainsDomainGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashDomain, Error, void* )
	= reinterpret_cast<void(*)(CdashDomain, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashDomain out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashDomain")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashDomain", "CdashDomain");
			json_node_free(pJson);

			if ("CdashDomain" == "std::string") {
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

static bool mdrCdashVersionDomainsDomainGetHelper(char * accessToken,
	std::string version, std::string domain, 
	void(* handler)(CdashDomain, Error, void* )
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

	string url("/mdr/cdash/{version}/domains/{domain}");
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
		NetClient::easycurl(ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashVersionDomainsDomainGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashVersionDomainsDomainGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ClinicalDataAcquisitionStandardsHarmonizationCDASHManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrCdashVersionDomainsDomainGetAsync(char * accessToken,
	std::string version, std::string domain, 
	void(* handler)(CdashDomain, Error, void* )
	, void* userData)
{
	return mdrCdashVersionDomainsDomainGetHelper(accessToken,
	version, domain, 
	handler, userData, true);
}

bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrCdashVersionDomainsDomainGetSync(char * accessToken,
	std::string version, std::string domain, 
	void(* handler)(CdashDomain, Error, void* )
	, void* userData)
{
	return mdrCdashVersionDomainsDomainGetHelper(accessToken,
	version, domain, 
	handler, userData, false);
}

static bool mdrCdashVersionDomainsGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashProductDomains, Error, void* )
	= reinterpret_cast<void(*)(CdashProductDomains, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashProductDomains out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashProductDomains")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashProductDomains", "CdashProductDomains");
			json_node_free(pJson);

			if ("CdashProductDomains" == "std::string") {
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

static bool mdrCdashVersionDomainsGetHelper(char * accessToken,
	std::string version, 
	void(* handler)(CdashProductDomains, Error, void* )
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

	string url("/mdr/cdash/{version}/domains");
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
		NetClient::easycurl(ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashVersionDomainsGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashVersionDomainsGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ClinicalDataAcquisitionStandardsHarmonizationCDASHManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrCdashVersionDomainsGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(CdashProductDomains, Error, void* )
	, void* userData)
{
	return mdrCdashVersionDomainsGetHelper(accessToken,
	version, 
	handler, userData, true);
}

bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrCdashVersionDomainsGetSync(char * accessToken,
	std::string version, 
	void(* handler)(CdashProductDomains, Error, void* )
	, void* userData)
{
	return mdrCdashVersionDomainsGetHelper(accessToken,
	version, 
	handler, userData, false);
}

static bool mdrCdashVersionGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(CdashProduct, Error, void* )
	= reinterpret_cast<void(*)(CdashProduct, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	CdashProduct out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("CdashProduct")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "CdashProduct", "CdashProduct");
			json_node_free(pJson);

			if ("CdashProduct" == "std::string") {
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

static bool mdrCdashVersionGetHelper(char * accessToken,
	std::string version, 
	void(* handler)(CdashProduct, Error, void* )
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

	string url("/mdr/cdash/{version}");
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
		NetClient::easycurl(ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrCdashVersionGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrCdashVersionGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ClinicalDataAcquisitionStandardsHarmonizationCDASHManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrCdashVersionGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(CdashProduct, Error, void* )
	, void* userData)
{
	return mdrCdashVersionGetHelper(accessToken,
	version, 
	handler, userData, true);
}

bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrCdashVersionGetSync(char * accessToken,
	std::string version, 
	void(* handler)(CdashProduct, Error, void* )
	, void* userData)
{
	return mdrCdashVersionGetHelper(accessToken,
	version, 
	handler, userData, false);
}

static bool mdrRootCdashClassesClassFieldsFieldGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(RootCdashClassField, Error, void* )
	= reinterpret_cast<void(*)(RootCdashClassField, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	RootCdashClassField out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("RootCdashClassField")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "RootCdashClassField", "RootCdashClassField");
			json_node_free(pJson);

			if ("RootCdashClassField" == "std::string") {
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

static bool mdrRootCdashClassesClassFieldsFieldGetHelper(char * accessToken,
	std::string r_class, std::string field, 
	void(* handler)(RootCdashClassField, Error, void* )
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

	string url("/mdr/root/cdash/classes/{class}/fields/{field}");
	int pos;

	string s_r_class("{");
	s_r_class.append("class");
	s_r_class.append("}");
	pos = url.find(s_r_class);
	url.erase(pos, s_r_class.length());
	url.insert(pos, stringify(&r_class, "std::string"));
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
		NetClient::easycurl(ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrRootCdashClassesClassFieldsFieldGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrRootCdashClassesClassFieldsFieldGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ClinicalDataAcquisitionStandardsHarmonizationCDASHManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrRootCdashClassesClassFieldsFieldGetAsync(char * accessToken,
	std::string r_class, std::string field, 
	void(* handler)(RootCdashClassField, Error, void* )
	, void* userData)
{
	return mdrRootCdashClassesClassFieldsFieldGetHelper(accessToken,
	r_class, field, 
	handler, userData, true);
}

bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrRootCdashClassesClassFieldsFieldGetSync(char * accessToken,
	std::string r_class, std::string field, 
	void(* handler)(RootCdashClassField, Error, void* )
	, void* userData)
{
	return mdrRootCdashClassesClassFieldsFieldGetHelper(accessToken,
	r_class, field, 
	handler, userData, false);
}

static bool mdrRootCdashDomainsDomainFieldsFieldGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(RootCdashDomainField, Error, void* )
	= reinterpret_cast<void(*)(RootCdashDomainField, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	RootCdashDomainField out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("RootCdashDomainField")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "RootCdashDomainField", "RootCdashDomainField");
			json_node_free(pJson);

			if ("RootCdashDomainField" == "std::string") {
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

static bool mdrRootCdashDomainsDomainFieldsFieldGetHelper(char * accessToken,
	std::string domain, std::string field, 
	void(* handler)(RootCdashDomainField, Error, void* )
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

	string url("/mdr/root/cdash/domains/{domain}/fields/{field}");
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
		NetClient::easycurl(ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrRootCdashDomainsDomainFieldsFieldGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrRootCdashDomainsDomainFieldsFieldGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ClinicalDataAcquisitionStandardsHarmonizationCDASHManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrRootCdashDomainsDomainFieldsFieldGetAsync(char * accessToken,
	std::string domain, std::string field, 
	void(* handler)(RootCdashDomainField, Error, void* )
	, void* userData)
{
	return mdrRootCdashDomainsDomainFieldsFieldGetHelper(accessToken,
	domain, field, 
	handler, userData, true);
}

bool ClinicalDataAcquisitionStandardsHarmonizationCDASHManager::mdrRootCdashDomainsDomainFieldsFieldGetSync(char * accessToken,
	std::string domain, std::string field, 
	void(* handler)(RootCdashDomainField, Error, void* )
	, void* userData)
{
	return mdrRootCdashDomainsDomainFieldsFieldGetHelper(accessToken,
	domain, field, 
	handler, userData, false);
}

