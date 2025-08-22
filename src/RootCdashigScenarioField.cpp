#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RootCdashigScenarioField.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RootCdashigScenarioField::RootCdashigScenarioField()
{
	//__init();
}

RootCdashigScenarioField::~RootCdashigScenarioField()
{
	//__cleanup();
}

void
RootCdashigScenarioField::__init()
{
	//_links = new RootCdashigScenarioFieldLinks();
}

void
RootCdashigScenarioField::__cleanup()
{
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
RootCdashigScenarioField::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCdashigScenarioFieldLinks")) {
			jsonToValue(&_links, node, "RootCdashigScenarioFieldLinks", "RootCdashigScenarioFieldLinks");
		} else {
			
			RootCdashigScenarioFieldLinks* obj = static_cast<RootCdashigScenarioFieldLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

RootCdashigScenarioField::RootCdashigScenarioField(char* json)
{
	this->fromJson(json);
}

char*
RootCdashigScenarioField::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootCdashigScenarioFieldLinks")) {
		RootCdashigScenarioFieldLinks obj = getLinks();
		node = converttoJson(&obj, "RootCdashigScenarioFieldLinks", "");
	}
	else {
		
		RootCdashigScenarioFieldLinks obj = static_cast<RootCdashigScenarioFieldLinks> (getLinks());
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

RootCdashigScenarioFieldLinks
RootCdashigScenarioField::getLinks()
{
	return _links;
}

void
RootCdashigScenarioField::setLinks(RootCdashigScenarioFieldLinks  _links)
{
	this->_links = _links;
}


