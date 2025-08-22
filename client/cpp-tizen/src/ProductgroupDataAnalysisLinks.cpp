#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ProductgroupDataAnalysisLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ProductgroupDataAnalysisLinks::ProductgroupDataAnalysisLinks()
{
	//__init();
}

ProductgroupDataAnalysisLinks::~ProductgroupDataAnalysisLinks()
{
	//__cleanup();
}

void
ProductgroupDataAnalysisLinks::__init()
{
	//self = new ProductgroupRef();
	//new std::list()std::list> adam;
}

void
ProductgroupDataAnalysisLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(adam != NULL) {
	//adam.RemoveAll(true);
	//delete adam;
	//adam = NULL;
	//}
	//
}

void
ProductgroupDataAnalysisLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("ProductgroupRef")) {
			jsonToValue(&self, node, "ProductgroupRef", "ProductgroupRef");
		} else {
			
			ProductgroupRef* obj = static_cast<ProductgroupRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *adamKey = "adam";
	node = json_object_get_member(pJsonObject, adamKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<AdamProductRefElement> new_list;
			AdamProductRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("AdamProductRefElement")) {
					jsonToValue(&inst, temp_json, "AdamProductRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			adam = new_list;
		}
		
	}
}

ProductgroupDataAnalysisLinks::ProductgroupDataAnalysisLinks(char* json)
{
	this->fromJson(json);
}

char*
ProductgroupDataAnalysisLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ProductgroupRef")) {
		ProductgroupRef obj = getSelf();
		node = converttoJson(&obj, "ProductgroupRef", "");
	}
	else {
		
		ProductgroupRef obj = static_cast<ProductgroupRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("AdamProductRefElement")) {
		list<AdamProductRefElement> new_list = static_cast<list <AdamProductRefElement> > (getAdam());
		node = converttoJson(&new_list, "AdamProductRefElement", "array");
	} else {
		node = json_node_alloc();
		list<AdamProductRefElement> new_list = static_cast<list <AdamProductRefElement> > (getAdam());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<AdamProductRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			AdamProductRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *adamKey = "adam";
	json_object_set_member(pJsonObject, adamKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

ProductgroupRef
ProductgroupDataAnalysisLinks::getSelf()
{
	return self;
}

void
ProductgroupDataAnalysisLinks::setSelf(ProductgroupRef  self)
{
	this->self = self;
}

std::list<AdamProductRefElement>
ProductgroupDataAnalysisLinks::getAdam()
{
	return adam;
}

void
ProductgroupDataAnalysisLinks::setAdam(std::list <AdamProductRefElement> adam)
{
	this->adam = adam;
}


