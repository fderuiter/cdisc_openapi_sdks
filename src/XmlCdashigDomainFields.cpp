#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCdashigDomainFields.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCdashigDomainFields::XmlCdashigDomainFields()
{
	//__init();
}

XmlCdashigDomainFields::~XmlCdashigDomainFields()
{
	//__cleanup();
}

void
XmlCdashigDomainFields::__init()
{
	//self = new CdashigDomainFields();
}

void
XmlCdashigDomainFields::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCdashigDomainFields::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigDomainFields")) {
			jsonToValue(&self, node, "CdashigDomainFields", "CdashigDomainFields");
		} else {
			
			CdashigDomainFields* obj = static_cast<CdashigDomainFields*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCdashigDomainFields::XmlCdashigDomainFields(char* json)
{
	this->fromJson(json);
}

char*
XmlCdashigDomainFields::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigDomainFields")) {
		CdashigDomainFields obj = getSelf();
		node = converttoJson(&obj, "CdashigDomainFields", "");
	}
	else {
		
		CdashigDomainFields obj = static_cast<CdashigDomainFields> (getSelf());
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

CdashigDomainFields
XmlCdashigDomainFields::getSelf()
{
	return self;
}

void
XmlCdashigDomainFields::setSelf(CdashigDomainFields  self)
{
	this->self = self;
}


