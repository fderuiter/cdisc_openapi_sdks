/*
 * About.h
 *
 * 
 */

#ifndef _About_H_
#define _About_H_


#include <string>
#include "AboutLinks.h"
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

class About : public Object {
public:
	/*! \brief Constructor.
	 */
	About();
	About(char* str);

	/*! \brief Destructor.
	 */
	virtual ~About();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	AboutLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(AboutLinks  _links);
	/*! \brief Get 
	 */
	std::string getReleasenotes();

	/*! \brief Set 
	 */
	void setReleasenotes(std::string  releasenotes);
	/*! \brief Get 
	 */
	std::string getApidocumentation();

	/*! \brief Set 
	 */
	void setApidocumentation(std::string  apidocumentation);

private:
	AboutLinks _links;
	std::string releasenotes;
	std::string apidocumentation;
	void __init();
	void __cleanup();

};
}
}

#endif /* _About_H_ */
