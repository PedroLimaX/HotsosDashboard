/*import Chart from 'chart.js/auto';

const chartTypes = document.getElementById('chart-type');
const chartPriority = document.getElementById('chart-priority');
const chartAssigned = document.getElementById('chart-assigned');

// api url
const api_url =
  "http://localhost:4000/api/reportes/type_by_year/2023";

// Defining async function
async function getapi(url) {

  // Storing response
  const response = await fetch(url);

  // Storing data in form of JSON
  var data = await response.json();
  //console.log(data);
  if (response) {
    hideloader();
    console.log(data);
  }
  show(data);
}
// Calling that async function
getapi(api_url);

// Function to hide the loader
function hideloader() {
  document.getElementById('loading').style.display = 'none';
}
// Function to define innerHTML for HTML table
function show(data) {
  let tab =
    `<tr>
        <th>Tipo</th>
        <th>Cantidad</th>
      </tr>`;

  // Loop to access all rows

  for (let r of data.body) {
    tab += `<tr>
              <td>${r.Tipo} </td>
              <td>${r.Cantidad}</td>		
          </tr>`;

  }

  // Setting innerHTML as tab variable
  document.getElementById("types").innerHTML = tab;
}


new Chart(chartTypes, {
  type: 'pie',
  data: {
    labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
    datasets: [{
      label: '# of Types',
      data: [12, 19, 3, 5, 2, 3],
      borderWidth: 1
    }]
  },
  options: {
    scales: {
      y: {
        beginAtZero: true
      }
    }
  }
});

new Chart(chartPriority, {
  type: 'pie',
  data: {
    labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
    datasets: [{
      label: '# of Properties',
      data: [5, 6, 8, 20, 16, 8],
      borderWidth: 1
    }]
  },
  options: {
    scales: {
      y: {
        beginAtZero: true
      }
    }
  }
});

new Chart(chartAssigned, {
  type: 'pie',
  data: {
    labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
    datasets: [{
      label: '# of Assigned',
      data: [8, 5, 10, 2, 8, 4],
      borderWidth: 1
    }]
  },
  options: {
    scales: {
      y: {
        beginAtZero: true
      }
    }
  }
});*/