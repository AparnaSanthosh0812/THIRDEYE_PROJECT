import speech_recognition as sr
import pyttsx3


# Initialize the recognizer
recognizer = sr.Recognizer()

# Function to convert text to speech and play it directly
def text_to_speech(text, rate=150, volume=1.0):
    engine = pyttsx3.init()
    engine.setProperty('rate', rate)  # Speed of speech (words per minute)
    engine.setProperty('volume', volume)  # Volume level (0.0 to 1.0)

    # Get a list of available voices and set the desired female voice
    voices = engine.getProperty('voices')
    female_voices = [voice for voice in voices if "female" in voice.name.lower()]
    if female_voices:
        engine.setProperty('voice', female_voices[0].id)  # Set the first available female voice

    engine.say(text)
    engine.runAndWait()



# Function to convert voice to text
def voice_to_text():
    with sr.Microphone() as source:
        print("Adjusting for ambient noise. Please wait...")
        txt="Adjusting for ambient noise. Please wait..."
        txt2="Say something..."
        text_to_speech(txt)
        recognizer.adjust_for_ambient_noise(source)  # Adjust for ambient noise
        text_to_speech(txt2)
        print(txt2)
        audio_data = recognizer.listen(source, timeout=15)  # Listen to the microphone input

        try:
            text = recognizer.recognize_google(audio_data)  # Perform speech recognition using Google Web Speech API
            return text
        except sr.UnknownValueError:
            return "Could not understand audio"
        except sr.RequestError as e:
            return "Error during speech recognition: {0}".format(e)

# Call the function to convert voice to text
transcribed_text = voice_to_text()
print("Transcribed text:", transcribed_text)


# Play the audio using a system audio player (e.g., mpg321 on Linux, afplay on macOS, or Windows Media Player on Windows)
text_to_speech("Did you just said ,"+transcribed_text+"?")



