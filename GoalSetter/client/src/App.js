import React, { useEffect, useState } from "react";
import "./App.css";
import { Spinner } from "reactstrap";
import AppViews from "./components/AppViews";
import { BrowserRouter } from "react-router-dom";
import { onLoginStatusChange, me } from "./modules/authManager";

function App() {
  const [isLoggedIn, setIsLoggedIn] = useState(null);
  const [userProfile, setUserProfile] = useState(null);

  useEffect(() => {
    onLoginStatusChange(setIsLoggedIn);
  }, []);

  useEffect(() => {
    if (isLoggedIn) {
      me().then(setUserProfile);
    } else {
      setUserProfile(null);
    }
  }, [isLoggedIn]);

  // The "isLoggedIn" state variable will be null until //  the app's connection to firebase has been established.
  //  Then it will be set to true or false by the "onLoginStatusChange" function
  if (isLoggedIn === null) {
    // Until we know whether or not the user is logged in or not, just show a spinner
    return <Spinner className="app-spinner dark" />;
  }

  return (
    <div className="App">
      <BrowserRouter>
        <Header isLoggedIn={isLoggedIn} userProfile={userProfile} />
        <AppViews isLoggedIn={isLoggedIn} userProfile={userProfile} />
      </BrowserRouter>
    </div>
  );
}

export default App;