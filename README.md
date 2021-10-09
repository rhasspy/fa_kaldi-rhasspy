# Persian Kaldi Profile

A [Rhasspy](https://github.com/rhasspy/rhasspy) profile for Persian (`fa`).

## Installation

Get started by first installing [Vosk](https://alphacephei.com/vosk):

``` sh
# Create virtual environment
python3 -m venv .venv
source .venv/bin/activate
pip3 install --upgrade pip
pip3 install --upgrade wheel setuptools

# Install Vosk
pip3 install vosk
```

Next, [download the model](https://github.com/rhasspy/fa_kaldi-rhasspy/releases/download/v1.0/vosk-model-small-fa-rhasspy-0.15.zip) and extract it:

``` sh
wget 'https://github.com/rhasspy/fa_kaldi-rhasspy/releases/download/v1.0/vosk-model-small-fa-rhasspy-0.15.zip'
unzip vosk-model-small-fa-rhasspy-0.15.zip
```

Finally, run the `transcribe.py` Python program with the model and an audio file:

``` sh
python3 transcribe.py vosk-model-small-fa-rhasspy-0.15 welcome.wav

{"result": [{"conf": 1.0, "end": 0.48, "start": 0.06, "word": "خوش"}, {"conf": 1.0, "end": 1.11, "start": 0.48, "word": "آمدید"}], "text": "خوش آمدید"}
```

For each audio file given to `transcribe.py`, a line of JSON will be printed in the output with the transcription details.
