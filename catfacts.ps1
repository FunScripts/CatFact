Add-Type -AssemblyName System.Speech
$SpeechSynth = New-Object System.Speech.Synthesis.SpeechSynthesizer
$SpeechSynth.Rate = 0
$CatFact = (ConvertFrom-Json (Invoke-WebRequest -Uri 'https://catfact.ninja/fact?max_length=140')).fact
$SpeechSynth.Speak("Did you know?")
$SpeechSynth.Speak($CatFact)
