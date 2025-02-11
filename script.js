// This is the document that allows for dynamic and interactive webpages
// Allows for webpage to responde to keyboard or mouse activity(i.e. change of colors of a button when hovering over), 
// sends info back to the log for webpage maintainer to see
// expands or collapses info displayed as a result of user activity
// anything that moves/changes form on website after it loads is managed in javascript

document.addEventListener("DOMContentLoaded", function () {
    console.log("Lab website loaded!");

    const buttons = document.querySelectorAll(".show-more-btn");

    buttons.forEach(button => {

        // listens to button activity, if there is a click, follow the code below;
        button.addEventListener("click", function () {

            // SETS THE VARIABLES BELONGING TO PRE-CLICK STATE
            // assigns html class values to variables section, fulldesc and shortdesc
            const section = this.closest(".member");
            const fullDesc = section.querySelector(".full-description");
            const shortDesc = section.querySelector(".short-description");
            
            // ishidden = True if fullDescription is none (short description is displayed on the webpage)
            const isHidden = window.getComputedStyle(fullDesc).display === "none";



            // AFTER CLICK, CHANGES THE DISPLAY BASED ON VARIABLES OF PRE-CLICK STATE
            // show full text if isHidden was true 
            if (isHidden) {
                fullDesc.style.display = "block";
                shortDesc.style.display = "none"; // Hide short text
                this.textContent = "Show Less";
            } 

            // show short text if isHidden was false
            else {
                fullDesc.style.display = "none";
                shortDesc.style.display = "block"; // Show short text
                this.textContent = "Show More";
            }
        });
    });
});