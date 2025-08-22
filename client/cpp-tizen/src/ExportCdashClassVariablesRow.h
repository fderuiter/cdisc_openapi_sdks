/*
 * ExportCdashClassVariablesRow.h
 *
 * 
 */

#ifndef _ExportCdashClassVariablesRow_H_
#define _ExportCdashClassVariablesRow_H_


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

class ExportCdashClassVariablesRow : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportCdashClassVariablesRow();
	ExportCdashClassVariablesRow(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportCdashClassVariablesRow();

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
	std::string getVariableOrder();

	/*! \brief Set 
	 */
	void setVariableOrder(std::string  variableOrder);
	/*! \brief Get 
	 */
	std::string getCDASHVariable();

	/*! \brief Set 
	 */
	void setCDASHVariable(std::string  cDASHVariable);
	/*! \brief Get 
	 */
	std::string getCDASHVariableLabel();

	/*! \brief Set 
	 */
	void setCDASHVariableLabel(std::string  cDASHVariableLabel);
	/*! \brief Get 
	 */
	std::string getDRAFTCDASHDefinition();

	/*! \brief Set 
	 */
	void setDRAFTCDASHDefinition(std::string  dRAFTCDASHDefinition);
	/*! \brief Get 
	 */
	std::string getDomainSpecific();

	/*! \brief Set 
	 */
	void setDomainSpecific(std::string  domainSpecific);
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
	std::list<std::string> getSDTMTarget();

	/*! \brief Set 
	 */
	void setSDTMTarget(std::list <std::string> sDTMTarget);
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
	std::string variableOrder;
	std::string cDASHVariable;
	std::string cDASHVariableLabel;
	std::string dRAFTCDASHDefinition;
	std::string domainSpecific;
	std::string questionText;
	std::string prompt;
	std::string type;
	std::list <std::string>sDTMTarget;
	std::string mappingInstructions;
	std::string controlledTerminologyCodelistName;
	std::string implementationNotes;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportCdashClassVariablesRow_H_ */
