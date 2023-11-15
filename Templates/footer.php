</body>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    // Get all table rows (excluding the header row)
    const rows = document.querySelectorAll("table tbody tr");

    // Initialize row number
    let rowNumber = 1;

    // Loop through the rows and add row numbers
    rows.forEach((row) => {
      const rowNumberCell = row.querySelector(".row-number");
      if (rowNumberCell) {
        rowNumberCell.textContent = rowNumber;
        rowNumber++; // Increment the row number for the next row
      }
    });
  });

  document.addEventListener("DOMContentLoaded", function () {
    // Get all table rows (excluding the header row)
    const rows = document.querySelectorAll("table tbody tr");

    // Initialize row number
    let rowNumber = 1;

    // Loop through the rows and add row numbers
    rows.forEach((row) => {
      const rowNumberCell = row.querySelector(".row-number2");
      if (rowNumberCell) {
        rowNumberCell.textContent = rowNumber;
        rowNumber++; // Increment the row number for the next row
      }
    });
  });
</script>


</html>