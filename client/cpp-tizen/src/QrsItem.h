/*
 * QrsItem.h
 *
 * 
 */

#ifndef _QrsItem_H_
#define _QrsItem_H_


#include <string>
#include "QrsItemLinks.h"
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

class QrsItem : public Object {
public:
	/*! \brief Constructor.
	 */
	QrsItem();
	QrsItem(char* str);

	/*! \brief Destructor.
	 */
	virtual ~QrsItem();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getOrdinal();

	/*! \brief Set 
	 */
	void setOrdinal(std::string  ordinal);
	/*! \brief Get 
	 */
	std::string getLabel();

	/*! \brief Set 
	 */
	void setLabel(std::string  label);
	/*! \brief Get 
	 */
	std::string getQuestionText();

	/*! \brief Set 
	 */
	void setQuestionText(std::string  questionText);
	/*! \brief Get 
	 */
	QrsItemLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(QrsItemLinks  _links);

private:
	std::string ordinal;
	std::string label;
	std::string questionText;
	QrsItemLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _QrsItem_H_ */
