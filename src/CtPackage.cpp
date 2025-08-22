#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CtPackage.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CtPackage::CtPackage()
{
	//__init();
}

CtPackage::~CtPackage()
{
	//__cleanup();
}

void
CtPackage::__init()
{
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//source = std::string();
	//effectiveDate = std::string();
	//registrationStatus = std::string();
	//version = std::string();
	//_links = new CtPackageLinks();
	//new std::list()std::list> codelists;
}

void
CtPackage::__cleanup()
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
	//if(codelists != NULL) {
	//codelists.RemoveAll(true);
	//delete codelists;
	//codelists = NULL;
	//}
	//
}

void
CtPackage::fromJson(char* jsonStr)
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
	

		if (isprimitive("CtPackageLinks")) {
			jsonToValue(&_links, node, "CtPackageLinks", "CtPackageLinks");
		} else {
			
			CtPackageLinks* obj = static_cast<CtPackageLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *codelistsKey = "codelists";
	node = json_object_get_member(pJsonObject, codelistsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CtPackageCodelists> new_list;
			CtPackageCodelists inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CtPackageCodelists")) {
					jsonToValue(&inst, temp_json, "CtPackageCodelists", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			codelists = new_list;
		}
		
	}
}

CtPackage::CtPackage(char* json)
{
	this->fromJson(json);
}

char*
CtPackage::toJson()
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
	if (isprimitive("CtPackageLinks")) {
		CtPackageLinks obj = getLinks();
		node = converttoJson(&obj, "CtPackageLinks", "");
	}
	else {
		
		CtPackageLinks obj = static_cast<CtPackageLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("CtPackageCodelists")) {
		list<CtPackageCodelists> new_list = static_cast<list <CtPackageCodelists> > (getCodelists());
		node = converttoJson(&new_list, "CtPackageCodelists", "array");
	} else {
		node = json_node_alloc();
		list<CtPackageCodelists> new_list = static_cast<list <CtPackageCodelists> > (getCodelists());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CtPackageCodelists>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CtPackageCodelists obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *codelistsKey = "codelists";
	json_object_set_member(pJsonObject, codelistsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
CtPackage::getName()
{
	return name;
}

void
CtPackage::setName(std::string  name)
{
	this->name = name;
}

std::string
CtPackage::getLabel()
{
	return label;
}

void
CtPackage::setLabel(std::string  label)
{
	this->label = label;
}

std::string
CtPackage::getDescription()
{
	return description;
}

void
CtPackage::setDescription(std::string  description)
{
	this->description = description;
}

std::string
CtPackage::getSource()
{
	return source;
}

void
CtPackage::setSource(std::string  source)
{
	this->source = source;
}

std::string
CtPackage::getEffectiveDate()
{
	return effectiveDate;
}

void
CtPackage::setEffectiveDate(std::string  effectiveDate)
{
	this->effectiveDate = effectiveDate;
}

std::string
CtPackage::getRegistrationStatus()
{
	return registrationStatus;
}

void
CtPackage::setRegistrationStatus(std::string  registrationStatus)
{
	this->registrationStatus = registrationStatus;
}

std::string
CtPackage::getVersion()
{
	return version;
}

void
CtPackage::setVersion(std::string  version)
{
	this->version = version;
}

CtPackageLinks
CtPackage::getLinks()
{
	return _links;
}

void
CtPackage::setLinks(CtPackageLinks  _links)
{
	this->_links = _links;
}

std::list<CtPackageCodelists>
CtPackage::getCodelists()
{
	return codelists;
}

void
CtPackage::setCodelists(std::list <CtPackageCodelists> codelists)
{
	this->codelists = codelists;
}


