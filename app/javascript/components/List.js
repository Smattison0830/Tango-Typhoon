import React from 'react'

export default function List( props ) {
  return (
      <div className="list">
        <p className="list--name">{props.name}</p>
      </div>
    )
  }