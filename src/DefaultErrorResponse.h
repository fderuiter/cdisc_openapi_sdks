/*
 * DefaultErrorResponse.h
 *
 * 
 */

#ifndef _DefaultErrorResponse_H_
#define _DefaultErrorResponse_H_


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

class DefaultErrorResponse : public Object {
public:
	/*! \brief Constructor.
	 */
	DefaultErrorResponse();
	DefaultErrorResponse(char* str);

	/*! \brief Destructor.
	 */
	virtual ~DefaultErrorResponse();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get HTTP Status Code
	 */
	std::string getStatusCode();

	/*! \brief Set HTTP Status Code
	 */
	void setStatusCode(std::string  statusCode);
	/*! \brief Get HTTP Reason Phrase
	 */
	std::string getReasonPhrase();

	/*! \brief Set HTTP Reason Phrase
	 */
	void setReasonPhrase(std::string  reasonPhrase);
	/*! \brief Get User Error Message
	 */
	std::string getUserMessage();

	/*! \brief Set User Error Message
	 */
	void setUserMessage(std::string  userMessage);
	/*! \brief Get Admin Error Message
	 */
	std::string getAdminMessage();

	/*! \brief Set Admin Error Message
	 */
	void setAdminMessage(std::string  adminMessage);

private:
	std::string statusCode;
	std::string reasonPhrase;
	std::string userMessage;
	std::string adminMessage;
	void __init();
	void __cleanup();

};
}
}

#endif /* _DefaultErrorResponse_H_ */
