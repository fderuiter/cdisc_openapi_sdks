/*
 * ExportQrsGeneral.h
 *
 * 
 */

#ifndef _ExportQrsGeneral_H_
#define _ExportQrsGeneral_H_


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

class ExportQrsGeneral : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportQrsGeneral();
	ExportQrsGeneral(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportQrsGeneral();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	std::string getLabel();

	/*! \brief Set 
	 */
	void setLabel(std::string  label);
	/*! \brief Get 
	 */
	std::string getEffectiveDate();

	/*! \brief Set 
	 */
	void setEffectiveDate(std::string  effectiveDate);
	/*! \brief Get 
	 */
	std::string getDescription();

	/*! \brief Set 
	 */
	void setDescription(std::string  description);
	/*! \brief Get 
	 */
	std::string getType();

	/*! \brief Set 
	 */
	void setType(std::string  type);
	/*! \brief Get 
	 */
	std::string getCategorysCodelistCCode();

	/*! \brief Set 
	 */
	void setCategorysCodelistCCode(std::string  categorysCodelistCCode);
	/*! \brief Get 
	 */
	std::string getCategorysTermCCode();

	/*! \brief Set 
	 */
	void setCategorysTermCCode(std::string  categorysTermCCode);

private:
	std::string name;
	std::string label;
	std::string effectiveDate;
	std::string description;
	std::string type;
	std::string categorysCodelistCCode;
	std::string categorysTermCCode;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportQrsGeneral_H_ */
