#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "AdamProduct.h"

using namespace std;
using namespace Tizen::ArtikCloud;

AdamProduct::AdamProduct()
{
	//__init();
}

AdamProduct::~AdamProduct()
{
	//__cleanup();
}

void
AdamProduct::__init()
{
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//source = std::string();
	//effectiveDate = std::string();
	//registrationStatus = std::string();
	//version = std::string();
	//_links = new AdamProductLinks();
	//new std::list()std::list> dataStructures;
}

void
AdamProduct::__cleanup()
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
	//if(dataStructures != NULL) {
	//dataStructures.RemoveAll(true);
	//delete dataStructures;
	//dataStructures = NULL;
	//}
	//
}

void
AdamProduct::fromJson(char* jsonStr)
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
	

		if (isprimitive("AdamProductLinks")) {
			jsonToValue(&_links, node, "AdamProductLinks", "AdamProductLinks");
		} else {
			
			AdamProductLinks* obj = static_cast<AdamProductLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *dataStructuresKey = "dataStructures";
	node = json_object_get_member(pJsonObject, dataStructuresKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<AdamDatastructure> new_list;
			AdamDatastructure inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("AdamDatastructure")) {
					jsonToValue(&inst, temp_json, "AdamDatastructure", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			dataStructures = new_list;
		}
		
	}
}

AdamProduct::AdamProduct(char* json)
{
	this->fromJson(json);
}

char*
AdamProduct::toJson()
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
	if (isprimitive("AdamProductLinks")) {
		AdamProductLinks obj = getLinks();
		node = converttoJson(&obj, "AdamProductLinks", "");
	}
	else {
		
		AdamProductLinks obj = static_cast<AdamProductLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("AdamDatastructure")) {
		list<AdamDatastructure> new_list = static_cast<list <AdamDatastructure> > (getDataStructures());
		node = converttoJson(&new_list, "AdamDatastructure", "array");
	} else {
		node = json_node_alloc();
		list<AdamDatastructure> new_list = static_cast<list <AdamDatastructure> > (getDataStructures());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<AdamDatastructure>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			AdamDatastructure obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *dataStructuresKey = "dataStructures";
	json_object_set_member(pJsonObject, dataStructuresKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
AdamProduct::getName()
{
	return name;
}

void
AdamProduct::setName(std::string  name)
{
	this->name = name;
}

std::string
AdamProduct::getLabel()
{
	return label;
}

void
AdamProduct::setLabel(std::string  label)
{
	this->label = label;
}

std::string
AdamProduct::getDescription()
{
	return description;
}

void
AdamProduct::setDescription(std::string  description)
{
	this->description = description;
}

std::string
AdamProduct::getSource()
{
	return source;
}

void
AdamProduct::setSource(std::string  source)
{
	this->source = source;
}

std::string
AdamProduct::getEffectiveDate()
{
	return effectiveDate;
}

void
AdamProduct::setEffectiveDate(std::string  effectiveDate)
{
	this->effectiveDate = effectiveDate;
}

std::string
AdamProduct::getRegistrationStatus()
{
	return registrationStatus;
}

void
AdamProduct::setRegistrationStatus(std::string  registrationStatus)
{
	this->registrationStatus = registrationStatus;
}

std::string
AdamProduct::getVersion()
{
	return version;
}

void
AdamProduct::setVersion(std::string  version)
{
	this->version = version;
}

AdamProductLinks
AdamProduct::getLinks()
{
	return _links;
}

void
AdamProduct::setLinks(AdamProductLinks  _links)
{
	this->_links = _links;
}

std::list<AdamDatastructure>
AdamProduct::getDataStructures()
{
	return dataStructures;
}

void
AdamProduct::setDataStructures(std::list <AdamDatastructure> dataStructures)
{
	this->dataStructures = dataStructures;
}


