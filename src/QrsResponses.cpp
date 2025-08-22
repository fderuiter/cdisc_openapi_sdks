#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "QrsResponses.h"

using namespace std;
using namespace Tizen::ArtikCloud;

QrsResponses::QrsResponses()
{
	//__init();
}

QrsResponses::~QrsResponses()
{
	//__cleanup();
}

void
QrsResponses::__init()
{
	//ordinal = std::string();
	//_links = new QrsResponseLinks();
}

void
QrsResponses::__cleanup()
{
	//if(ordinal != NULL) {
	//
	//delete ordinal;
	//ordinal = NULL;
	//}
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
QrsResponses::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *ordinalKey = "ordinal";
	node = json_object_get_member(pJsonObject, ordinalKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&ordinal, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("QrsResponseLinks")) {
			jsonToValue(&_links, node, "QrsResponseLinks", "QrsResponseLinks");
		} else {
			
			QrsResponseLinks* obj = static_cast<QrsResponseLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

QrsResponses::QrsResponses(char* json)
{
	this->fromJson(json);
}

char*
QrsResponses::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getOrdinal();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *ordinalKey = "ordinal";
	json_object_set_member(pJsonObject, ordinalKey, node);
	if (isprimitive("QrsResponseLinks")) {
		QrsResponseLinks obj = getLinks();
		node = converttoJson(&obj, "QrsResponseLinks", "");
	}
	else {
		
		QrsResponseLinks obj = static_cast<QrsResponseLinks> (getLinks());
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

std::string
QrsResponses::getOrdinal()
{
	return ordinal;
}

void
QrsResponses::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

QrsResponseLinks
QrsResponses::getLinks()
{
	return _links;
}

void
QrsResponses::setLinks(QrsResponseLinks  _links)
{
	this->_links = _links;
}


