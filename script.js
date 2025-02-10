document.addEventListener("DOMContentLoaded", function () {
    console.log("Lab website loaded!");

    const buttons = document.querySelectorAll(".show-more-btn");

    buttons.forEach(button => {
        button.addEventListener("click", function () {
            const section = this.closest(".member");
            const fullDesc = section.querySelector(".full-description");
            const shortDesc = section.querySelector(".short-description");

            // Ensure it checks computed style, not inline
            const isHidden = window.getComputedStyle(fullDesc).display === "none";

            if (isHidden) {
                fullDesc.style.display = "block";
                shortDesc.style.display = "none"; // Hide short text
                this.textContent = "Show Less";
            } else {
                fullDesc.style.display = "none";
                shortDesc.style.display = "block"; // Show short text
                this.textContent = "Show More";
            }
        });
    });
});