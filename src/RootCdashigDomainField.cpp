#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RootCdashigDomainField.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RootCdashigDomainField::RootCdashigDomainField()
{
	//__init();
}

RootCdashigDomainField::~RootCdashigDomainField()
{
	//__cleanup();
}

void
RootCdashigDomainField::__init()
{
	//_links = new RootCdashigDomainFieldLinks();
}

void
RootCdashigDomainField::__cleanup()
{
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
RootCdashigDomainField::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCdashigDomainFieldLinks")) {
			jsonToValue(&_links, node, "RootCdashigDomainFieldLinks", "RootCdashigDomainFieldLinks");
		} else {
			
			RootCdashigDomainFieldLinks* obj = static_cast<RootCdashigDomainFieldLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

RootCdashigDomainField::RootCdashigDomainField(char* json)
{
	this->fromJson(json);
}

char*
RootCdashigDomainField::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootCdashigDomainFieldLinks")) {
		RootCdashigDomainFieldLinks obj = getLinks();
		node = converttoJson(&obj, "RootCdashigDomainFieldLinks", "");
	}
	else {
		
		RootCdashigDomainFieldLinks obj = static_cast<RootCdashigDomainFieldLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

RootCdashigDomainFieldLinks
RootCdashigDomainField::getLinks()
{
	return _links;
}

void
RootCdashigDomainField::setLinks(RootCdashigDomainFieldLinks  _links)
{
	this->_links = _links;
}


