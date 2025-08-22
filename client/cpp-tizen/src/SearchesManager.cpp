#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "SearchesManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


SearchesManager::SearchesManager()
{

}

SearchesManager::~SearchesManager()
{

}

static gboolean __SearchesManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __SearchesManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__SearchesManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool mdrSearchGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(DefaultSearchResponse, Error, void* )
	= reinterpret_cast<void(*)(DefaultSearchResponse, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	DefaultSearchResponse out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("DefaultSearchResponse")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "DefaultSearchResponse", "DefaultSearchResponse");
			json_node_free(pJson);

			if ("DefaultSearchResponse" == "std::string") {
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

static bool mdrSearchGetHelper(char * accessToken,
	std::string q, std::string highlight, long long start, long long pageSize, std::string r_class, std::string codelist, std::string conceptId, std::string core, std::string dataStructure, std::string datasetStructure, std::string definition, std::string description, std::string domain, std::string effectiveDate, std::string extensible, std::string href, std::string label, std::string measureType, std::string name, std::string preferredTerm, std::string product, std::string productGroup, std::string registrationStatus, std::string roleDescription, std::string sdtmTarget, std::string simpleDatatype, std::string submissionValue, std::string synonyms, std::string type, std::string uiHref, std::string valueDomain, std::string variableSet, std::string version, 
	void(* handler)(DefaultSearchResponse, Error, void* )
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
	

	itemAtq = stringify(&q, "std::string");
	queryParams.insert(pair<string, string>("q", itemAtq));


	itemAtq = stringify(&highlight, "std::string");
	queryParams.insert(pair<string, string>("highlight", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("highlight");
	}


	itemAtq = stringify(&start, "long long");
	queryParams.insert(pair<string, string>("start", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("start");
	}


	itemAtq = stringify(&pageSize, "long long");
	queryParams.insert(pair<string, string>("pageSize", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("pageSize");
	}


	itemAtq = stringify(&r_class, "std::string");
	queryParams.insert(pair<string, string>("class", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("class");
	}


	itemAtq = stringify(&codelist, "std::string");
	queryParams.insert(pair<string, string>("codelist", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("codelist");
	}


	itemAtq = stringify(&conceptId, "std::string");
	queryParams.insert(pair<string, string>("conceptId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("conceptId");
	}


	itemAtq = stringify(&core, "std::string");
	queryParams.insert(pair<string, string>("core", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("core");
	}


	itemAtq = stringify(&dataStructure, "std::string");
	queryParams.insert(pair<string, string>("dataStructure", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("dataStructure");
	}


	itemAtq = stringify(&datasetStructure, "std::string");
	queryParams.insert(pair<string, string>("datasetStructure", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("datasetStructure");
	}


	itemAtq = stringify(&definition, "std::string");
	queryParams.insert(pair<string, string>("definition", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("definition");
	}


	itemAtq = stringify(&description, "std::string");
	queryParams.insert(pair<string, string>("description", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("description");
	}


	itemAtq = stringify(&domain, "std::string");
	queryParams.insert(pair<string, string>("domain", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("domain");
	}


	itemAtq = stringify(&effectiveDate, "std::string");
	queryParams.insert(pair<string, string>("effectiveDate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("effectiveDate");
	}


	itemAtq = stringify(&extensible, "std::string");
	queryParams.insert(pair<string, string>("extensible", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("extensible");
	}


	itemAtq = stringify(&href, "std::string");
	queryParams.insert(pair<string, string>("href", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("href");
	}


	itemAtq = stringify(&label, "std::string");
	queryParams.insert(pair<string, string>("label", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("label");
	}


	itemAtq = stringify(&measureType, "std::string");
	queryParams.insert(pair<string, string>("measureType", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("measureType");
	}


	itemAtq = stringify(&name, "std::string");
	queryParams.insert(pair<string, string>("name", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("name");
	}


	itemAtq = stringify(&preferredTerm, "std::string");
	queryParams.insert(pair<string, string>("preferredTerm", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("preferredTerm");
	}


	itemAtq = stringify(&product, "std::string");
	queryParams.insert(pair<string, string>("product", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("product");
	}


	itemAtq = stringify(&productGroup, "std::string");
	queryParams.insert(pair<string, string>("productGroup", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("productGroup");
	}


	itemAtq = stringify(&registrationStatus, "std::string");
	queryParams.insert(pair<string, string>("registrationStatus", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("registrationStatus");
	}


	itemAtq = stringify(&roleDescription, "std::string");
	queryParams.insert(pair<string, string>("roleDescription", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("roleDescription");
	}


	itemAtq = stringify(&sdtmTarget, "std::string");
	queryParams.insert(pair<string, string>("sdtmTarget", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("sdtmTarget");
	}


	itemAtq = stringify(&simpleDatatype, "std::string");
	queryParams.insert(pair<string, string>("simpleDatatype", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("simpleDatatype");
	}


	itemAtq = stringify(&submissionValue, "std::string");
	queryParams.insert(pair<string, string>("submissionValue", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("submissionValue");
	}


	itemAtq = stringify(&synonyms, "std::string");
	queryParams.insert(pair<string, string>("synonyms", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("synonyms");
	}


	itemAtq = stringify(&type, "std::string");
	queryParams.insert(pair<string, string>("type", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("type");
	}


	itemAtq = stringify(&uiHref, "std::string");
	queryParams.insert(pair<string, string>("uiHref", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("uiHref");
	}


	itemAtq = stringify(&valueDomain, "std::string");
	queryParams.insert(pair<string, string>("valueDomain", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("valueDomain");
	}


	itemAtq = stringify(&variableSet, "std::string");
	queryParams.insert(pair<string, string>("variableSet", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("variableSet");
	}


	itemAtq = stringify(&version, "std::string");
	queryParams.insert(pair<string, string>("version", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("version");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/mdr/search");
	int pos;


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
		NetClient::easycurl(SearchesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrSearchGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SearchesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrSearchGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SearchesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SearchesManager::mdrSearchGetAsync(char * accessToken,
	std::string q, std::string highlight, long long start, long long pageSize, std::string r_class, std::string codelist, std::string conceptId, std::string core, std::string dataStructure, std::string datasetStructure, std::string definition, std::string description, std::string domain, std::string effectiveDate, std::string extensible, std::string href, std::string label, std::string measureType, std::string name, std::string preferredTerm, std::string product, std::string productGroup, std::string registrationStatus, std::string roleDescription, std::string sdtmTarget, std::string simpleDatatype, std::string submissionValue, std::string synonyms, std::string type, std::string uiHref, std::string valueDomain, std::string variableSet, std::string version, 
	void(* handler)(DefaultSearchResponse, Error, void* )
	, void* userData)
{
	return mdrSearchGetHelper(accessToken,
	q, highlight, start, pageSize, r_class, codelist, conceptId, core, dataStructure, datasetStructure, definition, description, domain, effectiveDate, extensible, href, label, measureType, name, preferredTerm, product, productGroup, registrationStatus, roleDescription, sdtmTarget, simpleDatatype, submissionValue, synonyms, type, uiHref, valueDomain, variableSet, version, 
	handler, userData, true);
}

bool SearchesManager::mdrSearchGetSync(char * accessToken,
	std::string q, std::string highlight, long long start, long long pageSize, std::string r_class, std::string codelist, std::string conceptId, std::string core, std::string dataStructure, std::string datasetStructure, std::string definition, std::string description, std::string domain, std::string effectiveDate, std::string extensible, std::string href, std::string label, std::string measureType, std::string name, std::string preferredTerm, std::string product, std::string productGroup, std::string registrationStatus, std::string roleDescription, std::string sdtmTarget, std::string simpleDatatype, std::string submissionValue, std::string synonyms, std::string type, std::string uiHref, std::string valueDomain, std::string variableSet, std::string version, 
	void(* handler)(DefaultSearchResponse, Error, void* )
	, void* userData)
{
	return mdrSearchGetHelper(accessToken,
	q, highlight, start, pageSize, r_class, codelist, conceptId, core, dataStructure, datasetStructure, definition, description, domain, effectiveDate, extensible, href, label, measureType, name, preferredTerm, product, productGroup, registrationStatus, roleDescription, sdtmTarget, simpleDatatype, submissionValue, synonyms, type, uiHref, valueDomain, variableSet, version, 
	handler, userData, false);
}

static bool mdrSearchScopesGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(_mdr_search_scopes_get_200_response, Error, void* )
	= reinterpret_cast<void(*)(_mdr_search_scopes_get_200_response, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	_mdr_search_scopes_get_200_response out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("_mdr_search_scopes_get_200_response")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "_mdr_search_scopes_get_200_response", "_mdr_search_scopes_get_200_response");
			json_node_free(pJson);

			if ("_mdr_search_scopes_get_200_response" == "std::string") {
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

static bool mdrSearchScopesGetHelper(char * accessToken,
	
	void(* handler)(_mdr_search_scopes_get_200_response, Error, void* )
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

	string url("/mdr/search/scopes");
	int pos;


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
		NetClient::easycurl(SearchesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrSearchScopesGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SearchesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrSearchScopesGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SearchesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SearchesManager::mdrSearchScopesGetAsync(char * accessToken,
	
	void(* handler)(_mdr_search_scopes_get_200_response, Error, void* )
	, void* userData)
{
	return mdrSearchScopesGetHelper(accessToken,
	
	handler, userData, true);
}

bool SearchesManager::mdrSearchScopesGetSync(char * accessToken,
	
	void(* handler)(_mdr_search_scopes_get_200_response, Error, void* )
	, void* userData)
{
	return mdrSearchScopesGetHelper(accessToken,
	
	handler, userData, false);
}

static bool mdrSearchScopesScopeGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(ScopeValues, Error, void* )
	= reinterpret_cast<void(*)(ScopeValues, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	ScopeValues out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("ScopeValues")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "ScopeValues", "ScopeValues");
			json_node_free(pJson);

			if ("ScopeValues" == "std::string") {
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

static bool mdrSearchScopesScopeGetHelper(char * accessToken,
	DefaultSearchScopes scope, 
	void(* handler)(ScopeValues, Error, void* )
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

	string url("/mdr/search/scopes/{scope}");
	int pos;

	string s_scope("{");
	s_scope.append("scope");
	s_scope.append("}");
	pos = url.find(s_scope);
	url.erase(pos, s_scope.length());
	url.insert(pos, stringify(&scope, "DefaultSearchScopes"));

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
		NetClient::easycurl(SearchesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = mdrSearchScopesScopeGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SearchesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), mdrSearchScopesScopeGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SearchesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SearchesManager::mdrSearchScopesScopeGetAsync(char * accessToken,
	DefaultSearchScopes scope, 
	void(* handler)(ScopeValues, Error, void* )
	, void* userData)
{
	return mdrSearchScopesScopeGetHelper(accessToken,
	scope, 
	handler, userData, true);
}

bool SearchesManager::mdrSearchScopesScopeGetSync(char * accessToken,
	DefaultSearchScopes scope, 
	void(* handler)(ScopeValues, Error, void* )
	, void* userData)
{
	return mdrSearchScopesScopeGetHelper(accessToken,
	scope, 
	handler, userData, false);
}

