#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlProductgroupDataTabulation.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlProductgroupDataTabulation::XmlProductgroupDataTabulation()
{
	//__init();
}

XmlProductgroupDataTabulation::~XmlProductgroupDataTabulation()
{
	//__cleanup();
}

void
XmlProductgroupDataTabulation::__init()
{
	//self = new ProductgroupDataTabulation();
}

void
XmlProductgroupDataTabulation::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlProductgroupDataTabulation::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("ProductgroupDataTabulation")) {
			jsonToValue(&self, node, "ProductgroupDataTabulation", "ProductgroupDataTabulation");
		} else {
			
			ProductgroupDataTabulation* obj = static_cast<ProductgroupDataTabulation*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlProductgroupDataTabulation::XmlProductgroupDataTabulation(char* json)
{
	this->fromJson(json);
}

char*
XmlProductgroupDataTabulation::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ProductgroupDataTabulation")) {
		ProductgroupDataTabulation obj = getSelf();
		node = converttoJson(&obj, "ProductgroupDataTabulation", "");
	}
	else {
		
		ProductgroupDataTabulation obj = static_cast<ProductgroupDataTabulation> (getSelf());
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

ProductgroupDataTabulation
XmlProductgroupDataTabulation::getSelf()
{
	return self;
}

void
XmlProductgroupDataTabulation::setSelf(ProductgroupDataTabulation  self)
{
	this->self = self;
}


