Add-Type -AssemblyName System.Speech
$SpeechSynth = New-Object System.Speech.Synthesis.SpeechSynthesizer
$SpeechSynth.Rate = 0
$CatFact = (ConvertFrom-Json (Invoke-WebRequest -Uri 'https://catfact.ninja/fact?max_length=140')).fact
msg * Did you know?
$SpeechSynth.Speak("Did you know?")
msg * $CatFact
$SpeechSynth.Speak($CatFact)
