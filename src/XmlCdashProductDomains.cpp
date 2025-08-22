#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCdashProductDomains.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCdashProductDomains::XmlCdashProductDomains()
{
	//__init();
}

XmlCdashProductDomains::~XmlCdashProductDomains()
{
	//__cleanup();
}

void
XmlCdashProductDomains::__init()
{
	//self = new CdashProductDomains();
}

void
XmlCdashProductDomains::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCdashProductDomains::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashProductDomains")) {
			jsonToValue(&self, node, "CdashProductDomains", "CdashProductDomains");
		} else {
			
			CdashProductDomains* obj = static_cast<CdashProductDomains*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCdashProductDomains::XmlCdashProductDomains(char* json)
{
	this->fromJson(json);
}

char*
XmlCdashProductDomains::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashProductDomains")) {
		CdashProductDomains obj = getSelf();
		node = converttoJson(&obj, "CdashProductDomains", "");
	}
	else {
		
		CdashProductDomains obj = static_cast<CdashProductDomains> (getSelf());
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

CdashProductDomains
XmlCdashProductDomains::getSelf()
{
	return self;
}

void
XmlCdashProductDomains::setSelf(CdashProductDomains  self)
{
	this->self = self;
}


