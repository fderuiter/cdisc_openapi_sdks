#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RootCdashClassField.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RootCdashClassField::RootCdashClassField()
{
	//__init();
}

RootCdashClassField::~RootCdashClassField()
{
	//__cleanup();
}

void
RootCdashClassField::__init()
{
	//_links = new RootCdashClassFieldLinks();
}

void
RootCdashClassField::__cleanup()
{
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
RootCdashClassField::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCdashClassFieldLinks")) {
			jsonToValue(&_links, node, "RootCdashClassFieldLinks", "RootCdashClassFieldLinks");
		} else {
			
			RootCdashClassFieldLinks* obj = static_cast<RootCdashClassFieldLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

RootCdashClassField::RootCdashClassField(char* json)
{
	this->fromJson(json);
}

char*
RootCdashClassField::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootCdashClassFieldLinks")) {
		RootCdashClassFieldLinks obj = getLinks();
		node = converttoJson(&obj, "RootCdashClassFieldLinks", "");
	}
	else {
		
		RootCdashClassFieldLinks obj = static_cast<RootCdashClassFieldLinks> (getLinks());
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

RootCdashClassFieldLinks
RootCdashClassField::getLinks()
{
	return _links;
}

void
RootCdashClassField::setLinks(RootCdashClassFieldLinks  _links)
{
	this->_links = _links;
}


