#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportCdashigTable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportCdashigTable::ExportCdashigTable()
{
	//__init();
}

ExportCdashigTable::~ExportCdashigTable()
{
	//__cleanup();
}

void
ExportCdashigTable::__init()
{
	//new std::list()std::list> domainvariables;
	//new std::list()std::list> scenariovariables;
}

void
ExportCdashigTable::__cleanup()
{
	//if(domainvariables != NULL) {
	//domainvariables.RemoveAll(true);
	//delete domainvariables;
	//domainvariables = NULL;
	//}
	//if(scenariovariables != NULL) {
	//scenariovariables.RemoveAll(true);
	//delete scenariovariables;
	//scenariovariables = NULL;
	//}
	//
}

void
ExportCdashigTable::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *domainvariablesKey = "domain-variables";
	node = json_object_get_member(pJsonObject, domainvariablesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ExportCdashigDomainVariablesRow> new_list;
			ExportCdashigDomainVariablesRow inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ExportCdashigDomainVariablesRow")) {
					jsonToValue(&inst, temp_json, "ExportCdashigDomainVariablesRow", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			domainvariables = new_list;
		}
		
	}
	const gchar *scenariovariablesKey = "scenario-variables";
	node = json_object_get_member(pJsonObject, scenariovariablesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ExportCdashigScenarioVariablesRow> new_list;
			ExportCdashigScenarioVariablesRow inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ExportCdashigScenarioVariablesRow")) {
					jsonToValue(&inst, temp_json, "ExportCdashigScenarioVariablesRow", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			scenariovariables = new_list;
		}
		
	}
}

ExportCdashigTable::ExportCdashigTable(char* json)
{
	this->fromJson(json);
}

char*
ExportCdashigTable::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ExportCdashigDomainVariablesRow")) {
		list<ExportCdashigDomainVariablesRow> new_list = static_cast<list <ExportCdashigDomainVariablesRow> > (getDomainvariables());
		node = converttoJson(&new_list, "ExportCdashigDomainVariablesRow", "array");
	} else {
		node = json_node_alloc();
		list<ExportCdashigDomainVariablesRow> new_list = static_cast<list <ExportCdashigDomainVariablesRow> > (getDomainvariables());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ExportCdashigDomainVariablesRow>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ExportCdashigDomainVariablesRow obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *domainvariablesKey = "domain-variables";
	json_object_set_member(pJsonObject, domainvariablesKey, node);
	if (isprimitive("ExportCdashigScenarioVariablesRow")) {
		list<ExportCdashigScenarioVariablesRow> new_list = static_cast<list <ExportCdashigScenarioVariablesRow> > (getScenariovariables());
		node = converttoJson(&new_list, "ExportCdashigScenarioVariablesRow", "array");
	} else {
		node = json_node_alloc();
		list<ExportCdashigScenarioVariablesRow> new_list = static_cast<list <ExportCdashigScenarioVariablesRow> > (getScenariovariables());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ExportCdashigScenarioVariablesRow>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ExportCdashigScenarioVariablesRow obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *scenariovariablesKey = "scenario-variables";
	json_object_set_member(pJsonObject, scenariovariablesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<ExportCdashigDomainVariablesRow>
ExportCdashigTable::getDomainvariables()
{
	return domainvariables;
}

void
ExportCdashigTable::setDomainvariables(std::list <ExportCdashigDomainVariablesRow> domainvariables)
{
	this->domainvariables = domainvariables;
}

std::list<ExportCdashigScenarioVariablesRow>
ExportCdashigTable::getScenariovariables()
{
	return scenariovariables;
}

void
ExportCdashigTable::setScenariovariables(std::list <ExportCdashigScenarioVariablesRow> scenariovariables)
{
	this->scenariovariables = scenariovariables;
}


