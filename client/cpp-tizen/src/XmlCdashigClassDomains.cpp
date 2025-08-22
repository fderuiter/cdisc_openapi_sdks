#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCdashigClassDomains.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCdashigClassDomains::XmlCdashigClassDomains()
{
	//__init();
}

XmlCdashigClassDomains::~XmlCdashigClassDomains()
{
	//__cleanup();
}

void
XmlCdashigClassDomains::__init()
{
	//self = new CdashigClassDomains();
}

void
XmlCdashigClassDomains::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCdashigClassDomains::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigClassDomains")) {
			jsonToValue(&self, node, "CdashigClassDomains", "CdashigClassDomains");
		} else {
			
			CdashigClassDomains* obj = static_cast<CdashigClassDomains*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCdashigClassDomains::XmlCdashigClassDomains(char* json)
{
	this->fromJson(json);
}

char*
XmlCdashigClassDomains::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigClassDomains")) {
		CdashigClassDomains obj = getSelf();
		node = converttoJson(&obj, "CdashigClassDomains", "");
	}
	else {
		
		CdashigClassDomains obj = static_cast<CdashigClassDomains> (getSelf());
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

CdashigClassDomains
XmlCdashigClassDomains::getSelf()
{
	return self;
}

void
XmlCdashigClassDomains::setSelf(CdashigClassDomains  self)
{
	this->self = self;
}


