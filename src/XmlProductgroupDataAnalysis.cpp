#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlProductgroupDataAnalysis.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlProductgroupDataAnalysis::XmlProductgroupDataAnalysis()
{
	//__init();
}

XmlProductgroupDataAnalysis::~XmlProductgroupDataAnalysis()
{
	//__cleanup();
}

void
XmlProductgroupDataAnalysis::__init()
{
	//self = new ProductgroupDataAnalysis();
}

void
XmlProductgroupDataAnalysis::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlProductgroupDataAnalysis::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("ProductgroupDataAnalysis")) {
			jsonToValue(&self, node, "ProductgroupDataAnalysis", "ProductgroupDataAnalysis");
		} else {
			
			ProductgroupDataAnalysis* obj = static_cast<ProductgroupDataAnalysis*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlProductgroupDataAnalysis::XmlProductgroupDataAnalysis(char* json)
{
	this->fromJson(json);
}

char*
XmlProductgroupDataAnalysis::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ProductgroupDataAnalysis")) {
		ProductgroupDataAnalysis obj = getSelf();
		node = converttoJson(&obj, "ProductgroupDataAnalysis", "");
	}
	else {
		
		ProductgroupDataAnalysis obj = static_cast<ProductgroupDataAnalysis> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

ProductgroupDataAnalysis
XmlProductgroupDataAnalysis::getSelf()
{
	return self;
}

void
XmlProductgroupDataAnalysis::setSelf(ProductgroupDataAnalysis  self)
{
	this->self = self;
}


