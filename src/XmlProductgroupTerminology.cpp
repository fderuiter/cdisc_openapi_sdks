#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlProductgroupTerminology.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlProductgroupTerminology::XmlProductgroupTerminology()
{
	//__init();
}

XmlProductgroupTerminology::~XmlProductgroupTerminology()
{
	//__cleanup();
}

void
XmlProductgroupTerminology::__init()
{
	//self = new ProductgroupTerminology();
}

void
XmlProductgroupTerminology::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlProductgroupTerminology::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("ProductgroupTerminology")) {
			jsonToValue(&self, node, "ProductgroupTerminology", "ProductgroupTerminology");
		} else {
			
			ProductgroupTerminology* obj = static_cast<ProductgroupTerminology*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlProductgroupTerminology::XmlProductgroupTerminology(char* json)
{
	this->fromJson(json);
}

char*
XmlProductgroupTerminology::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ProductgroupTerminology")) {
		ProductgroupTerminology obj = getSelf();
		node = converttoJson(&obj, "ProductgroupTerminology", "");
	}
	else {
		
		ProductgroupTerminology obj = static_cast<ProductgroupTerminology> (getSelf());
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

ProductgroupTerminology
XmlProductgroupTerminology::getSelf()
{
	return self;
}

void
XmlProductgroupTerminology::setSelf(ProductgroupTerminology  self)
{
	this->self = self;
}


