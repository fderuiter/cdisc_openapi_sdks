#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashProduct.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashProduct::CdashProduct()
{
	//__init();
}

CdashProduct::~CdashProduct()
{
	//__cleanup();
}

void
CdashProduct::__init()
{
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//source = std::string();
	//effectiveDate = std::string();
	//registrationStatus = std::string();
	//version = std::string();
	//_links = new CdashProductLinks();
	//new std::list()std::list> classes;
	//new std::list()std::list> domains;
}

void
CdashProduct::__cleanup()
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
	//if(domains != NULL) {
	//domains.RemoveAll(true);
	//delete domains;
	//domains = NULL;
	//}
	//
}

void
CdashProduct::fromJson(char* jsonStr)
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
	

		if (isprimitive("CdashProductLinks")) {
			jsonToValue(&_links, node, "CdashProductLinks", "CdashProductLinks");
		} else {
			
			CdashProductLinks* obj = static_cast<CdashProductLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *classesKey = "classes";
	node = json_object_get_member(pJsonObject, classesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashClass> new_list;
			CdashClass inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashClass")) {
					jsonToValue(&inst, temp_json, "CdashClass", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			classes = new_list;
		}
		
	}
	const gchar *domainsKey = "domains";
	node = json_object_get_member(pJsonObject, domainsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashDomain> new_list;
			CdashDomain inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashDomain")) {
					jsonToValue(&inst, temp_json, "CdashDomain", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			domains = new_list;
		}
		
	}
}

CdashProduct::CdashProduct(char* json)
{
	this->fromJson(json);
}

char*
CdashProduct::toJson()
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
	if (isprimitive("CdashProductLinks")) {
		CdashProductLinks obj = getLinks();
		node = converttoJson(&obj, "CdashProductLinks", "");
	}
	else {
		
		CdashProductLinks obj = static_cast<CdashProductLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("CdashClass")) {
		list<CdashClass> new_list = static_cast<list <CdashClass> > (getClasses());
		node = converttoJson(&new_list, "CdashClass", "array");
	} else {
		node = json_node_alloc();
		list<CdashClass> new_list = static_cast<list <CdashClass> > (getClasses());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashClass>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashClass obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *classesKey = "classes";
	json_object_set_member(pJsonObject, classesKey, node);
	if (isprimitive("CdashDomain")) {
		list<CdashDomain> new_list = static_cast<list <CdashDomain> > (getDomains());
		node = converttoJson(&new_list, "CdashDomain", "array");
	} else {
		node = json_node_alloc();
		list<CdashDomain> new_list = static_cast<list <CdashDomain> > (getDomains());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashDomain>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashDomain obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *domainsKey = "domains";
	json_object_set_member(pJsonObject, domainsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
CdashProduct::getName()
{
	return name;
}

void
CdashProduct::setName(std::string  name)
{
	this->name = name;
}

std::string
CdashProduct::getLabel()
{
	return label;
}

void
CdashProduct::setLabel(std::string  label)
{
	this->label = label;
}

std::string
CdashProduct::getDescription()
{
	return description;
}

void
CdashProduct::setDescription(std::string  description)
{
	this->description = description;
}

std::string
CdashProduct::getSource()
{
	return source;
}

void
CdashProduct::setSource(std::string  source)
{
	this->source = source;
}

std::string
CdashProduct::getEffectiveDate()
{
	return effectiveDate;
}

void
CdashProduct::setEffectiveDate(std::string  effectiveDate)
{
	this->effectiveDate = effectiveDate;
}

std::string
CdashProduct::getRegistrationStatus()
{
	return registrationStatus;
}

void
CdashProduct::setRegistrationStatus(std::string  registrationStatus)
{
	this->registrationStatus = registrationStatus;
}

std::string
CdashProduct::getVersion()
{
	return version;
}

void
CdashProduct::setVersion(std::string  version)
{
	this->version = version;
}

CdashProductLinks
CdashProduct::getLinks()
{
	return _links;
}

void
CdashProduct::setLinks(CdashProductLinks  _links)
{
	this->_links = _links;
}

std::list<CdashClass>
CdashProduct::getClasses()
{
	return classes;
}

void
CdashProduct::setClasses(std::list <CdashClass> classes)
{
	this->classes = classes;
}

std::list<CdashDomain>
CdashProduct::getDomains()
{
	return domains;
}

void
CdashProduct::setDomains(std::list <CdashDomain> domains)
{
	this->domains = domains;
}


