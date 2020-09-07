//---------------------------------------------------------
// 💡 Change text to "Title Case"

function toTitleCase(str) {
  return str.replace(/(?:^|\s)\w/g, function(match) {
    return match.toUpperCase();
  })
}

// ➡️ Demo
let text = 'my text'
toTitleCase(text) // "My Text"
