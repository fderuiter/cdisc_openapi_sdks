#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCdashProduct.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCdashProduct::XmlCdashProduct()
{
	//__init();
}

XmlCdashProduct::~XmlCdashProduct()
{
	//__cleanup();
}

void
XmlCdashProduct::__init()
{
	//self = new CdashProduct();
}

void
XmlCdashProduct::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCdashProduct::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashProduct")) {
			jsonToValue(&self, node, "CdashProduct", "CdashProduct");
		} else {
			
			CdashProduct* obj = static_cast<CdashProduct*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCdashProduct::XmlCdashProduct(char* json)
{
	this->fromJson(json);
}

char*
XmlCdashProduct::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashProduct")) {
		CdashProduct obj = getSelf();
		node = converttoJson(&obj, "CdashProduct", "");
	}
	else {
		
		CdashProduct obj = static_cast<CdashProduct> (getSelf());
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

CdashProduct
XmlCdashProduct::getSelf()
{
	return self;
}

void
XmlCdashProduct::setSelf(CdashProduct  self)
{
	this->self = self;
}


