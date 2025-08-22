#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmProduct.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmProduct::SdtmProduct()
{
	//__init();
}

SdtmProduct::~SdtmProduct()
{
	//__cleanup();
}

void
SdtmProduct::__init()
{
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//source = std::string();
	//effectiveDate = std::string();
	//registrationStatus = std::string();
	//version = std::string();
	//_links = new SdtmProductLinks();
	//new std::list()std::list> classes;
	//new std::list()std::list> datasets;
}

void
SdtmProduct::__cleanup()
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
	//if(classes != NULL) {
	//classes.RemoveAll(true);
	//delete classes;
	//classes = NULL;
	//}
	//if(datasets != NULL) {
	//datasets.RemoveAll(true);
	//delete datasets;
	//datasets = NULL;
	//}
	//
}

void
SdtmProduct::fromJson(char* jsonStr)
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
	

		if (isprimitive("SdtmProductLinks")) {
			jsonToValue(&_links, node, "SdtmProductLinks", "SdtmProductLinks");
		} else {
			
			SdtmProductLinks* obj = static_cast<SdtmProductLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *classesKey = "classes";
	node = json_object_get_member(pJsonObject, classesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmClass> new_list;
			SdtmClass inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmClass")) {
					jsonToValue(&inst, temp_json, "SdtmClass", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			classes = new_list;
		}
		
	}
	const gchar *datasetsKey = "datasets";
	node = json_object_get_member(pJsonObject, datasetsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmDataset> new_list;
			SdtmDataset inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmDataset")) {
					jsonToValue(&inst, temp_json, "SdtmDataset", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			datasets = new_list;
		}
		
	}
}

SdtmProduct::SdtmProduct(char* json)
{
	this->fromJson(json);
}

char*
SdtmProduct::toJson()
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
	if (isprimitive("SdtmProductLinks")) {
		SdtmProductLinks obj = getLinks();
		node = converttoJson(&obj, "SdtmProductLinks", "");
	}
	else {
		
		SdtmProductLinks obj = static_cast<SdtmProductLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("SdtmClass")) {
		list<SdtmClass> new_list = static_cast<list <SdtmClass> > (getClasses());
		node = converttoJson(&new_list, "SdtmClass", "array");
	} else {
		node = json_node_alloc();
		list<SdtmClass> new_list = static_cast<list <SdtmClass> > (getClasses());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmClass>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmClass obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *classesKey = "classes";
	json_object_set_member(pJsonObject, classesKey, node);
	if (isprimitive("SdtmDataset")) {
		list<SdtmDataset> new_list = static_cast<list <SdtmDataset> > (getDatasets());
		node = converttoJson(&new_list, "SdtmDataset", "array");
	} else {
		node = json_node_alloc();
		list<SdtmDataset> new_list = static_cast<list <SdtmDataset> > (getDatasets());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmDataset>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmDataset obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *datasetsKey = "datasets";
	json_object_set_member(pJsonObject, datasetsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
SdtmProduct::getName()
{
	return name;
}

void
SdtmProduct::setName(std::string  name)
{
	this->name = name;
}

std::string
SdtmProduct::getLabel()
{
	return label;
}

void
SdtmProduct::setLabel(std::string  label)
{
	this->label = label;
}

std::string
SdtmProduct::getDescription()
{
	return description;
}

void
SdtmProduct::setDescription(std::string  description)
{
	this->description = description;
}

std::string
SdtmProduct::getSource()
{
	return source;
}

void
SdtmProduct::setSource(std::string  source)
{
	this->source = source;
}

std::string
SdtmProduct::getEffectiveDate()
{
	return effectiveDate;
}

void
SdtmProduct::setEffectiveDate(std::string  effectiveDate)
{
	this->effectiveDate = effectiveDate;
}

std::string
SdtmProduct::getRegistrationStatus()
{
	return registrationStatus;
}

void
SdtmProduct::setRegistrationStatus(std::string  registrationStatus)
{
	this->registrationStatus = registrationStatus;
}

std::string
SdtmProduct::getVersion()
{
	return version;
}

void
SdtmProduct::setVersion(std::string  version)
{
	this->version = version;
}

SdtmProductLinks
SdtmProduct::getLinks()
{
	return _links;
}

void
SdtmProduct::setLinks(SdtmProductLinks  _links)
{
	this->_links = _links;
}

std::list<SdtmClass>
SdtmProduct::getClasses()
{
	return classes;
}

void
SdtmProduct::setClasses(std::list <SdtmClass> classes)
{
	this->classes = classes;
}

std::list<SdtmDataset>
SdtmProduct::getDatasets()
{
	return datasets;
}

void
SdtmProduct::setDatasets(std::list <SdtmDataset> datasets)
{
	this->datasets = datasets;
}


