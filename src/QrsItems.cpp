#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "QrsItems.h"

using namespace std;
using namespace Tizen::ArtikCloud;

QrsItems::QrsItems()
{
	//__init();
}

QrsItems::~QrsItems()
{
	//__cleanup();
}

void
QrsItems::__init()
{
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//effectiveDate = std::string();
	//untilDate = std::string();
	//registrationStatus = std::string();
	//version = std::string();
	//qrsType = std::string();
	//_links = new QrsItemsLinks();
}

void
QrsItems::__cleanup()
{
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(label != NULL) {
	//
	//delete label;
	//label = NULL;
	//}
	//if(description != NULL) {
	//
	//delete description;
	//description = NULL;
	//}
	//if(effectiveDate != NULL) {
	//
	//delete effectiveDate;
	//effectiveDate = NULL;
	//}
	//if(untilDate != NULL) {
	//
	//delete untilDate;
	//untilDate = NULL;
	//}
	//if(registrationStatus != NULL) {
	//
	//delete registrationStatus;
	//registrationStatus = NULL;
	//}
	//if(version != NULL) {
	//
	//delete version;
	//version = NULL;
	//}
	//if(qrsType != NULL) {
	//
	//delete qrsType;
	//qrsType = NULL;
	//}
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
QrsItems::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *nameKey = "name";
	node = json_object_get_member(pJsonObject, nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&name, node, "std::string", "");
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
	const gchar *descriptionKey = "description";
	node = json_object_get_member(pJsonObject, descriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&description, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *effectiveDateKey = "effectiveDate";
	node = json_object_get_member(pJsonObject, effectiveDateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&effectiveDate, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *untilDateKey = "untilDate";
	node = json_object_get_member(pJsonObject, untilDateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&untilDate, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *registrationStatusKey = "registrationStatus";
	node = json_object_get_member(pJsonObject, registrationStatusKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&registrationStatus, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *versionKey = "version";
	node = json_object_get_member(pJsonObject, versionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&version, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *qrsTypeKey = "qrsType";
	node = json_object_get_member(pJsonObject, qrsTypeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&qrsType, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("QrsItemsLinks")) {
			jsonToValue(&_links, node, "QrsItemsLinks", "QrsItemsLinks");
		} else {
			
			QrsItemsLinks* obj = static_cast<QrsItemsLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

QrsItems::QrsItems(char* json)
{
	this->fromJson(json);
}

char*
QrsItems::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLabel();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *labelKey = "label";
	json_object_set_member(pJsonObject, labelKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *descriptionKey = "description";
	json_object_set_member(pJsonObject, descriptionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getEffectiveDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *effectiveDateKey = "effectiveDate";
	json_object_set_member(pJsonObject, effectiveDateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUntilDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *untilDateKey = "untilDate";
	json_object_set_member(pJsonObject, untilDateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRegistrationStatus();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *registrationStatusKey = "registrationStatus";
	json_object_set_member(pJsonObject, registrationStatusKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVersion();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *versionKey = "version";
	json_object_set_member(pJsonObject, versionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getQrsType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *qrsTypeKey = "qrsType";
	json_object_set_member(pJsonObject, qrsTypeKey, node);
	if (isprimitive("QrsItemsLinks")) {
		QrsItemsLinks obj = getLinks();
		node = converttoJson(&obj, "QrsItemsLinks", "");
	}
	else {
		
		QrsItemsLinks obj = static_cast<QrsItemsLinks> (getLinks());
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
QrsItems::getName()
{
	return name;
}

void
QrsItems::setName(std::string  name)
{
	this->name = name;
}

std::string
QrsItems::getLabel()
{
	return label;
}

void
QrsItems::setLabel(std::string  label)
{
	this->label = label;
}

std::string
QrsItems::getDescription()
{
	return description;
}

void
QrsItems::setDescription(std::string  description)
{
	this->description = description;
}

std::string
QrsItems::getEffectiveDate()
{
	return effectiveDate;
}

void
QrsItems::setEffectiveDate(std::string  effectiveDate)
{
	this->effectiveDate = effectiveDate;
}

std::string
QrsItems::getUntilDate()
{
	return untilDate;
}

void
QrsItems::setUntilDate(std::string  untilDate)
{
	this->untilDate = untilDate;
}

std::string
QrsItems::getRegistrationStatus()
{
	return registrationStatus;
}

void
QrsItems::setRegistrationStatus(std::string  registrationStatus)
{
	this->registrationStatus = registrationStatus;
}

std::string
QrsItems::getVersion()
{
	return version;
}

void
QrsItems::setVersion(std::string  version)
{
	this->version = version;
}

std::string
QrsItems::getQrsType()
{
	return qrsType;
}

void
QrsItems::setQrsType(std::string  qrsType)
{
	this->qrsType = qrsType;
}

QrsItemsLinks
QrsItems::getLinks()
{
	return _links;
}

void
QrsItems::setLinks(QrsItemsLinks  _links)
{
	this->_links = _links;
}


