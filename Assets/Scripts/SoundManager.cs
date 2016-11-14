using UnityEngine;
using System.Collections;

public class SoundManager : MonoBehaviour
{
    public static SoundManager instance;

    // More than one of these isn't required.  For pedal and hit it makes sense to have more than one, but for shoot it may not
    public AudioClip[] pedalSounds; // Will likely have to write a different script to handle these, because we are now pedaling differently.
    public AudioClip[] hitSounds;
    public AudioClip[] shootSounds;

    void Awake()
    {
        instance = this;
    }

    // Use this for initialization
    void Start()
    {

    }

    void FixedUpdate()
    {

    }

    void Update()
    {

    }

    public void PlayPedalSound()
    {

    }

    public void PlayHitSound()
    {

    }

    public void PlayShootSound()
    {

    }

    public void Pause()
    {

    }

    public void Unpause()
    {

    }
}
