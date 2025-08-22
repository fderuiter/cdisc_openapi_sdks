#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ScopeValues.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ScopeValues::ScopeValues()
{
	//__init();
}

ScopeValues::~ScopeValues()
{
	//__cleanup();
}

void
ScopeValues::__init()
{
	//total = double(0);
	//hasMore = bool(false);
	//new std::list()std::list> values;
}

void
ScopeValues::__cleanup()
{
	//if(total != NULL) {
	//
	//delete total;
	//total = NULL;
	//}
	//if(hasMore != NULL) {
	//
	//delete hasMore;
	//hasMore = NULL;
	//}
	//if(values != NULL) {
	//values.RemoveAll(true);
	//delete values;
	//values = NULL;
	//}
	//
}

void
ScopeValues::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *totalKey = "total";
	node = json_object_get_member(pJsonObject, totalKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&total, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&total);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *hasMoreKey = "hasMore";
	node = json_object_get_member(pJsonObject, hasMoreKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&hasMore, node, "bool", "");
		} else {
			
		}
	}
	const gchar *valuesKey = "values";
	node = json_object_get_member(pJsonObject, valuesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<std::string> new_list;
			std::string inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("std::string")) {
					jsonToValue(&inst, temp_json, "std::string", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			values = new_list;
		}
		
	}
}

ScopeValues::ScopeValues(char* json)
{
	this->fromJson(json);
}

char*
ScopeValues::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("long long")) {
		long long obj = getTotal();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getTotal());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *totalKey = "total";
	json_object_set_member(pJsonObject, totalKey, node);
	if (isprimitive("bool")) {
		bool obj = getHasMore();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *hasMoreKey = "hasMore";
	json_object_set_member(pJsonObject, hasMoreKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getValues());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getValues());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *valuesKey = "values";
	json_object_set_member(pJsonObject, valuesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

long long
ScopeValues::getTotal()
{
	return total;
}

void
ScopeValues::setTotal(long long  total)
{
	this->total = total;
}

bool
ScopeValues::getHasMore()
{
	return hasMore;
}

void
ScopeValues::setHasMore(bool  hasMore)
{
	this->hasMore = hasMore;
}

std::list<std::string>
ScopeValues::getValues()
{
	return values;
}

void
ScopeValues::setValues(std::list <std::string> values)
{
	this->values = values;
}


