// Parse text into audio
// https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis
// https://mdn.github.io/web-speech-api/speak-easy-synthesis/

//* Say a string basic
speechSynthesis.speak(new SpeechSynthesisUtterance("Hello, this is your browser speaking."));

//* Modify some stuff
const utterThis = new SpeechSynthesisUtterance("Sup 🐕!!!  ... this is your browser speaking.")
const voices = window.speechSynthesis.getVoices()

// rate: 0.5 - 2
utterThis.rate = 1.25

// pitch: 0 - 2
utterThis.pitch = 1.15

// voice: select from voices var -> getVoices() fn
// add the entire object to .voice
utterThis.voice = voices[7]
console.log(voices)

speechSynthesis.speak(utterThis)
