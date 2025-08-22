#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportAdamVariablesTable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportAdamVariablesTable::ExportAdamVariablesTable()
{
	//__init();
}

ExportAdamVariablesTable::~ExportAdamVariablesTable()
{
	//__cleanup();
}

void
ExportAdamVariablesTable::__init()
{
	//new std::list()std::list> variables;
}

void
ExportAdamVariablesTable::__cleanup()
{
	//if(variables != NULL) {
	//variables.RemoveAll(true);
	//delete variables;
	//variables = NULL;
	//}
	//
}

void
ExportAdamVariablesTable::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *variablesKey = "variables";
	node = json_object_get_member(pJsonObject, variablesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ExportAdamVariablesRow> new_list;
			ExportAdamVariablesRow inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ExportAdamVariablesRow")) {
					jsonToValue(&inst, temp_json, "ExportAdamVariablesRow", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			variables = new_list;
		}
		
	}
}

ExportAdamVariablesTable::ExportAdamVariablesTable(char* json)
{
	this->fromJson(json);
}

char*
ExportAdamVariablesTable::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ExportAdamVariablesRow")) {
		list<ExportAdamVariablesRow> new_list = static_cast<list <ExportAdamVariablesRow> > (getVariables());
		node = converttoJson(&new_list, "ExportAdamVariablesRow", "array");
	} else {
		node = json_node_alloc();
		list<ExportAdamVariablesRow> new_list = static_cast<list <ExportAdamVariablesRow> > (getVariables());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ExportAdamVariablesRow>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ExportAdamVariablesRow obj = *it;
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

std::list<ExportAdamVariablesRow>
ExportAdamVariablesTable::getVariables()
{
	return variables;
}

void
ExportAdamVariablesTable::setVariables(std::list <ExportAdamVariablesRow> variables)
{
	this->variables = variables;
}


