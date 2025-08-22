#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "DefaultSearchResponse.h"

using namespace std;
using namespace Tizen::ArtikCloud;

DefaultSearchResponse::DefaultSearchResponse()
{
	//__init();
}

DefaultSearchResponse::~DefaultSearchResponse()
{
	//__cleanup();
}

void
DefaultSearchResponse::__init()
{
	//new std::list()std::list> hits;
	//totalHits = double(0);
}

void
DefaultSearchResponse::__cleanup()
{
	//if(hits != NULL) {
	//hits.RemoveAll(true);
	//delete hits;
	//hits = NULL;
	//}
	//if(totalHits != NULL) {
	//
	//delete totalHits;
	//totalHits = NULL;
	//}
	//
}

void
DefaultSearchResponse::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *hitsKey = "hits";
	node = json_object_get_member(pJsonObject, hitsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<DefaultSearchResponse_hits_inner> new_list;
			DefaultSearchResponse_hits_inner inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("DefaultSearchResponse_hits_inner")) {
					jsonToValue(&inst, temp_json, "DefaultSearchResponse_hits_inner", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			hits = new_list;
		}
		
	}
	const gchar *totalHitsKey = "totalHits";
	node = json_object_get_member(pJsonObject, totalHitsKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&totalHits, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&totalHits);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

DefaultSearchResponse::DefaultSearchResponse(char* json)
{
	this->fromJson(json);
}

char*
DefaultSearchResponse::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("DefaultSearchResponse_hits_inner")) {
		list<DefaultSearchResponse_hits_inner> new_list = static_cast<list <DefaultSearchResponse_hits_inner> > (getHits());
		node = converttoJson(&new_list, "DefaultSearchResponse_hits_inner", "array");
	} else {
		node = json_node_alloc();
		list<DefaultSearchResponse_hits_inner> new_list = static_cast<list <DefaultSearchResponse_hits_inner> > (getHits());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<DefaultSearchResponse_hits_inner>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			DefaultSearchResponse_hits_inner obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *hitsKey = "hits";
	json_object_set_member(pJsonObject, hitsKey, node);
	if (isprimitive("long long")) {
		long long obj = getTotalHits();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getTotalHits());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *totalHitsKey = "totalHits";
	json_object_set_member(pJsonObject, totalHitsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<DefaultSearchResponse_hits_inner>
DefaultSearchResponse::getHits()
{
	return hits;
}

void
DefaultSearchResponse::setHits(std::list <DefaultSearchResponse_hits_inner> hits)
{
	this->hits = hits;
}

long long
DefaultSearchResponse::getTotalHits()
{
	return totalHits;
}

void
DefaultSearchResponse::setTotalHits(long long  totalHits)
{
	this->totalHits = totalHits;
}


