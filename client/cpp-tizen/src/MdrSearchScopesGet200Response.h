/*
 * _mdr_search_scopes_get_200_response.h
 *
 * 
 */

#ifndef __mdr_search_scopes_get_200_response_H_
#define __mdr_search_scopes_get_200_response_H_


#include <string>
#include "DefaultSearchScopes.h"
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

class _mdr_search_scopes_get_200_response : public Object {
public:
	/*! \brief Constructor.
	 */
	_mdr_search_scopes_get_200_response();
	_mdr_search_scopes_get_200_response(char* str);

	/*! \brief Destructor.
	 */
	virtual ~_mdr_search_scopes_get_200_response();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<DefaultSearchScopes> getScopes();

	/*! \brief Set 
	 */
	void setScopes(std::list <DefaultSearchScopes> scopes);

private:
	std::list <DefaultSearchScopes>scopes;
	void __init();
	void __cleanup();

};
}
}

#endif /* __mdr_search_scopes_get_200_response_H_ */
