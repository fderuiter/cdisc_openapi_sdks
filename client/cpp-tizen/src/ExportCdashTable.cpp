#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportCdashTable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportCdashTable::ExportCdashTable()
{
	//__init();
}

ExportCdashTable::~ExportCdashTable()
{
	//__cleanup();
}

void
ExportCdashTable::__init()
{
	//new std::list()std::list> classvariables;
	//new std::list()std::list> domainvariables;
}

void
ExportCdashTable::__cleanup()
{
	//if(classvariables != NULL) {
	//classvariables.RemoveAll(true);
	//delete classvariables;
	//classvariables = NULL;
	//}
	//if(domainvariables != NULL) {
	//domainvariables.RemoveAll(true);
	//delete domainvariables;
	//domainvariables = NULL;
	//}
	//
}

void
ExportCdashTable::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *classvariablesKey = "class-variables";
	node = json_object_get_member(pJsonObject, classvariablesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ExportCdashClassVariablesRow> new_list;
			ExportCdashClassVariablesRow inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ExportCdashClassVariablesRow")) {
					jsonToValue(&inst, temp_json, "ExportCdashClassVariablesRow", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			classvariables = new_list;
		}
		
	}
	const gchar *domainvariablesKey = "domain-variables";
	node = json_object_get_member(pJsonObject, domainvariablesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ExportCdashDomainVariablesRow> new_list;
			ExportCdashDomainVariablesRow inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ExportCdashDomainVariablesRow")) {
					jsonToValue(&inst, temp_json, "ExportCdashDomainVariablesRow", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			domainvariables = new_list;
		}
		
	}
}

ExportCdashTable::ExportCdashTable(char* json)
{
	this->fromJson(json);
}

char*
ExportCdashTable::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ExportCdashClassVariablesRow")) {
		list<ExportCdashClassVariablesRow> new_list = static_cast<list <ExportCdashClassVariablesRow> > (getClassvariables());
		node = converttoJson(&new_list, "ExportCdashClassVariablesRow", "array");
	} else {
		node = json_node_alloc();
		list<ExportCdashClassVariablesRow> new_list = static_cast<list <ExportCdashClassVariablesRow> > (getClassvariables());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ExportCdashClassVariablesRow>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ExportCdashClassVariablesRow obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *classvariablesKey = "class-variables";
	json_object_set_member(pJsonObject, classvariablesKey, node);
	if (isprimitive("ExportCdashDomainVariablesRow")) {
		list<ExportCdashDomainVariablesRow> new_list = static_cast<list <ExportCdashDomainVariablesRow> > (getDomainvariables());
		node = converttoJson(&new_list, "ExportCdashDomainVariablesRow", "array");
	} else {
		node = json_node_alloc();
		list<ExportCdashDomainVariablesRow> new_list = static_cast<list <ExportCdashDomainVariablesRow> > (getDomainvariables());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ExportCdashDomainVariablesRow>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ExportCdashDomainVariablesRow obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *domainvariablesKey = "domain-variables";
	json_object_set_member(pJsonObject, domainvariablesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<ExportCdashClassVariablesRow>
ExportCdashTable::getClassvariables()
{
	return classvariables;
}

void
ExportCdashTable::setClassvariables(std::list <ExportCdashClassVariablesRow> classvariables)
{
	this->classvariables = classvariables;
}

std::list<ExportCdashDomainVariablesRow>
ExportCdashTable::getDomainvariables()
{
	return domainvariables;
}

void
ExportCdashTable::setDomainvariables(std::list <ExportCdashDomainVariablesRow> domainvariables)
{
	this->domainvariables = domainvariables;
}


