#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCdashDomain.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCdashDomain::XmlCdashDomain()
{
	//__init();
}

XmlCdashDomain::~XmlCdashDomain()
{
	//__cleanup();
}

void
XmlCdashDomain::__init()
{
	//self = new CdashDomain();
}

void
XmlCdashDomain::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCdashDomain::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashDomain")) {
			jsonToValue(&self, node, "CdashDomain", "CdashDomain");
		} else {
			
			CdashDomain* obj = static_cast<CdashDomain*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCdashDomain::XmlCdashDomain(char* json)
{
	this->fromJson(json);
}

char*
XmlCdashDomain::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashDomain")) {
		CdashDomain obj = getSelf();
		node = converttoJson(&obj, "CdashDomain", "");
	}
	else {
		
		CdashDomain obj = static_cast<CdashDomain> (getSelf());
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

CdashDomain
XmlCdashDomain::getSelf()
{
	return self;
}

void
XmlCdashDomain::setSelf(CdashDomain  self)
{
	this->self = self;
}


