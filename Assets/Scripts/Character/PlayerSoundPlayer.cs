using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerSoundPlayer : MonoBehaviour
{
    public float volume = 1f;

    public AudioClip[] attack;
    public float percentToSpeakAttack = 0.5f;

    public AudioClip[] collisions;
    public float percentToSpeakCollision = 0.8f;

    public AudioClip[] passed;
    public float percentToSpeakPassed = 0.1f;

    public AudioClip[] passing;
    public float percentToSpeakPassing = 0.1f;

    public AudioClip[] taunt;
    public float percentToSpeakTaunting = 1f;

    public AudioClip[] victory;
    public float percentToSpeakVictory = 1f;

    private void PlaySound(float percent, AudioClip[] sounds)
    {
        if (Random.Range(0f, 1f) < percent)
        {
            SoundManager.instance.PlayVoiceClip(sounds[Random.Range(0, sounds.Length)], volume);
        }
    }

    public void Attack()
    {
        PlaySound(percentToSpeakAttack, attack);
    }

    public void Collide()
    {
        PlaySound(percentToSpeakCollision, collisions);
    }

    public void Passed()
    {
        PlaySound(percentToSpeakPassed, passed);
    }

    public void Passing()
    {
        PlaySound(percentToSpeakPassing, passing);
    }

    public void Taunt()
    {
        PlaySound(percentToSpeakTaunting, taunt);
    }

    public void Victory()
    {
        PlaySound(percentToSpeakVictory, victory);
    }

    public void Loss()
    {
        PlaySound(1f, passed);
    }
}
