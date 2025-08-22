#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCdashigProduct.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCdashigProduct::XmlCdashigProduct()
{
	//__init();
}

XmlCdashigProduct::~XmlCdashigProduct()
{
	//__cleanup();
}

void
XmlCdashigProduct::__init()
{
	//self = new CdashigProduct();
}

void
XmlCdashigProduct::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCdashigProduct::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigProduct")) {
			jsonToValue(&self, node, "CdashigProduct", "CdashigProduct");
		} else {
			
			CdashigProduct* obj = static_cast<CdashigProduct*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCdashigProduct::XmlCdashigProduct(char* json)
{
	this->fromJson(json);
}

char*
XmlCdashigProduct::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigProduct")) {
		CdashigProduct obj = getSelf();
		node = converttoJson(&obj, "CdashigProduct", "");
	}
	else {
		
		CdashigProduct obj = static_cast<CdashigProduct> (getSelf());
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

CdashigProduct
XmlCdashigProduct::getSelf()
{
	return self;
}

void
XmlCdashigProduct::setSelf(CdashigProduct  self)
{
	this->self = self;
}


