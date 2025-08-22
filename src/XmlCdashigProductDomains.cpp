#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCdashigProductDomains.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCdashigProductDomains::XmlCdashigProductDomains()
{
	//__init();
}

XmlCdashigProductDomains::~XmlCdashigProductDomains()
{
	//__cleanup();
}

void
XmlCdashigProductDomains::__init()
{
	//self = new CdashigProductDomains();
}

void
XmlCdashigProductDomains::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCdashigProductDomains::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigProductDomains")) {
			jsonToValue(&self, node, "CdashigProductDomains", "CdashigProductDomains");
		} else {
			
			CdashigProductDomains* obj = static_cast<CdashigProductDomains*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCdashigProductDomains::XmlCdashigProductDomains(char* json)
{
	this->fromJson(json);
}

char*
XmlCdashigProductDomains::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigProductDomains")) {
		CdashigProductDomains obj = getSelf();
		node = converttoJson(&obj, "CdashigProductDomains", "");
	}
	else {
		
		CdashigProductDomains obj = static_cast<CdashigProductDomains> (getSelf());
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

CdashigProductDomains
XmlCdashigProductDomains::getSelf()
{
	return self;
}

void
XmlCdashigProductDomains::setSelf(CdashigProductDomains  self)
{
	this->self = self;
}


