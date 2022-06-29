using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class CanvasManager : MonoBehaviour
{
    // PRE
    public GameObject canvasPreMatch;
    private bool preMatchShowingGame = true;
    public GameObject preMatchPanelGame;
    public GameObject preMatchPanelIA;
    public Button preMatchToggleButton;

    // POST
    public GameObject canvasPostMatch;
    private bool postMatchShowingGame = true;
    public GameObject postMatchPanelGame;
    public GameObject postMatchPanelIA;
    public Button postMatchToggleButton;

    public void NavigateToPostMatch()
    {
        canvasPostMatch.SetActive(true);
        canvasPreMatch.SetActive(false);
    }

    public void NavigateToPreMatch()
    {
        canvasPostMatch.SetActive(false);
        canvasPreMatch.SetActive(true);
    }

    public void TogglePreMatchPanels()
    {
        preMatchShowingGame = !preMatchShowingGame;
        preMatchPanelGame.SetActive(preMatchShowingGame);
        preMatchPanelIA.SetActive(!preMatchShowingGame);
        
        ChangeButtonText(preMatchToggleButton, preMatchShowingGame);
    }

    public void TogglePostMatchPanels()
    {
        postMatchShowingGame = !postMatchShowingGame;
        postMatchPanelGame.SetActive(postMatchShowingGame);
        postMatchPanelIA.SetActive(!postMatchShowingGame);
        
        ChangeButtonText(postMatchToggleButton, postMatchShowingGame);
    }

    private void ChangeButtonText(Button button, bool showGame)
    {
        button.GetComponentInChildren<TMP_Text>().text = (showGame) ? "SHOW AI DATA" : "SHOW GAME SIMULATION";
    }

    private void Start()
    {
        ChangeButtonText(preMatchToggleButton, preMatchShowingGame);
        ChangeButtonText(postMatchToggleButton, postMatchShowingGame);
        
        preMatchPanelGame.SetActive(preMatchShowingGame);
        preMatchPanelIA.SetActive(!preMatchShowingGame);
        
        ChangeButtonText(preMatchToggleButton, preMatchShowingGame);
        
        postMatchPanelGame.SetActive(postMatchShowingGame);
        postMatchPanelIA.SetActive(!postMatchShowingGame);
        
        ChangeButtonText(postMatchToggleButton, postMatchShowingGame);
    }
}
