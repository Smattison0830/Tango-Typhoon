import React, {} from "react";
import List from "./List";

const Results = ({ lists }) => {

console.log(lists)

  return (
    <div className="search">
      {!lists.length ? (
        <h1>No Lists Found</h1>
      ) : (
        lists.map((list) => {
          return (
            <List
              name={list.name}
            />
          );
        })
      )}
    </div>
  );
};

export default Results;