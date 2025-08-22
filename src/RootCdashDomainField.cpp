#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RootCdashDomainField.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RootCdashDomainField::RootCdashDomainField()
{
	//__init();
}

RootCdashDomainField::~RootCdashDomainField()
{
	//__cleanup();
}

void
RootCdashDomainField::__init()
{
	//_links = new RootCdashDomainFieldLinks();
}

void
RootCdashDomainField::__cleanup()
{
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
RootCdashDomainField::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCdashDomainFieldLinks")) {
			jsonToValue(&_links, node, "RootCdashDomainFieldLinks", "RootCdashDomainFieldLinks");
		} else {
			
			RootCdashDomainFieldLinks* obj = static_cast<RootCdashDomainFieldLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

RootCdashDomainField::RootCdashDomainField(char* json)
{
	this->fromJson(json);
}

char*
RootCdashDomainField::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootCdashDomainFieldLinks")) {
		RootCdashDomainFieldLinks obj = getLinks();
		node = converttoJson(&obj, "RootCdashDomainFieldLinks", "");
	}
	else {
		
		RootCdashDomainFieldLinks obj = static_cast<RootCdashDomainFieldLinks> (getLinks());
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

RootCdashDomainFieldLinks
RootCdashDomainField::getLinks()
{
	return _links;
}

void
RootCdashDomainField::setLinks(RootCdashDomainFieldLinks  _links)
{
	this->_links = _links;
}


