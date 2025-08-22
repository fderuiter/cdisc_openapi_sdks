/*
 * DefaultSearchResponse.h
 *
 * 
 */

#ifndef _DefaultSearchResponse_H_
#define _DefaultSearchResponse_H_


#include <string>
#include "DefaultSearchResponse_hits_inner.h"
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

class DefaultSearchResponse : public Object {
public:
	/*! \brief Constructor.
	 */
	DefaultSearchResponse();
	DefaultSearchResponse(char* str);

	/*! \brief Destructor.
	 */
	virtual ~DefaultSearchResponse();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<DefaultSearchResponse_hits_inner> getHits();

	/*! \brief Set 
	 */
	void setHits(std::list <DefaultSearchResponse_hits_inner> hits);
	/*! \brief Get 
	 */
	long long getTotalHits();

	/*! \brief Set 
	 */
	void setTotalHits(long long  totalHits);

private:
	std::list <DefaultSearchResponse_hits_inner>hits;
	long long totalHits;
	void __init();
	void __cleanup();

};
}
}

#endif /* _DefaultSearchResponse_H_ */
