/*
 * ExportCtCodelist.h
 *
 * 
 */

#ifndef _ExportCtCodelist_H_
#define _ExportCtCodelist_H_


#include <string>
#include "ExportCtTerm.h"
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

class ExportCtCodelist : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportCtCodelist();
	ExportCtCodelist(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportCtCodelist();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getCode();

	/*! \brief Set 
	 */
	void setCode(std::string  code);
	/*! \brief Get 
	 */
	std::string getCodelistCode();

	/*! \brief Set 
	 */
	void setCodelistCode(std::string  codelistCode);
	/*! \brief Get 
	 */
	std::string getCodelistExtensibleYesNo();

	/*! \brief Set 
	 */
	void setCodelistExtensibleYesNo(std::string  codelistExtensibleYesNo);
	/*! \brief Get 
	 */
	std::string getCodelistName();

	/*! \brief Set 
	 */
	void setCodelistName(std::string  codelistName);
	/*! \brief Get 
	 */
	std::string getCDISCSubmissionValue();

	/*! \brief Set 
	 */
	void setCDISCSubmissionValue(std::string  cDISCSubmissionValue);
	/*! \brief Get 
	 */
	std::list<std::string> getCDISCSynonyms();

	/*! \brief Set 
	 */
	void setCDISCSynonyms(std::list <std::string> cDISCSynonyms);
	/*! \brief Get 
	 */
	std::string getCDISCDefinition();

	/*! \brief Set 
	 */
	void setCDISCDefinition(std::string  cDISCDefinition);
	/*! \brief Get 
	 */
	std::string getNCIPreferredTerm();

	/*! \brief Set 
	 */
	void setNCIPreferredTerm(std::string  nCIPreferredTerm);
	/*! \brief Get 
	 */
	std::string getStandardandDate();

	/*! \brief Set 
	 */
	void setStandardandDate(std::string  standardandDate);
	/*! \brief Get 
	 */
	std::list<ExportCtTerm> get();

	/*! \brief Set 
	 */
	void set(std::list <ExportCtTerm> );

private:
	std::string code;
	std::string codelistCode;
	std::string codelistExtensibleYesNo;
	std::string codelistName;
	std::string cDISCSubmissionValue;
	std::list <std::string>cDISCSynonyms;
	std::string cDISCDefinition;
	std::string nCIPreferredTerm;
	std::string standardandDate;
	std::list <ExportCtTerm>;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportCtCodelist_H_ */
