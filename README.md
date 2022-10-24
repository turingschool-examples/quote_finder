# Quote Finder

### Instructions

Using the [Quotable API](https://github.com/lukePeavey/quotable), add functionality to search for quotes by a particular keyword, and display results on a new page. 

### Versions

Rails 5.2.8

Ruby 2.7.2

### Setup

- Clone this repo
- `bundle install`
- `rails db:{create,migrate}`
- `rails s`

When you visit localhost, you should see a landing page with a form to search by keyword. The button to search by keyword will not work right away, and that is functionality that you'll be building out. 


### The Task

```
As a visitor
When I visit the landing page '/'
And fill in the form with a keyword 
And hit 'Search for Quotes'
I am taken to '/search'
Where I see the TOTAL number of quotes that were found for that keyword
As well as the keyword that's being used for the search
As well as a list of the top 10 quotes that were found

For each quote listed, I should see: 
- The quote's author
- The quote's category(ies) (i.e. tags)
```

Notes:
- If there are less than 10 quotes found for a particular search, then only return the quotes that were found. 
- If the quote has no tags associated with it, do not list any categories for that quote.
