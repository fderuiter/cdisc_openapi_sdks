#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSendigProduct.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSendigProduct::XmlSendigProduct()
{
	//__init();
}

XmlSendigProduct::~XmlSendigProduct()
{
	//__cleanup();
}

void
XmlSendigProduct::__init()
{
	//self = new SendigProduct();
}

void
XmlSendigProduct::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSendigProduct::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigProduct")) {
			jsonToValue(&self, node, "SendigProduct", "SendigProduct");
		} else {
			
			SendigProduct* obj = static_cast<SendigProduct*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSendigProduct::XmlSendigProduct(char* json)
{
	this->fromJson(json);
}

char*
XmlSendigProduct::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SendigProduct")) {
		SendigProduct obj = getSelf();
		node = converttoJson(&obj, "SendigProduct", "");
	}
	else {
		
		SendigProduct obj = static_cast<SendigProduct> (getSelf());
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

SendigProduct
XmlSendigProduct::getSelf()
{
	return self;
}

void
XmlSendigProduct::setSelf(SendigProduct  self)
{
	this->self = self;
}


