#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportCtCodelist.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportCtCodelist::ExportCtCodelist()
{
	//__init();
}

ExportCtCodelist::~ExportCtCodelist()
{
	//__cleanup();
}

void
ExportCtCodelist::__init()
{
	//code = std::string();
	//codelistCode = std::string();
	//codelistExtensibleYesNo = std::string();
	//codelistName = std::string();
	//cDISCSubmissionValue = std::string();
	//new std::list()std::list> cDISCSynonyms;
	//cDISCDefinition = std::string();
	//nCIPreferredTerm = std::string();
	//standardandDate = std::string();
	//new std::list()std::list> ;
}

void
ExportCtCodelist::__cleanup()
{
	//if(code != NULL) {
	//
	//delete code;
	//code = NULL;
	//}
	//if(codelistCode != NULL) {
	//
	//delete codelistCode;
	//codelistCode = NULL;
	//}
	//if(codelistExtensibleYesNo != NULL) {
	//
	//delete codelistExtensibleYesNo;
	//codelistExtensibleYesNo = NULL;
	//}
	//if(codelistName != NULL) {
	//
	//delete codelistName;
	//codelistName = NULL;
	//}
	//if(cDISCSubmissionValue != NULL) {
	//
	//delete cDISCSubmissionValue;
	//cDISCSubmissionValue = NULL;
	//}
	//if(cDISCSynonyms != NULL) {
	//cDISCSynonyms.RemoveAll(true);
	//delete cDISCSynonyms;
	//cDISCSynonyms = NULL;
	//}
	//if(cDISCDefinition != NULL) {
	//
	//delete cDISCDefinition;
	//cDISCDefinition = NULL;
	//}
	//if(nCIPreferredTerm != NULL) {
	//
	//delete nCIPreferredTerm;
	//nCIPreferredTerm = NULL;
	//}
	//if(standardandDate != NULL) {
	//
	//delete standardandDate;
	//standardandDate = NULL;
	//}
	//if( != NULL) {
	//.RemoveAll(true);
	//delete ;
	// = NULL;
	//}
	//
}

void
ExportCtCodelist::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *codeKey = "Code";
	node = json_object_get_member(pJsonObject, codeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&code, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *codelistCodeKey = "Codelist Code";
	node = json_object_get_member(pJsonObject, codelistCodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&codelistCode, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *codelistExtensibleYesNoKey = "Codelist Extensible (Yes/No)";
	node = json_object_get_member(pJsonObject, codelistExtensibleYesNoKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&codelistExtensibleYesNo, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *codelistNameKey = "Codelist Name";
	node = json_object_get_member(pJsonObject, codelistNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&codelistName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cDISCSubmissionValueKey = "CDISC Submission Value";
	node = json_object_get_member(pJsonObject, cDISCSubmissionValueKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cDISCSubmissionValue, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cDISCSynonymsKey = "CDISC Synonym(s)";
	node = json_object_get_member(pJsonObject, cDISCSynonymsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<std::string> new_list;
			std::string inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("std::string")) {
					jsonToValue(&inst, temp_json, "std::string", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			cDISCSynonyms = new_list;
		}
		
	}
	const gchar *cDISCDefinitionKey = "CDISC Definition";
	node = json_object_get_member(pJsonObject, cDISCDefinitionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cDISCDefinition, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *nCIPreferredTermKey = "NCI Preferred Term";
	node = json_object_get_member(pJsonObject, nCIPreferredTermKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&nCIPreferredTerm, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *standardandDateKey = "Standard and Date";
	node = json_object_get_member(pJsonObject, standardandDateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&standardandDate, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *Key = "";
	node = json_object_get_member(pJsonObject, Key);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ExportCtTerm> new_list;
			ExportCtTerm inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ExportCtTerm")) {
					jsonToValue(&inst, temp_json, "ExportCtTerm", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			 = new_list;
		}
		
	}
}

ExportCtCodelist::ExportCtCodelist(char* json)
{
	this->fromJson(json);
}

char*
ExportCtCodelist::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *codeKey = "Code";
	json_object_set_member(pJsonObject, codeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCodelistCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *codelistCodeKey = "Codelist Code";
	json_object_set_member(pJsonObject, codelistCodeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCodelistExtensibleYesNo();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *codelistExtensibleYesNoKey = "Codelist Extensible (Yes/No)";
	json_object_set_member(pJsonObject, codelistExtensibleYesNoKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCodelistName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *codelistNameKey = "Codelist Name";
	json_object_set_member(pJsonObject, codelistNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCDISCSubmissionValue();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cDISCSubmissionValueKey = "CDISC Submission Value";
	json_object_set_member(pJsonObject, cDISCSubmissionValueKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getCDISCSynonyms());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getCDISCSynonyms());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *cDISCSynonymsKey = "CDISC Synonym(s)";
	json_object_set_member(pJsonObject, cDISCSynonymsKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCDISCDefinition();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cDISCDefinitionKey = "CDISC Definition";
	json_object_set_member(pJsonObject, cDISCDefinitionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getNCIPreferredTerm();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nCIPreferredTermKey = "NCI Preferred Term";
	json_object_set_member(pJsonObject, nCIPreferredTermKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getStandardandDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *standardandDateKey = "Standard and Date";
	json_object_set_member(pJsonObject, standardandDateKey, node);
	if (isprimitive("ExportCtTerm")) {
		list<ExportCtTerm> new_list = static_cast<list <ExportCtTerm> > (get());
		node = converttoJson(&new_list, "ExportCtTerm", "array");
	} else {
		node = json_node_alloc();
		list<ExportCtTerm> new_list = static_cast<list <ExportCtTerm> > (get());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ExportCtTerm>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ExportCtTerm obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *Key = "";
	json_object_set_member(pJsonObject, Key, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ExportCtCodelist::getCode()
{
	return code;
}

void
ExportCtCodelist::setCode(std::string  code)
{
	this->code = code;
}

std::string
ExportCtCodelist::getCodelistCode()
{
	return codelistCode;
}

void
ExportCtCodelist::setCodelistCode(std::string  codelistCode)
{
	this->codelistCode = codelistCode;
}

std::string
ExportCtCodelist::getCodelistExtensibleYesNo()
{
	return codelistExtensibleYesNo;
}

void
ExportCtCodelist::setCodelistExtensibleYesNo(std::string  codelistExtensibleYesNo)
{
	this->codelistExtensibleYesNo = codelistExtensibleYesNo;
}

std::string
ExportCtCodelist::getCodelistName()
{
	return codelistName;
}

void
ExportCtCodelist::setCodelistName(std::string  codelistName)
{
	this->codelistName = codelistName;
}

std::string
ExportCtCodelist::getCDISCSubmissionValue()
{
	return cDISCSubmissionValue;
}

void
ExportCtCodelist::setCDISCSubmissionValue(std::string  cDISCSubmissionValue)
{
	this->cDISCSubmissionValue = cDISCSubmissionValue;
}

std::list<std::string>
ExportCtCodelist::getCDISCSynonyms()
{
	return cDISCSynonyms;
}

void
ExportCtCodelist::setCDISCSynonyms(std::list <std::string> cDISCSynonyms)
{
	this->cDISCSynonyms = cDISCSynonyms;
}

std::string
ExportCtCodelist::getCDISCDefinition()
{
	return cDISCDefinition;
}

void
ExportCtCodelist::setCDISCDefinition(std::string  cDISCDefinition)
{
	this->cDISCDefinition = cDISCDefinition;
}

std::string
ExportCtCodelist::getNCIPreferredTerm()
{
	return nCIPreferredTerm;
}

void
ExportCtCodelist::setNCIPreferredTerm(std::string  nCIPreferredTerm)
{
	this->nCIPreferredTerm = nCIPreferredTerm;
}

std::string
ExportCtCodelist::getStandardandDate()
{
	return standardandDate;
}

void
ExportCtCodelist::setStandardandDate(std::string  standardandDate)
{
	this->standardandDate = standardandDate;
}

std::list<ExportCtTerm>
ExportCtCodelist::get()
{
	return ;
}

void
ExportCtCodelist::set(std::list <ExportCtTerm> )
{
	this-> = ;
}


