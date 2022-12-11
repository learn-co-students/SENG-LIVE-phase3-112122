import React, { useEffect, useState } from "react";

function App() {

  const [organizations, setOrganizations] = useState([]);

  useEffect(() => {
    fetch("http://localhost:9292/organizations")
      .then((r) => r.json())
      .then((organizations) => console.log(organizations));
  }, []);

  return (
    <div className="App">
      Donation Tracker!
    </div>
  );
}

export default App;
