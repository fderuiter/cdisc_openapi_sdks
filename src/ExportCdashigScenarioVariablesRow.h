/*
 * ExportCdashigScenarioVariablesRow.h
 *
 * 
 */

#ifndef _ExportCdashigScenarioVariablesRow_H_
#define _ExportCdashigScenarioVariablesRow_H_


#include <string>
#include <list>
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

class ExportCdashigScenarioVariablesRow : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportCdashigScenarioVariablesRow();
	ExportCdashigScenarioVariablesRow(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportCdashigScenarioVariablesRow();

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
	std::string getRClass();

	/*! \brief Set 
	 */
	void setRClass(std::string  r_class);
	/*! \brief Get 
	 */
	std::string getDomain();

	/*! \brief Set 
	 */
	void setDomain(std::string  domain);
	/*! \brief Get 
	 */
	std::string getDataCollectionScenario();

	/*! \brief Set 
	 */
	void setDataCollectionScenario(std::string  dataCollectionScenario);
	/*! \brief Get 
	 */
	std::string getVariableOrder();

	/*! \brief Set 
	 */
	void setVariableOrder(std::string  variableOrder);
	/*! \brief Get 
	 */
	std::string getCDASHIGVariable();

	/*! \brief Set 
	 */
	void setCDASHIGVariable(std::string  cDASHIGVariable);
	/*! \brief Get 
	 */
	std::string getCDASHIGVariableLabel();

	/*! \brief Set 
	 */
	void setCDASHIGVariableLabel(std::string  cDASHIGVariableLabel);
	/*! \brief Get 
	 */
	std::string getDRAFTCDASHIGDefinition();

	/*! \brief Set 
	 */
	void setDRAFTCDASHIGDefinition(std::string  dRAFTCDASHIGDefinition);
	/*! \brief Get 
	 */
	std::string getQuestionText();

	/*! \brief Set 
	 */
	void setQuestionText(std::string  questionText);
	/*! \brief Get 
	 */
	std::string getPrompt();

	/*! \brief Set 
	 */
	void setPrompt(std::string  prompt);
	/*! \brief Get 
	 */
	std::string getType();

	/*! \brief Set 
	 */
	void setType(std::string  type);
	/*! \brief Get 
	 */
	std::string getCDASHIGCore();

	/*! \brief Set 
	 */
	void setCDASHIGCore(std::string  cDASHIGCore);
	/*! \brief Get 
	 */
	std::string getCaseReportFormCompletionInstructions();

	/*! \brief Set 
	 */
	void setCaseReportFormCompletionInstructions(std::string  caseReportFormCompletionInstructions);
	/*! \brief Get 
	 */
	std::list<std::string> getSDTMIGTarget();

	/*! \brief Set 
	 */
	void setSDTMIGTarget(std::list <std::string> sDTMIGTarget);
	/*! \brief Get 
	 */
	std::string getMappingInstructions();

	/*! \brief Set 
	 */
	void setMappingInstructions(std::string  mappingInstructions);
	/*! \brief Get 
	 */
	std::string getControlledTerminologyCodelistName();

	/*! \brief Set 
	 */
	void setControlledTerminologyCodelistName(std::string  controlledTerminologyCodelistName);
	/*! \brief Get 
	 */
	std::string getImplementationNotes();

	/*! \brief Set 
	 */
	void setImplementationNotes(std::string  implementationNotes);

private:
	std::string version;
	std::string r_class;
	std::string domain;
	std::string dataCollectionScenario;
	std::string variableOrder;
	std::string cDASHIGVariable;
	std::string cDASHIGVariableLabel;
	std::string dRAFTCDASHIGDefinition;
	std::string questionText;
	std::string prompt;
	std::string type;
	std::string cDASHIGCore;
	std::string caseReportFormCompletionInstructions;
	std::list <std::string>sDTMIGTarget;
	std::string mappingInstructions;
	std::string controlledTerminologyCodelistName;
	std::string implementationNotes;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportCdashigScenarioVariablesRow_H_ */
