$SpeechSynth = New-Object System.Speech.Synthesis.SpeechSynthesizer
$SpeechSynth.Rate = 0
$CatFact = (ConvertFrom-Json (Invoke-WebRequest -Uri 'https://catfact.ninja/fact?max_length=140')).fact
IEX (New-Object Net.WebClient).DownloadString('https://gist.githubusercontent.com/MVKozlov/c46b2d6d162e0018578a5b1b48154917/raw/c9a63fda30f8bf7c18c3ef82e87176a33cffb78d/Show-MessageBox.ps1 ') -Message Did you know?
$SpeechSynth.Speak("Did you know?")
IEX (New-Object Net.WebClient).DownloadString('https://gist.githubusercontent.com/MVKozlov/c46b2d6d162e0018578a5b1b48154917/raw/c9a63fda30f8bf7c18c3ef82e87176a33cffb78d/Show-MessageBox.ps1 ') -Message $CatFact
$SpeechSynth.Speak($CatFact)
