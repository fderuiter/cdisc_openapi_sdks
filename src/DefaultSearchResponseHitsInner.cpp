#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "DefaultSearchResponse_hits_inner.h"

using namespace std;
using namespace Tizen::ArtikCloud;

DefaultSearchResponse_hits_inner::DefaultSearchResponse_hits_inner()
{
	//__init();
}

DefaultSearchResponse_hits_inner::~DefaultSearchResponse_hits_inner()
{
	//__cleanup();
}

void
DefaultSearchResponse_hits_inner::__init()
{
	//href = std::string();
	//type = std::string();
}

void
DefaultSearchResponse_hits_inner::__cleanup()
{
	//if(href != NULL) {
	//
	//delete href;
	//href = NULL;
	//}
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//
}

void
DefaultSearchResponse_hits_inner::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *hrefKey = "href";
	node = json_object_get_member(pJsonObject, hrefKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&href, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *typeKey = "type";
	node = json_object_get_member(pJsonObject, typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&type, node, "std::string", "");
		} else {
			
		}
	}
}

DefaultSearchResponse_hits_inner::DefaultSearchResponse_hits_inner(char* json)
{
	this->fromJson(json);
}

char*
DefaultSearchResponse_hits_inner::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getHref();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *hrefKey = "href";
	json_object_set_member(pJsonObject, hrefKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *typeKey = "type";
	json_object_set_member(pJsonObject, typeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
DefaultSearchResponse_hits_inner::getHref()
{
	return href;
}

void
DefaultSearchResponse_hits_inner::setHref(std::string  href)
{
	this->href = href;
}

std::string
DefaultSearchResponse_hits_inner::getType()
{
	return type;
}

void
DefaultSearchResponse_hits_inner::setType(std::string  type)
{
	this->type = type;
}


