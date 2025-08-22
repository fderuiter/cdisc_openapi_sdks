#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SendigDatasets.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SendigDatasets::SendigDatasets()
{
	//__init();
}

SendigDatasets::~SendigDatasets()
{
	//__cleanup();
}

void
SendigDatasets::__init()
{
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//source = std::string();
	//effectiveDate = std::string();
	//registrationStatus = std::string();
	//version = std::string();
	//_links = new SendigDatasetsLinks();
}

void
SendigDatasets::__cleanup()
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
	//if(source != NULL) {
	//
	//delete source;
	//source = NULL;
	//}
	//if(effectiveDate != NULL) {
	//
	//delete effectiveDate;
	//effectiveDate = NULL;
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
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
SendigDatasets::fromJson(char* jsonStr)
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
	const gchar *sourceKey = "source";
	node = json_object_get_member(pJsonObject, sourceKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&source, node, "std::string", "");
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
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigDatasetsLinks")) {
			jsonToValue(&_links, node, "SendigDatasetsLinks", "SendigDatasetsLinks");
		} else {
			
			SendigDatasetsLinks* obj = static_cast<SendigDatasetsLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

SendigDatasets::SendigDatasets(char* json)
{
	this->fromJson(json);
}

char*
SendigDatasets::toJson()
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
		std::string obj = getSource();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *sourceKey = "source";
	json_object_set_member(pJsonObject, sourceKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getEffectiveDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *effectiveDateKey = "effectiveDate";
	json_object_set_member(pJsonObject, effectiveDateKey, node);
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
	if (isprimitive("SendigDatasetsLinks")) {
		SendigDatasetsLinks obj = getLinks();
		node = converttoJson(&obj, "SendigDatasetsLinks", "");
	}
	else {
		
		SendigDatasetsLinks obj = static_cast<SendigDatasetsLinks> (getLinks());
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
SendigDatasets::getName()
{
	return name;
}

void
SendigDatasets::setName(std::string  name)
{
	this->name = name;
}

std::string
SendigDatasets::getLabel()
{
	return label;
}

void
SendigDatasets::setLabel(std::string  label)
{
	this->label = label;
}

std::string
SendigDatasets::getDescription()
{
	return description;
}

void
SendigDatasets::setDescription(std::string  description)
{
	this->description = description;
}

std::string
SendigDatasets::getSource()
{
	return source;
}

void
SendigDatasets::setSource(std::string  source)
{
	this->source = source;
}

std::string
SendigDatasets::getEffectiveDate()
{
	return effectiveDate;
}

void
SendigDatasets::setEffectiveDate(std::string  effectiveDate)
{
	this->effectiveDate = effectiveDate;
}

std::string
SendigDatasets::getRegistrationStatus()
{
	return registrationStatus;
}

void
SendigDatasets::setRegistrationStatus(std::string  registrationStatus)
{
	this->registrationStatus = registrationStatus;
}

std::string
SendigDatasets::getVersion()
{
	return version;
}

void
SendigDatasets::setVersion(std::string  version)
{
	this->version = version;
}

SendigDatasetsLinks
SendigDatasets::getLinks()
{
	return _links;
}

void
SendigDatasets::setLinks(SendigDatasetsLinks  _links)
{
	this->_links = _links;
}


