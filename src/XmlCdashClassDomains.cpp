#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCdashClassDomains.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCdashClassDomains::XmlCdashClassDomains()
{
	//__init();
}

XmlCdashClassDomains::~XmlCdashClassDomains()
{
	//__cleanup();
}

void
XmlCdashClassDomains::__init()
{
	//self = new CdashClassDomains();
}

void
XmlCdashClassDomains::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCdashClassDomains::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashClassDomains")) {
			jsonToValue(&self, node, "CdashClassDomains", "CdashClassDomains");
		} else {
			
			CdashClassDomains* obj = static_cast<CdashClassDomains*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCdashClassDomains::XmlCdashClassDomains(char* json)
{
	this->fromJson(json);
}

char*
XmlCdashClassDomains::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashClassDomains")) {
		CdashClassDomains obj = getSelf();
		node = converttoJson(&obj, "CdashClassDomains", "");
	}
	else {
		
		CdashClassDomains obj = static_cast<CdashClassDomains> (getSelf());
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

CdashClassDomains
XmlCdashClassDomains::getSelf()
{
	return self;
}

void
XmlCdashClassDomains::setSelf(CdashClassDomains  self)
{
	this->self = self;
}


