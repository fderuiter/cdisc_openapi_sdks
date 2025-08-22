#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "QrsItem.h"

using namespace std;
using namespace Tizen::ArtikCloud;

QrsItem::QrsItem()
{
	//__init();
}

QrsItem::~QrsItem()
{
	//__cleanup();
}

void
QrsItem::__init()
{
	//ordinal = std::string();
	//label = std::string();
	//questionText = std::string();
	//_links = new QrsItemLinks();
}

void
QrsItem::__cleanup()
{
	//if(ordinal != NULL) {
	//
	//delete ordinal;
	//ordinal = NULL;
	//}
	//if(label != NULL) {
	//
	//delete label;
	//label = NULL;
	//}
	//if(questionText != NULL) {
	//
	//delete questionText;
	//questionText = NULL;
	//}
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
QrsItem::fromJson(char* jsonStr)
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
	const gchar *labelKey = "label";
	node = json_object_get_member(pJsonObject, labelKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&label, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *questionTextKey = "questionText";
	node = json_object_get_member(pJsonObject, questionTextKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&questionText, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("QrsItemLinks")) {
			jsonToValue(&_links, node, "QrsItemLinks", "QrsItemLinks");
		} else {
			
			QrsItemLinks* obj = static_cast<QrsItemLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

QrsItem::QrsItem(char* json)
{
	this->fromJson(json);
}

char*
QrsItem::toJson()
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
	if (isprimitive("std::string")) {
		std::string obj = getLabel();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *labelKey = "label";
	json_object_set_member(pJsonObject, labelKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getQuestionText();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *questionTextKey = "questionText";
	json_object_set_member(pJsonObject, questionTextKey, node);
	if (isprimitive("QrsItemLinks")) {
		QrsItemLinks obj = getLinks();
		node = converttoJson(&obj, "QrsItemLinks", "");
	}
	else {
		
		QrsItemLinks obj = static_cast<QrsItemLinks> (getLinks());
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
QrsItem::getOrdinal()
{
	return ordinal;
}

void
QrsItem::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
QrsItem::getLabel()
{
	return label;
}

void
QrsItem::setLabel(std::string  label)
{
	this->label = label;
}

std::string
QrsItem::getQuestionText()
{
	return questionText;
}

void
QrsItem::setQuestionText(std::string  questionText)
{
	this->questionText = questionText;
}

QrsItemLinks
QrsItem::getLinks()
{
	return _links;
}

void
QrsItem::setLinks(QrsItemLinks  _links)
{
	this->_links = _links;
}


