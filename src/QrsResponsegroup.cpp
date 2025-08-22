#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "QrsResponsegroup.h"

using namespace std;
using namespace Tizen::ArtikCloud;

QrsResponsegroup::QrsResponsegroup()
{
	//__init();
}

QrsResponsegroup::~QrsResponsegroup()
{
	//__cleanup();
}

void
QrsResponsegroup::__init()
{
	//label = std::string();
	//_links = new QrsResponsegroupLinks();
}

void
QrsResponsegroup::__cleanup()
{
	//if(label != NULL) {
	//
	//delete label;
	//label = NULL;
	//}
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
QrsResponsegroup::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *labelKey = "label";
	node = json_object_get_member(pJsonObject, labelKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&label, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("QrsResponsegroupLinks")) {
			jsonToValue(&_links, node, "QrsResponsegroupLinks", "QrsResponsegroupLinks");
		} else {
			
			QrsResponsegroupLinks* obj = static_cast<QrsResponsegroupLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

QrsResponsegroup::QrsResponsegroup(char* json)
{
	this->fromJson(json);
}

char*
QrsResponsegroup::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getLabel();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *labelKey = "label";
	json_object_set_member(pJsonObject, labelKey, node);
	if (isprimitive("QrsResponsegroupLinks")) {
		QrsResponsegroupLinks obj = getLinks();
		node = converttoJson(&obj, "QrsResponsegroupLinks", "");
	}
	else {
		
		QrsResponsegroupLinks obj = static_cast<QrsResponsegroupLinks> (getLinks());
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
QrsResponsegroup::getLabel()
{
	return label;
}

void
QrsResponsegroup::setLabel(std::string  label)
{
	this->label = label;
}

QrsResponsegroupLinks
QrsResponsegroup::getLinks()
{
	return _links;
}

void
QrsResponsegroup::setLinks(QrsResponsegroupLinks  _links)
{
	this->_links = _links;
}


