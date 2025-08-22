#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportCtTerm.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportCtTerm::ExportCtTerm()
{
	//__init();
}

ExportCtTerm::~ExportCtTerm()
{
	//__cleanup();
}

void
ExportCtTerm::__init()
{
	//bundle1 = std::string();
	//new std::list()std::list> cDISCSynonyms;
	//bundle2 = std::string();
}

void
ExportCtTerm::__cleanup()
{
	//if(bundle1 != NULL) {
	//
	//delete bundle1;
	//bundle1 = NULL;
	//}
	//if(cDISCSynonyms != NULL) {
	//cDISCSynonyms.RemoveAll(true);
	//delete cDISCSynonyms;
	//cDISCSynonyms = NULL;
	//}
	//if(bundle2 != NULL) {
	//
	//delete bundle2;
	//bundle2 = NULL;
	//}
	//
}

void
ExportCtTerm::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *bundle1Key = "bundle-1";
	node = json_object_get_member(pJsonObject, bundle1Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&bundle1, node, "std::string", "");
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
	const gchar *bundle2Key = "bundle-2";
	node = json_object_get_member(pJsonObject, bundle2Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&bundle2, node, "std::string", "");
		} else {
			
		}
	}
}

ExportCtTerm::ExportCtTerm(char* json)
{
	this->fromJson(json);
}

char*
ExportCtTerm::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getBundle1();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *bundle1Key = "bundle-1";
	json_object_set_member(pJsonObject, bundle1Key, node);
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
		std::string obj = getBundle2();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *bundle2Key = "bundle-2";
	json_object_set_member(pJsonObject, bundle2Key, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ExportCtTerm::getBundle1()
{
	return bundle1;
}

void
ExportCtTerm::setBundle1(std::string  bundle1)
{
	this->bundle1 = bundle1;
}

std::list<std::string>
ExportCtTerm::getCDISCSynonyms()
{
	return cDISCSynonyms;
}

void
ExportCtTerm::setCDISCSynonyms(std::list <std::string> cDISCSynonyms)
{
	this->cDISCSynonyms = cDISCSynonyms;
}

std::string
ExportCtTerm::getBundle2()
{
	return bundle2;
}

void
ExportCtTerm::setBundle2(std::string  bundle2)
{
	this->bundle2 = bundle2;
}


