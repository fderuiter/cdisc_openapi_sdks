#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CtPackageCodelists.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CtPackageCodelists::CtPackageCodelists()
{
	//__init();
}

CtPackageCodelists::~CtPackageCodelists()
{
	//__cleanup();
}

void
CtPackageCodelists::__init()
{
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//source = std::string();
	//effectiveDate = std::string();
	//registrationStatus = std::string();
	//version = std::string();
	//_links = new CtPackageCodelistsLinks();
}

void
CtPackageCodelists::__cleanup()
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
CtPackageCodelists::fromJson(char* jsonStr)
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
	

		if (isprimitive("CtPackageCodelistsLinks")) {
			jsonToValue(&_links, node, "CtPackageCodelistsLinks", "CtPackageCodelistsLinks");
		} else {
			
			CtPackageCodelistsLinks* obj = static_cast<CtPackageCodelistsLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

CtPackageCodelists::CtPackageCodelists(char* json)
{
	this->fromJson(json);
}

char*
CtPackageCodelists::toJson()
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
	if (isprimitive("CtPackageCodelistsLinks")) {
		CtPackageCodelistsLinks obj = getLinks();
		node = converttoJson(&obj, "CtPackageCodelistsLinks", "");
	}
	else {
		
		CtPackageCodelistsLinks obj = static_cast<CtPackageCodelistsLinks> (getLinks());
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
CtPackageCodelists::getName()
{
	return name;
}

void
CtPackageCodelists::setName(std::string  name)
{
	this->name = name;
}

std::string
CtPackageCodelists::getLabel()
{
	return label;
}

void
CtPackageCodelists::setLabel(std::string  label)
{
	this->label = label;
}

std::string
CtPackageCodelists::getDescription()
{
	return description;
}

void
CtPackageCodelists::setDescription(std::string  description)
{
	this->description = description;
}

std::string
CtPackageCodelists::getSource()
{
	return source;
}

void
CtPackageCodelists::setSource(std::string  source)
{
	this->source = source;
}

std::string
CtPackageCodelists::getEffectiveDate()
{
	return effectiveDate;
}

void
CtPackageCodelists::setEffectiveDate(std::string  effectiveDate)
{
	this->effectiveDate = effectiveDate;
}

std::string
CtPackageCodelists::getRegistrationStatus()
{
	return registrationStatus;
}

void
CtPackageCodelists::setRegistrationStatus(std::string  registrationStatus)
{
	this->registrationStatus = registrationStatus;
}

std::string
CtPackageCodelists::getVersion()
{
	return version;
}

void
CtPackageCodelists::setVersion(std::string  version)
{
	this->version = version;
}

CtPackageCodelistsLinks
CtPackageCodelists::getLinks()
{
	return _links;
}

void
CtPackageCodelists::setLinks(CtPackageCodelistsLinks  _links)
{
	this->_links = _links;
}


