using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UpdateSliders : MonoBehaviour {

    public Slider master;
    public Slider music;
    public Slider voice;
    public Slider sfx;

    void Awake()
    {
    }

	// Use this for initialization
	void Start ()
    {
        //UpdateAllSliders();
    }

    // Update is called once per frame
    void Update () {
		
	}

    void OnEnable()
    {
        UpdateAllSliders();
    }

    public void UpdateAllSliders()
    {
        master.value = FindObjectOfType<SoundManager>().masterVolume;
        music.value = FindObjectOfType<SoundManager>().musicVolume;
        voice.value = FindObjectOfType<SoundManager>().voiceSoundsVolume;
        sfx.value = FindObjectOfType<SoundManager>().inGameSoundsVolume;
    }
}
