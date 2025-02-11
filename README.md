# Enkavi-Lab
Enkavi Lab Website

HTML (HyperText Markup Language) – The Structure

HTML provides the basic framework of a webpage by defining its elements and layout.

Key Components of HTML:
	•	<!DOCTYPE html>: Declares that the document is an HTML5 document.
	•	<html>: The root element that wraps all content on the webpage.
	•	<head>: Contains metadata, links to stylesheets, and scripts. Common elements inside <head>:
	•	<title>: Sets the page title displayed on the browser tab.
	•	<meta>: Provides metadata such as character encoding and viewport settings.
	•	<link>: Connects external stylesheets (CSS files).
	•	<script>: References external JavaScript files or includes inline scripts.
	•	<body>: The main content section of the webpage, visible to users.

Inside <body>:
	•	<header>: The topmost section, often containing a title, logo, and navigation links.
	•	<section>: A thematic grouping of content, dividing the page into logical blocks.
	•	<div>: A generic container for styling and structuring content, often used to group elements.
	•	<footer>: The bottommost section, typically containing copyright information, links, or contact details.

__________________________________________________________________________________________


CSS (Cascading Style Sheets) – The Styling

CSS controls the visual presentation of HTML elements, determining layout, colors, fonts, and responsiveness.

Key Features of CSS:
	•	Selectors: Target specific elements in the HTML to apply styles (e.g., p { color: blue; }).
	•	Classes and IDs: Allow more specific styling (.class {} for multiple elements, #id {} for a unique element).
	•	Box Model: Defines how elements are spaced and sized (margin, border, padding, width/height).
	•	Flexbox & Grid: Layout techniques to align and distribute content efficiently.
	•	Media Queries: Enables responsive design by applying styles based on screen size.

Example CSS Rule:
header {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 20px;
}

__________________________________________________________________________________________

JavaScript – The Interactivity

JavaScript (JS) makes webpages dynamic and interactive by manipulating HTML and CSS in real-time.

Key Features of JavaScript:
	•	DOM Manipulation: Modify webpage elements dynamically using document.querySelector(), innerHTML, etc.
	•	Event Handling: Respond to user actions like clicks, form submissions, or keypresses (addEventListener()).
	•	AJAX & Fetch API: Load data from servers without refreshing the page.
	•	ES6+ Features: Modern JavaScript includes let and const for variable declarations, arrow functions (() => {}), and template literals.

Example JavaScript Code:
document.querySelector("button").addEventListener("click", function() {
    alert("Button clicked!");
});