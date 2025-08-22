#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlProductgroupDataCollection.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlProductgroupDataCollection::XmlProductgroupDataCollection()
{
	//__init();
}

XmlProductgroupDataCollection::~XmlProductgroupDataCollection()
{
	//__cleanup();
}

void
XmlProductgroupDataCollection::__init()
{
	//self = new ProductgroupDataCollection();
}

void
XmlProductgroupDataCollection::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlProductgroupDataCollection::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("ProductgroupDataCollection")) {
			jsonToValue(&self, node, "ProductgroupDataCollection", "ProductgroupDataCollection");
		} else {
			
			ProductgroupDataCollection* obj = static_cast<ProductgroupDataCollection*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlProductgroupDataCollection::XmlProductgroupDataCollection(char* json)
{
	this->fromJson(json);
}

char*
XmlProductgroupDataCollection::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ProductgroupDataCollection")) {
		ProductgroupDataCollection obj = getSelf();
		node = converttoJson(&obj, "ProductgroupDataCollection", "");
	}
	else {
		
		ProductgroupDataCollection obj = static_cast<ProductgroupDataCollection> (getSelf());
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

ProductgroupDataCollection
XmlProductgroupDataCollection::getSelf()
{
	return self;
}

void
XmlProductgroupDataCollection::setSelf(ProductgroupDataCollection  self)
{
	this->self = self;
}


