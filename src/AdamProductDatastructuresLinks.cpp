#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "AdamProductDatastructuresLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

AdamProductDatastructuresLinks::AdamProductDatastructuresLinks()
{
	//__init();
}

AdamProductDatastructuresLinks::~AdamProductDatastructuresLinks()
{
	//__cleanup();
}

void
AdamProductDatastructuresLinks::__init()
{
	//self = new AdamProductDatastructuresRef();
	//priorVersion = new AdamProductDatastructuresRef();
	//new std::list()std::list> dataStructures;
}

void
AdamProductDatastructuresLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(priorVersion != NULL) {
	//
	//delete priorVersion;
	//priorVersion = NULL;
	//}
	//if(dataStructures != NULL) {
	//dataStructures.RemoveAll(true);
	//delete dataStructures;
	//dataStructures = NULL;
	//}
	//
}

void
AdamProductDatastructuresLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamProductDatastructuresRef")) {
			jsonToValue(&self, node, "AdamProductDatastructuresRef", "AdamProductDatastructuresRef");
		} else {
			
			AdamProductDatastructuresRef* obj = static_cast<AdamProductDatastructuresRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamProductDatastructuresRef")) {
			jsonToValue(&priorVersion, node, "AdamProductDatastructuresRef", "AdamProductDatastructuresRef");
		} else {
			
			AdamProductDatastructuresRef* obj = static_cast<AdamProductDatastructuresRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *dataStructuresKey = "dataStructures";
	node = json_object_get_member(pJsonObject, dataStructuresKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<AdamDatastructureRefElement> new_list;
			AdamDatastructureRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("AdamDatastructureRefElement")) {
					jsonToValue(&inst, temp_json, "AdamDatastructureRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			dataStructures = new_list;
		}
		
	}
}

AdamProductDatastructuresLinks::AdamProductDatastructuresLinks(char* json)
{
	this->fromJson(json);
}

char*
AdamProductDatastructuresLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("AdamProductDatastructuresRef")) {
		AdamProductDatastructuresRef obj = getSelf();
		node = converttoJson(&obj, "AdamProductDatastructuresRef", "");
	}
	else {
		
		AdamProductDatastructuresRef obj = static_cast<AdamProductDatastructuresRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("AdamProductDatastructuresRef")) {
		AdamProductDatastructuresRef obj = getPriorVersion();
		node = converttoJson(&obj, "AdamProductDatastructuresRef", "");
	}
	else {
		
		AdamProductDatastructuresRef obj = static_cast<AdamProductDatastructuresRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	if (isprimitive("AdamDatastructureRefElement")) {
		list<AdamDatastructureRefElement> new_list = static_cast<list <AdamDatastructureRefElement> > (getDataStructures());
		node = converttoJson(&new_list, "AdamDatastructureRefElement", "array");
	} else {
		node = json_node_alloc();
		list<AdamDatastructureRefElement> new_list = static_cast<list <AdamDatastructureRefElement> > (getDataStructures());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<AdamDatastructureRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			AdamDatastructureRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *dataStructuresKey = "dataStructures";
	json_object_set_member(pJsonObject, dataStructuresKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

AdamProductDatastructuresRef
AdamProductDatastructuresLinks::getSelf()
{
	return self;
}

void
AdamProductDatastructuresLinks::setSelf(AdamProductDatastructuresRef  self)
{
	this->self = self;
}

AdamProductDatastructuresRef
AdamProductDatastructuresLinks::getPriorVersion()
{
	return priorVersion;
}

void
AdamProductDatastructuresLinks::setPriorVersion(AdamProductDatastructuresRef  priorVersion)
{
	this->priorVersion = priorVersion;
}

std::list<AdamDatastructureRefElement>
AdamProductDatastructuresLinks::getDataStructures()
{
	return dataStructures;
}

void
AdamProductDatastructuresLinks::setDataStructures(std::list <AdamDatastructureRefElement> dataStructures)
{
	this->dataStructures = dataStructures;
}


