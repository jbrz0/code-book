// useEffect hook fires on a change or lifecycle event
// Include it before the return() in component
/*
https://reactjs.org/docs/hooks-effect.html
*/

import { useEffect } from 'react'

// call when a passed value changes
useEffect(() => {}, [ 'value' ])
useEffect(() => {}, [ users ])

// call only on first component render (componentDidMount)
useEffect(() => {}, [])

// Pass nothing, it will fire on ANY update (usually bad)
useEffect(() => {})
