#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "QrsProduct.h"

using namespace std;
using namespace Tizen::ArtikCloud;

QrsProduct::QrsProduct()
{
	//__init();
}

QrsProduct::~QrsProduct()
{
	//__cleanup();
}

void
QrsProduct::__init()
{
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//effectiveDate = std::string();
	//untilDate = std::string();
	//registrationStatus = std::string();
	//version = std::string();
	//qrsType = std::string();
	//_links = new QrsProductLinks();
	//new std::list()std::list> items;
}

void
QrsProduct::__cleanup()
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
	//if(items != NULL) {
	//items.RemoveAll(true);
	//delete items;
	//items = NULL;
	//}
	//
}

void
QrsProduct::fromJson(char* jsonStr)
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
	

		if (isprimitive("QrsProductLinks")) {
			jsonToValue(&_links, node, "QrsProductLinks", "QrsProductLinks");
		} else {
			
			QrsProductLinks* obj = static_cast<QrsProductLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *itemsKey = "items";
	node = json_object_get_member(pJsonObject, itemsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<QrsItem> new_list;
			QrsItem inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("QrsItem")) {
					jsonToValue(&inst, temp_json, "QrsItem", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			items = new_list;
		}
		
	}
}

QrsProduct::QrsProduct(char* json)
{
	this->fromJson(json);
}

char*
QrsProduct::toJson()
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
	if (isprimitive("QrsProductLinks")) {
		QrsProductLinks obj = getLinks();
		node = converttoJson(&obj, "QrsProductLinks", "");
	}
	else {
		
		QrsProductLinks obj = static_cast<QrsProductLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("QrsItem")) {
		list<QrsItem> new_list = static_cast<list <QrsItem> > (getItems());
		node = converttoJson(&new_list, "QrsItem", "array");
	} else {
		node = json_node_alloc();
		list<QrsItem> new_list = static_cast<list <QrsItem> > (getItems());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<QrsItem>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			QrsItem obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *itemsKey = "items";
	json_object_set_member(pJsonObject, itemsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
QrsProduct::getName()
{
	return name;
}

void
QrsProduct::setName(std::string  name)
{
	this->name = name;
}

std::string
QrsProduct::getLabel()
{
	return label;
}

void
QrsProduct::setLabel(std::string  label)
{
	this->label = label;
}

std::string
QrsProduct::getDescription()
{
	return description;
}

void
QrsProduct::setDescription(std::string  description)
{
	this->description = description;
}

std::string
QrsProduct::getEffectiveDate()
{
	return effectiveDate;
}

void
QrsProduct::setEffectiveDate(std::string  effectiveDate)
{
	this->effectiveDate = effectiveDate;
}

std::string
QrsProduct::getUntilDate()
{
	return untilDate;
}

void
QrsProduct::setUntilDate(std::string  untilDate)
{
	this->untilDate = untilDate;
}

std::string
QrsProduct::getRegistrationStatus()
{
	return registrationStatus;
}

void
QrsProduct::setRegistrationStatus(std::string  registrationStatus)
{
	this->registrationStatus = registrationStatus;
}

std::string
QrsProduct::getVersion()
{
	return version;
}

void
QrsProduct::setVersion(std::string  version)
{
	this->version = version;
}

std::string
QrsProduct::getQrsType()
{
	return qrsType;
}

void
QrsProduct::setQrsType(std::string  qrsType)
{
	this->qrsType = qrsType;
}

QrsProductLinks
QrsProduct::getLinks()
{
	return _links;
}

void
QrsProduct::setLinks(QrsProductLinks  _links)
{
	this->_links = _links;
}

std::list<QrsItem>
QrsProduct::getItems()
{
	return items;
}

void
QrsProduct::setItems(std::list <QrsItem> items)
{
	this->items = items;
}


