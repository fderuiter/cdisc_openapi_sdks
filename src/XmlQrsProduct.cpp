#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlQrsProduct.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlQrsProduct::XmlQrsProduct()
{
	//__init();
}

XmlQrsProduct::~XmlQrsProduct()
{
	//__cleanup();
}

void
XmlQrsProduct::__init()
{
	//self = new QrsProduct();
}

void
XmlQrsProduct::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlQrsProduct::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("QrsProduct")) {
			jsonToValue(&self, node, "QrsProduct", "QrsProduct");
		} else {
			
			QrsProduct* obj = static_cast<QrsProduct*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlQrsProduct::XmlQrsProduct(char* json)
{
	this->fromJson(json);
}

char*
XmlQrsProduct::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("QrsProduct")) {
		QrsProduct obj = getSelf();
		node = converttoJson(&obj, "QrsProduct", "");
	}
	else {
		
		QrsProduct obj = static_cast<QrsProduct> (getSelf());
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

QrsProduct
XmlQrsProduct::getSelf()
{
	return self;
}

void
XmlQrsProduct::setSelf(QrsProduct  self)
{
	this->self = self;
}


