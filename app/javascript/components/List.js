import React from 'react'

const List = ({ name }) => {
    
  return (
      <>
          <div className="list">
            <p className="list--name">{name}</p>
          </div>
      </>
    )
  }

export default List