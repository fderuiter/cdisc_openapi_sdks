#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlAdamProduct.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlAdamProduct::XmlAdamProduct()
{
	//__init();
}

XmlAdamProduct::~XmlAdamProduct()
{
	//__cleanup();
}

void
XmlAdamProduct::__init()
{
	//self = new AdamProduct();
}

void
XmlAdamProduct::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlAdamProduct::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamProduct")) {
			jsonToValue(&self, node, "AdamProduct", "AdamProduct");
		} else {
			
			AdamProduct* obj = static_cast<AdamProduct*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlAdamProduct::XmlAdamProduct(char* json)
{
	this->fromJson(json);
}

char*
XmlAdamProduct::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("AdamProduct")) {
		AdamProduct obj = getSelf();
		node = converttoJson(&obj, "AdamProduct", "");
	}
	else {
		
		AdamProduct obj = static_cast<AdamProduct> (getSelf());
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

AdamProduct
XmlAdamProduct::getSelf()
{
	return self;
}

void
XmlAdamProduct::setSelf(AdamProduct  self)
{
	this->self = self;
}


