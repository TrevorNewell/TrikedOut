using UnityEngine;
using System.Collections;
using UnityEngine.UI;

// Given the fact that we are limited to having one AudioListener per scene, we'll just be playing all our sounds at the same place (the location of our manager GO).  
// For Multiplayer across xbox live, we can move this from the manager to the players camera and then we'll have to use PlayClipAtPoint in the correct spot and not just at the manager GO.
public class SoundManager : MonoBehaviour
{ 
    public static SoundManager instance;
    
    public int sceneCount = -1;
    public AudioListener theListener;

    public float masterVolume = 1.0f;

    public float musicVolume = 0.4f;
    public AudioSource musicManager;
    public AudioClip song;

    public float voiceSoundsVolume = 0.7f;
    public AudioSource voiceSoundManager;
    public AudioClip[] clickSounds;

    public float inGameSoundsVolume = 0.7f;
    public AudioSource inGameSoundManager;
    private float currentVoiceTime;
    private float timeUntilNextVoice;
    private bool playingVoice;

    public AudioClip finish;
    public AudioClip[] shootSounds;

    void Awake()
    {
        instance = this;
    }

    // Use this for initialization
    void Start()
    {
        sceneCount += 1;

        //theListener = gameObject.AddComponent<AudioListener>();

        //inGameSoundManager = gameObject.AddComponent<AudioSource>();

        //voiceSoundManager = gameObject.AddComponent<AudioSource>();

        //musicManager = gameObject.AddComponent<AudioSource>();

        musicManager.ignoreListenerPause = true;

        musicManager.loop = true;

        // Default levels of volume for our various sounds
        musicManager.volume = musicVolume;
        inGameSoundManager.volume = inGameSoundsVolume;
        voiceSoundManager.volume = voiceSoundsVolume;

        PlaySong();

    }

    public void UpdateMasterVolume(Slider slider)
    {
        masterVolume =  slider.value;

        musicManager.volume = musicVolume * masterVolume;
        inGameSoundManager.volume = inGameSoundsVolume * masterVolume;
        voiceSoundManager.volume = voiceSoundsVolume * masterVolume;

    }

    public void UpdateMusicVolume(Slider slider)
    {
        musicManager.volume = slider.value * masterVolume;
        musicVolume = slider.value;
    }

    public void UpdateVoiceVolume(Slider slider)
    {
        voiceSoundManager.volume = slider.value * masterVolume;
        voiceSoundsVolume = slider.value;
    }

    public void UpdateSFXVolume(Slider slider)
    {
        inGameSoundManager.volume = slider.value * masterVolume;
        inGameSoundsVolume = slider.value;
    }

    private void Update()
    {
        if (playingVoice)
        {
            currentVoiceTime += Time.deltaTime;
            if (currentVoiceTime >= timeUntilNextVoice)
            {
                playingVoice = false;
                inGameSoundManager.volume = inGameSoundsVolume * masterVolume;
            }
        }
    }

    public void PlaySong()
    {
        musicManager.clip = song;
        musicManager.Play();
    }

    public void PlayVoiceClip(AudioClip clip)
    {
        if (playingVoice) return;
        voiceSoundManager.PlayOneShot(clip);
        timeUntilNextVoice = clip.length;
        currentVoiceTime = 0f;
        playingVoice = true;
    }

    public void PlayVoiceClip(AudioClip clip, float vol)
    {
        if (playingVoice) return;
        voiceSoundManager.volume = voiceSoundsVolume * vol * masterVolume;
        PlayVoiceClip(clip);
    }

    public void PlaySoundClip(AudioClip clip)
    {
        inGameSoundManager.PlayOneShot(clip);
    }

    public void Finish()
    {
        PlaySoundClip(finish);
    }

    public void Shoot()
    {
        PlaySoundClip(shootSounds[Random.Range(0, shootSounds.Length)]);
    }

    public void Pause()
    {
        inGameSoundManager.Pause();
    }

    public void Unpause()
    {
        inGameSoundManager.UnPause();
    }
}
