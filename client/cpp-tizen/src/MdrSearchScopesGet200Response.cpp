#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "_mdr_search_scopes_get_200_response.h"

using namespace std;
using namespace Tizen::ArtikCloud;

_mdr_search_scopes_get_200_response::_mdr_search_scopes_get_200_response()
{
	//__init();
}

_mdr_search_scopes_get_200_response::~_mdr_search_scopes_get_200_response()
{
	//__cleanup();
}

void
_mdr_search_scopes_get_200_response::__init()
{
	//new std::list()std::list> scopes;
}

void
_mdr_search_scopes_get_200_response::__cleanup()
{
	//if(scopes != NULL) {
	//scopes.RemoveAll(true);
	//delete scopes;
	//scopes = NULL;
	//}
	//
}

void
_mdr_search_scopes_get_200_response::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *scopesKey = "scopes";
	node = json_object_get_member(pJsonObject, scopesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<DefaultSearchScopes> new_list;
			DefaultSearchScopes inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("DefaultSearchScopes")) {
					jsonToValue(&inst, temp_json, "DefaultSearchScopes", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			scopes = new_list;
		}
		
	}
}

_mdr_search_scopes_get_200_response::_mdr_search_scopes_get_200_response(char* json)
{
	this->fromJson(json);
}

char*
_mdr_search_scopes_get_200_response::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("DefaultSearchScopes")) {
		list<DefaultSearchScopes> new_list = static_cast<list <DefaultSearchScopes> > (getScopes());
		node = converttoJson(&new_list, "DefaultSearchScopes", "array");
	} else {
		node = json_node_alloc();
		list<DefaultSearchScopes> new_list = static_cast<list <DefaultSearchScopes> > (getScopes());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<DefaultSearchScopes>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			DefaultSearchScopes obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *scopesKey = "scopes";
	json_object_set_member(pJsonObject, scopesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<DefaultSearchScopes>
_mdr_search_scopes_get_200_response::getScopes()
{
	return scopes;
}

void
_mdr_search_scopes_get_200_response::setScopes(std::list <DefaultSearchScopes> scopes)
{
	this->scopes = scopes;
}


