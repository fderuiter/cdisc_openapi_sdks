#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSdtmigProduct.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSdtmigProduct::XmlSdtmigProduct()
{
	//__init();
}

XmlSdtmigProduct::~XmlSdtmigProduct()
{
	//__cleanup();
}

void
XmlSdtmigProduct::__init()
{
	//self = new SdtmigProduct();
}

void
XmlSdtmigProduct::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSdtmigProduct::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigProduct")) {
			jsonToValue(&self, node, "SdtmigProduct", "SdtmigProduct");
		} else {
			
			SdtmigProduct* obj = static_cast<SdtmigProduct*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSdtmigProduct::XmlSdtmigProduct(char* json)
{
	this->fromJson(json);
}

char*
XmlSdtmigProduct::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmigProduct")) {
		SdtmigProduct obj = getSelf();
		node = converttoJson(&obj, "SdtmigProduct", "");
	}
	else {
		
		SdtmigProduct obj = static_cast<SdtmigProduct> (getSelf());
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

SdtmigProduct
XmlSdtmigProduct::getSelf()
{
	return self;
}

void
XmlSdtmigProduct::setSelf(SdtmigProduct  self)
{
	this->self = self;
}


