#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSdtmProduct.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSdtmProduct::XmlSdtmProduct()
{
	//__init();
}

XmlSdtmProduct::~XmlSdtmProduct()
{
	//__cleanup();
}

void
XmlSdtmProduct::__init()
{
	//self = new SdtmProduct();
}

void
XmlSdtmProduct::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSdtmProduct::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmProduct")) {
			jsonToValue(&self, node, "SdtmProduct", "SdtmProduct");
		} else {
			
			SdtmProduct* obj = static_cast<SdtmProduct*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSdtmProduct::XmlSdtmProduct(char* json)
{
	this->fromJson(json);
}

char*
XmlSdtmProduct::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmProduct")) {
		SdtmProduct obj = getSelf();
		node = converttoJson(&obj, "SdtmProduct", "");
	}
	else {
		
		SdtmProduct obj = static_cast<SdtmProduct> (getSelf());
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

SdtmProduct
XmlSdtmProduct::getSelf()
{
	return self;
}

void
XmlSdtmProduct::setSelf(SdtmProduct  self)
{
	this->self = self;
}


