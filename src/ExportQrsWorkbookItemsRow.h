/*
 * ExportQrsWorkbookItemsRow.h
 *
 * 
 */

#ifndef _ExportQrsWorkbookItemsRow_H_
#define _ExportQrsWorkbookItemsRow_H_


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

class ExportQrsWorkbookItemsRow : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportQrsWorkbookItemsRow();
	ExportQrsWorkbookItemsRow(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportQrsWorkbookItemsRow();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getItemSequence();

	/*! \brief Set 
	 */
	void setItemSequence(std::string  itemSequence);
	/*! \brief Get 
	 */
	std::string getTestName();

	/*! \brief Set 
	 */
	void setTestName(std::string  testName);
	/*! \brief Get 
	 */
	std::string getItemText();

	/*! \brief Set 
	 */
	void setItemText(std::string  itemText);
	/*! \brief Get 
	 */
	std::string getTestsCodelistCCode();

	/*! \brief Set 
	 */
	void setTestsCodelistCCode(std::string  testsCodelistCCode);
	/*! \brief Get 
	 */
	std::string getTestsTermCCode();

	/*! \brief Set 
	 */
	void setTestsTermCCode(std::string  testsTermCCode);
	/*! \brief Get 
	 */
	std::string getTestCodesCodelistCCode();

	/*! \brief Set 
	 */
	void setTestCodesCodelistCCode(std::string  testCodesCodelistCCode);
	/*! \brief Get 
	 */
	std::string getTestCodesTermCCode();

	/*! \brief Set 
	 */
	void setTestCodesTermCCode(std::string  testCodesTermCCode);
	/*! \brief Get 
	 */
	std::string getSubcategorysCodelistCCode();

	/*! \brief Set 
	 */
	void setSubcategorysCodelistCCode(std::string  subcategorysCodelistCCode);
	/*! \brief Get 
	 */
	std::string getSubcategorysTermCCode();

	/*! \brief Set 
	 */
	void setSubcategorysTermCCode(std::string  subcategorysTermCCode);
	/*! \brief Get 
	 */
	std::string getEvaluatorsCodelistCCode();

	/*! \brief Set 
	 */
	void setEvaluatorsCodelistCCode(std::string  evaluatorsCodelistCCode);
	/*! \brief Get 
	 */
	std::string getEvaluatorsTermCCode();

	/*! \brief Set 
	 */
	void setEvaluatorsTermCCode(std::string  evaluatorsTermCCode);
	/*! \brief Get 
	 */
	std::string getFreeformResponsesDatatype();

	/*! \brief Set 
	 */
	void setFreeformResponsesDatatype(std::string  freeformResponsesDatatype);
	/*! \brief Get 
	 */
	std::string getResponseGroup();

	/*! \brief Set 
	 */
	void setResponseGroup(std::string  responseGroup);

private:
	std::string itemSequence;
	std::string testName;
	std::string itemText;
	std::string testsCodelistCCode;
	std::string testsTermCCode;
	std::string testCodesCodelistCCode;
	std::string testCodesTermCCode;
	std::string subcategorysCodelistCCode;
	std::string subcategorysTermCCode;
	std::string evaluatorsCodelistCCode;
	std::string evaluatorsTermCCode;
	std::string freeformResponsesDatatype;
	std::string responseGroup;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportQrsWorkbookItemsRow_H_ */
