/*
 * ScopeValues.h
 *
 * 
 */

#ifndef _ScopeValues_H_
#define _ScopeValues_H_


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

class ScopeValues : public Object {
public:
	/*! \brief Constructor.
	 */
	ScopeValues();
	ScopeValues(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ScopeValues();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	long long getTotal();

	/*! \brief Set 
	 */
	void setTotal(long long  total);
	/*! \brief Get 
	 */
	bool getHasMore();

	/*! \brief Set 
	 */
	void setHasMore(bool  hasMore);
	/*! \brief Get 
	 */
	std::list<std::string> getValues();

	/*! \brief Set 
	 */
	void setValues(std::list <std::string> values);

private:
	long long total;
	bool hasMore;
	std::list <std::string>values;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ScopeValues_H_ */
