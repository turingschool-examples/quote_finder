# Quote Finder

### Instructions

Using the [Quotable API](https://github.com/lukePeavey/quotable), add functionality to search for quotes by a particular keyword, and display results on a new page. 

### Versions

Rails 5.2.8

Ruby 2.7.2

### Setup

- Fork and clone this repo
- `bundle install`
- `rails db:{create,migrate}`
- `rails s`

When you visit localhost, you should see a landing page with a form to search by keyword. The button to search by keyword will not work right away, and that is functionality that you'll be building out. 

### Submission

1. Make a PR to the `turingschool-examples` organization
    - In the comment section, feel free to tell us how you felt about the assessment, or anything you'd like us to know.


### The Task

```
As a visitor
When I visit the landing page '/'
And fill in the form with a keyword 
And hit 'Search for Quotes'
I am taken to '/quotes'
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


### Extension 1
```
As a visitor
When I see my search results on '/quotes'
I see that each authors name is a link
When I click on that link
I'm taken to '/author'
And I see that authors name, bio, and a link to their Wikipedia page
```

### Extension 2
```
As a visitor
When I see my search results on '/quotes'
And click on an author's name
I'm taken to '/author' 
And I can now see a link to see all of that Author's quotes
When I click that link
I'm taken to '/author/quotes'
Where I can see the Author's name, and all of their quotes listed
```

