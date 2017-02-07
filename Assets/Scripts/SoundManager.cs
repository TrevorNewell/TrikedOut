using UnityEngine;
using System.Collections;

// Given the fact that we are limited to having one AudioListener per scene, we'll just be playing all our sounds at the same place (the location of our manager GO).  
// For Multiplayer across xbox live, we can move this from the manager to the players camera and then we'll have to use PlayClipAtPoint in the correct spot and not just at the manager GO.
public class SoundManager : MonoBehaviour
{ 
    public static SoundManager instance;

    public int sceneCount = -1;
    private AudioListener theListener;

    private AudioSource musicManager;
    public AudioClip sampleSong;
    public AudioClip track1Song;

    private AudioSource menuSoundManager;
    public AudioClip[] clickSounds;

    private AudioSource inGameSoundManager;
    public AudioClip[] pedalLeftSounds;
    public AudioClip[] pedalRightSounds;
    public AudioClip[] hitSounds;
    public AudioClip[] shootSounds;

    void Awake()
    {
        instance = this;
    }

    // Use this for initialization
    void Start()
    {
        sceneCount += 1;

        theListener = gameObject.AddComponent<AudioListener>();

        inGameSoundManager = gameObject.AddComponent<AudioSource>();

        menuSoundManager = gameObject.AddComponent<AudioSource>();
        menuSoundManager.ignoreListenerPause = true;

        musicManager = gameObject.AddComponent<AudioSource>();
        musicManager.ignoreListenerPause = true;


        musicManager.loop = true;

        // Default levels of volume for our various sounds
        inGameSoundManager.volume = 0.7f;
        menuSoundManager.volume = 0.7f;


        //if (StateManager.instance.TheState == State.MainMenu)
        {
            //musicManager.clip = sampleSong;
            //musicManager.Play();
        }
    }

    public void PlayClickSound()
    {
        int r = Random.Range(0, clickSounds.Length);
        menuSoundManager.PlayOneShot(clickSounds[r]);
    }

    public void PlayTrackSong()
    {
        musicManager.clip = track1Song;
        musicManager.PlayDelayed(1.8f);
    }

    public void PlayLeftPedalSound()
    {
        int r = Random.Range(0, pedalLeftSounds.Length);
        //inGameSoundManager.PlayOneShot(pedalLeftSounds[r]);
        //inGameSoundManager.PlayOneShot(pedalLeftSounds[0]);
    }
    public void PlayRightPedalSound()
    {
        int r = Random.Range(0, pedalRightSounds.Length);
        //inGameSoundManager.PlayOneShot(pedalRightSounds[r]);
        //inGameSoundManager.PlayOneShot(pedalRightSounds[0]);

    }

    public void PlayHitSound()
    {
        int r = Random.Range(0, hitSounds.Length);
        inGameSoundManager.PlayOneShot(hitSounds[r]);

    }

    public void PlayShootSound()
    {
        int r = Random.Range(0, shootSounds.Length);
        inGameSoundManager.PlayOneShot(shootSounds[r]);
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
