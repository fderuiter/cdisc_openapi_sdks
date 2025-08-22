#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportSendigVariablesTable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportSendigVariablesTable::ExportSendigVariablesTable()
{
	//__init();
}

ExportSendigVariablesTable::~ExportSendigVariablesTable()
{
	//__cleanup();
}

void
ExportSendigVariablesTable::__init()
{
	//new std::list()std::list> variables;
}

void
ExportSendigVariablesTable::__cleanup()
{
	//if(variables != NULL) {
	//variables.RemoveAll(true);
	//delete variables;
	//variables = NULL;
	//}
	//
}

void
ExportSendigVariablesTable::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *variablesKey = "variables";
	node = json_object_get_member(pJsonObject, variablesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ExportSendigVariablesRow> new_list;
			ExportSendigVariablesRow inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ExportSendigVariablesRow")) {
					jsonToValue(&inst, temp_json, "ExportSendigVariablesRow", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			variables = new_list;
		}
		
	}
}

ExportSendigVariablesTable::ExportSendigVariablesTable(char* json)
{
	this->fromJson(json);
}

char*
ExportSendigVariablesTable::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ExportSendigVariablesRow")) {
		list<ExportSendigVariablesRow> new_list = static_cast<list <ExportSendigVariablesRow> > (getVariables());
		node = converttoJson(&new_list, "ExportSendigVariablesRow", "array");
	} else {
		node = json_node_alloc();
		list<ExportSendigVariablesRow> new_list = static_cast<list <ExportSendigVariablesRow> > (getVariables());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ExportSendigVariablesRow>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ExportSendigVariablesRow obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *variablesKey = "variables";
	json_object_set_member(pJsonObject, variablesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<ExportSendigVariablesRow>
ExportSendigVariablesTable::getVariables()
{
	return variables;
}

void
ExportSendigVariablesTable::setVariables(std::list <ExportSendigVariablesRow> variables)
{
	this->variables = variables;
}


