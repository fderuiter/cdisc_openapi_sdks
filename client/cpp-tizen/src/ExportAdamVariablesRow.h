/*
 * ExportAdamVariablesRow.h
 *
 * 
 */

#ifndef _ExportAdamVariablesRow_H_
#define _ExportAdamVariablesRow_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class ExportAdamVariablesRow : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportAdamVariablesRow();
	ExportAdamVariablesRow(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportAdamVariablesRow();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getVersion();

	/*! \brief Set 
	 */
	void setVersion(std::string  version);
	/*! \brief Get 
	 */
	std::string getDataStructureName();

	/*! \brief Set 
	 */
	void setDataStructureName(std::string  dataStructureName);
	/*! \brief Get 
	 */
	std::string getDatasetName();

	/*! \brief Set 
	 */
	void setDatasetName(std::string  datasetName);
	/*! \brief Get 
	 */
	std::string getVariableGroup();

	/*! \brief Set 
	 */
	void setVariableGroup(std::string  variableGroup);
	/*! \brief Get 
	 */
	std::string getVariableName();

	/*! \brief Set 
	 */
	void setVariableName(std::string  variableName);
	/*! \brief Get 
	 */
	std::string getVariableLabel();

	/*! \brief Set 
	 */
	void setVariableLabel(std::string  variableLabel);
	/*! \brief Get 
	 */
	std::string getType();

	/*! \brief Set 
	 */
	void setType(std::string  type);
	/*! \brief Get 
	 */
	std::string getCodelistControlledTerms();

	/*! \brief Set 
	 */
	void setCodelistControlledTerms(std::string  codelistControlledTerms);
	/*! \brief Get 
	 */
	std::string getCore();

	/*! \brief Set 
	 */
	void setCore(std::string  core);
	/*! \brief Get 
	 */
	std::string getCDISCNotes();

	/*! \brief Set 
	 */
	void setCDISCNotes(std::string  cDISCNotes);

private:
	std::string version;
	std::string dataStructureName;
	std::string datasetName;
	std::string variableGroup;
	std::string variableName;
	std::string variableLabel;
	std::string type;
	std::string codelistControlledTerms;
	std::string core;
	std::string cDISCNotes;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportAdamVariablesRow_H_ */
