Processor 
Type SynthChain ID OTPLAY Bypassed Gain 	      �?Balance 	        VoiceLimit 	      P@KillFadeTime 	      4@IconColour 0 packageName  BuildVersion �  EditorStates BodyShown 0 Visible 1 Solo 0 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors  Processor Type ScriptProcessor ID Interface Bypassed Script 8Content.makeFrontInterface(596, 300);

const var PLAY = Synth.getChildSynth("PLAY");
const var sampleMaps = Sampler.getSampleMapList();

const var Instruments = Content.getComponent("Instruments");
Instruments.set("items", sampleMaps.join("\n"));

inline function onInstrumentsControl(component, value)
{
	PLAY.asSampler().loadSampleMap(sampleMaps[value-1]);
};

Content.getComponent("Instruments").setControlCallback(onInstrumentsControl);

// Library

const var LibButton = Content.getComponent("LibButton");
const var LIBRARYBROWSER = Content.getComponent("LIBRARYBROWSER");

inline function onLibButtonControl(component, value)
{
	if (value)
    {
        LIBRARYBROWSER.showControl(true);
    }
    else
    {
        LIBRARYBROWSER.showControl(false);
    }
};

Content.getComponent("LibButton").setControlCallback(onLibButtonControl);

// SettingsPanel 

const var SettingsPanel = Content.getComponent("SettingsPanel");
const var SettingsButton = Content.getComponent("SettingsButton");
SettingsButton.setControlCallback(SettingsButtonCB);

inline function SettingsButtonCB(control, value)
{
    SettingsPanel.showControl(value);
}function onNoteOn()
{
	
}
 function onNoteOff()
{
	
}
 function onController()
{
	
}
 function onTimer()
{
	
}
 function onControl(number, value)
{
	
}
  EditorStates BodyShown 1 Visible 1 Solo 0 contentShown 1 onInitOpen 1  ChildProcessors   Content  Control type ScriptSlider id TRANSPOSE value 	         Control type ScriptSlider id DELAYLEFTTIME value 	         Control type ScriptSlider id DELAYLEFTFEEDBACK value 	         Control type ScriptSlider id DELAYRIGHTTIME value 	         Control type ScriptSlider id DELAYRIGHTFEEDBACK value 	         Control type ScriptSlider id 
DELAYMIX value 	         Control type ScriptButton id 
DELAY ON value 	         Control type ScriptSlider id ATTACK value 	       @ Control type ScriptSlider id HOLD value 	     �~@ Control type ScriptSlider id DECAY value 	     ��@ Control type ScriptSlider id 	RELEASE value 	     ܜ@ Control type ScriptSlider id REVERBWET value 	   �p=�? Control type ScriptSlider id 
VELOCITY value 	      �? Control type ScriptSlider id VOLUME value 	   `ff#� Control type ScriptButton id 
REVERBON value 	      �? Control type ScriptComboBox id Instruments value 	      �? Control type ScriptButton id SettingsButton value 	         Control type ScriptButton id LibButton value 	         UIData  ContentProperties DeviceType 	Desktop Component type ScriptLabel id Label2 x 	        y 	        width 	     ��@height 	      v@bgColour 	   �     Component type ScriptFloatingTile id 
ANALYSER x 	      g�y 	     `i�width 	     P�@height 	     ��@ContentType AudioAnalyser bgColour 	   �    itemColour 	� �V    itemColour2 	DDD     textColour 	���     Data 3{
  "ProcessorId": "Analyser1",
  "Index": 0
}  Component type ScriptPanel id Panel2 x 	      @y 	      4@width 	     ��@height 	     @j@itemColour2 	)#�    itemColour 	���%     Component type ScriptSlider id TRANSPOSE x 	      $@y 	      f@processorId Transposer1 parameterId TransposeAmount style Horizontal min 	      8�max 	      8@middlePosition 	        stepSize 	      �?width 	     �\@height 	      4@bgColour 	�� �    itemColour2 	�    textColour 	����     Component type ScriptSlider id DELAYLEFTTIME x 	      |@y 	      :@style Horizontal height 	      4@width 	      Y@processorId Delay1 parameterId DelayTimeLeft mode Time max 	     ��@stepSize 	      �?suffix  ms middlePosition 	     @�@bgColour 434536530 itemColour 1570641944 textColour 1204669901 itemColour2 716774171  Component type ScriptSlider id DELAYLEFTFEEDBACK x 	      |@y 	     �I@style Horizontal height 	      4@width 	      Y@processorId Delay1 parameterId FeedbackLeft mode NormalizedPercentage suffix % middlePosition 	      �?bgColour 434536530 itemColour 1570641944 textColour 1204669901 itemColour2 716774171  Component type ScriptSlider id DELAYRIGHTTIME x 	      |@y 	     @T@style Horizontal height 	      4@width 	      Y@processorId Delay1 parameterId DelayTimeRight mode Time max 	     ��@stepSize 	      �?suffix  ms middlePosition 	     @�@bgColour 434536530 itemColour 1570641944 textColour 1204669901 itemColour2 716774171  Component type ScriptSlider id DELAYRIGHTFEEDBACK x 	      |@y 	     �Z@style Horizontal height 	      4@width 	      Y@processorId Delay1 parameterId FeedbackRight mode NormalizedPercentage suffix % middlePosition 	      �?bgColour 434536530 itemColour 1570641944 textColour 1204669901 itemColour2 716774171  Component type ScriptSlider id 
DELAYMIX x 	     ��@y 	      :@style 
Vertical height 	      Y@width 	      >@processorId Delay1 parameterId Mix mode NormalizedPercentage suffix % middlePosition 	      �?bgColour 434536530 itemColour 1570641944 textColour 1204669901 itemColour2 716774171  Component type ScriptLabel id ScriptLabel5 x 	     ��@y 	     �Y@width 	      >@height 	      9@fontName 	Calibri text MIX textColour 4278190080 enabled 0 fontStyle Bold fontSize 	      0@ Component type ScriptButton id 
DELAY ON x 	      |@y 	     �`@processorId Delay1 parameterId 	Enabled text DELAY  width 	     �a@height 	      4@bgColour 1032918550 itemColour 2471825424 textColour 867875000 itemColour2 2817176328  Component type ScriptSlider id ATTACK x 	      $@y 	      :@style 
Vertical width 	      9@height 	      ^@processorId 
ENVELOPE parameterId Attack bgColour 798321187 itemColour2 720535042 itemColour 1004360704 mode Time max 	     @�@stepSize 	      �?suffix  ms middlePosition 	     @�@showValuePopup Above textColour 
16777215  Component type ScriptLabel id ScriptLabel1 x 	      $@y 	     @_@width 	      9@height 	      9@fontName 	Calibri text A enabled 0 fontSize 	      .@fontStyle Bold textColour 	����     Component type ScriptSlider id HOLD x 	      D@y 	      :@style 
Vertical width 	      9@height 	      ^@processorId 
ENVELOPE parameterId Hold bgColour 798321187 itemColour2 720535042 itemColour 1004360704 mode Time max 	     ��@stepSize 	      �?suffix  ms middlePosition 	     @�@showValuePopup Above textColour 
16777215  Component type ScriptLabel id ScriptLabel2 x 	      D@y 	     @_@width 	      9@height 	      9@fontName 	Calibri text H enabled 0 fontSize 	      .@fontStyle Bold textColour 	����     Component type ScriptSlider id DECAY x 	     �Q@y 	      :@style 
Vertical width 	      9@height 	      ^@processorId 
ENVELOPE parameterId Decay bgColour 798321187 itemColour2 720535042 itemColour 1004360704 mode Time max 	     ��@stepSize 	      �?suffix  ms middlePosition 	     @�@showValuePopup Above textColour 
16777215  Component type ScriptLabel id ScriptLabel3 x 	     �Q@y 	     @_@width 	      9@height 	      9@fontName 	Calibri text D enabled 0 fontSize 	      .@fontStyle Bold textColour 	����     Component type ScriptSlider id 	RELEASE x 	      Y@y 	      :@style 
Vertical width 	      9@height 	      ^@processorId 
ENVELOPE parameterId 	Release bgColour 798321187 itemColour2 720535042 itemColour 1004360704 mode Time max 	     ��@stepSize 	      �?suffix  ms middlePosition 	     @�@showValuePopup Above textColour 
16777215  Component type ScriptLabel id ScriptLabel4 x 	      Y@y 	     @_@width 	      9@height 	      9@fontName 	Calibri text R enabled 0 fontSize 	      .@fontStyle Bold textColour 	����     Component type ScriptSlider id REVERBWET x 	      |@y 	     `c@width 	     �a@height 	      4@style Horizontal bgColour 	��=    itemColour 	�s)�    itemColour2 	�LS�    textColour 	����    processorId Simple Reverb1 parameterId 
WetLevel showTextBox  Component type ScriptSlider id 
VELOCITY x 	      $@y 	     �b@style Horizontal width 	     �\@height 	      4@processorId 
VELOCITY parameterId Intensity bgColour 999647779 itemColour2 720535042 itemColour 1289573376 textColour 
16777215 showTextBox 0  Component type ScriptLabel id ScriptLabel6 x 	      $@y 	     �b@width 	     �\@height 	      4@fontName 	Calibri text 
VELOCITY enabled 0 fontSize 	      .@fontStyle Bold bgColour 	9792035 itemColour 350049280 itemColour2 3423670545 textColour 	����     Component type ScriptSlider id VOLUME x 	      $@y 	     �i@style Horizontal width 	      �@height 	      5@textColour 
16777215 itemColour2 4220160650 bgColour 990951628 itemColour 2080358656 processorId Simple Gain1 parameterId Gain mode 	Decibel min 	      Y�max 	      @stepSize 	   ����?suffix  dB middlePosition 	      2�showValuePopup Below Component type ScriptLabel id volumelabel x 	     @l@y 	        width 	     �\@height 	      4@fontName 	Calibri text VOLUME textColour 4278190080 enabled 0 fontSize 	      .@fontStyle Bold parentComponent VOLUME  Component type ScriptButton id 
REVERBON x 	      |@y 	     @f@processorId Simple Reverb1 parameterId 	Enabled text REVERB width 	     �a@height 	      4@bgColour 1024889233 itemColour 2467315797 textColour 	���[    itemColour2 2803370218  Component type ScriptFloatingTile id 
keyboard x 	     s�y 	      m@ContentType 
Keyboard bgColour 4284769380 itemColour 436207615 itemColour2 4294967295 textColour 4294951115 Data l{
  "KeyWidth": 14.0,
  "DisplayOctaveNumber": false,
  "LowKey": 9,
  "HiKey": 127,
  "CustomGraphics": false,
  "DefaultAppearance": true,
  "BlackKeyRatio": 0.699999988079071,
  "ToggleMode": false,
  "MidiChannel": 1,
  "UseVectorGraphics": true,
  "UseFlatStyle": false,
  "MPEKeyboard": false,
  "MPEStartChannel": 2,
  "MPEEndChannel": 16
} width 	     ��@height 	     �S@ Component type ScriptLabel id DEVICENAME x 	     �`@y 	      �height 	      9@width 	     �r@text 2O  R  C  H  E  S  T  O  O  L  S   |   P  L  A  Y fontName 	Calibri fontStyle Bold fontSize 	      6@textColour 1543503871  Component type ScriptPanel id Panel1 x 	     @`@y 	      e@width 	     �s@height 	      ?@itemColour2 	zF3�    itemColour 	���@    Component 
type ScriptComboBox id Instruments x 	     �Z@y 	      @max    height 	      4@text INSTRUMENTS items  GLOCKENSPIEL
MARIMBA
XYLOPHONE width 	      Y@parentComponent Panel1  Component type ScriptButton id SettingsButton x 	      k@y 	      @text 
SETTINGS height 	      4@width 	     �V@itemColour2 	1118481 itemColour 	3355443 textColour 134217727 parentComponent Panel1  Component type ScriptButton id LibButton x 	       @y 	      @text 	LIBRARY height 	      4@width 	     �V@itemColour2 	1118481 itemColour 	3355443 textColour 134217727 parentComponent Panel1  Component type ScriptFloatingTile id LIBRARYBROWSER x 	      `@y 	        width <  height �   ContentType PresetBrowser bgColour 	   `    itemColour 	����    itemColour2 	����    Data �{
  "ShowSaveButton": true,
  "ShowFolderButton": false,
  "ShowNotes": false,
  "ShowEditButtons": true,
  "ShowFavoriteIcon": false,
  "NumColumns": 1
} FontSize 	      $@visible  Component type ScriptPanel id SettingsPanel x 	        y 	      1@width 	     �u@height 	     �q@bgColour 	        borderRadius 	      4@itemColour 	kkk�    itemColour2 	   �    textColour 	�r X    visible Component type ScriptFloatingTile id 
Settings x 	       @y 	      3@width 	      i@height 	     �p@ContentType CustomSettings bgColour 	        itemColour 	���     itemColour2 	���     Data �{
  "Driver": true,
  "Device": true,
  "Output": true,
  "BufferSize": false,
  "SampleRate": false,
  "GlobalBPM": false,
  "StreamingMode": false,
  "ScaleFactor": true,
  "VoiceAmountMultiplier": false,
  "ClearMidiCC": false,
  "SampleLocation": true,
  "DebugMode": false,
  "ScaleFactorList": [
    0.5,
    0.75,
    1.0,
    1.25,
    1.5,
    2.0
  ]
} FontSize 	      $@parentComponent SettingsPanel  Component type ScriptLabel id AUDIO DRIVER x 	     �J@y 	      @parentComponent SettingsPanel fontSize 	      $@ Component type ScriptFloatingTile id FloatingTile1 x 	     �f@y 	      >@parentComponent SettingsPanel ContentType MidiSources bgColour 	   �    itemColour 	����    itemColour2 	����    Data {
} width 	     `c@height 	     @\@ Component type ScriptLabel id Label1 x 	     �g@y 	      d@parentComponent SettingsPanel width 	     �b@height 	     @b@text �ORCHESTOOLS | PLAY                                     made with HISE                                           http://hise.audio                                            multiline editable fontSize 	      $@fontStyle Bold textColour 	����     Component type ScriptLabel id MIDI DRIVER x 	     �h@y 	      @parentComponent SettingsPanel fontSize 	      $@ Processor Type Transposer ID Transposer1 Bypassed TransposeAmount 	        EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0 Folded 0  ChildProcessors  Processor Type Delay ID Delay1 Bypassed DelayTimeLeft 	        DelayTimeRight 	        FeedbackLeft 	        FeedbackRight 	        LowPassFreq 	     ��@HiPassFreq 	      D@Mix 	        TempoSync 	        EditorStates BodyShown 1 Visible 1 Solo 0 Folded 1  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor 	Type SimpleReverb ID Simple Reverb1 Bypassed RoomSize 	      �?Damping 	   @33�?WetLevel 	   �p=�?DryLevel 	   �G��?Width 	   �p�?FreezeMode 	   ����?EditorStates BodyShown 1 Visible 1 Solo 0 Folded 1  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor Type 
Analyser ID Analyser1 Bypassed BufferSize 	      �@PreviewType 	       @EditorStates BodyShown 1 Visible 1 Solo 0 Folded 1  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor Type SimpleGain ID Simple Gain1 Bypassed Gain 	   �ff#�Delay 	        Width 	      Y@Balance 	        InvertPolarity 	        EditorStates BodyShown 1 Visible 1 Solo 0 Folded 1  ChildProcessors  Processor Type ModulatorChain ID Gain Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID Delay Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID Width Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID Pan Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor Type 	Limiter ID 
Limiter1 Bypassed Thresh 	   ����?Output 	      �?Release 	      �?Attack 	   @33�?Knee 	      �?EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor Type StreamingSampler ID PLAY Bypassed Gain 	      �?Balance 	        VoiceLimit 	      p@KillFadeTime 	      4@IconColour 0 PreloadSize 	      �@BufferSize 	      �@VoiceAmount 	      p@SamplerRepeatMode 	      @RRGroupAmount 	      �?PitchTracking 	      �?OneShot 	        CrossfadeGroups 	        Purged 	        Reversed 	        NumChannels    UseStaticMatrix 	        Group0Table  Group1Table  Group2Table  Group3Table  Group4Table  Group5Table  Group6Table  Group7Table  SampleMapID GLOCKENSPIEL EditorStates 	BodyShown 1 Visible 1 Solo 0 MapPanelShown 1 BigSampleMap 1 Folded 0 CrossfadeTableShown 0 WaveformShown 1 TableShown 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type AHDSR ID 
ENVELOPE Bypassed Monophonic 	        Retrigger 	      �?Intensity 	      �?AttackCurve 	        DecayCurve 	        Attack 	       @AttackLevel 	        Hold 	     �~@Decay 	     ��@Sustain 	      Y�Release 	     ܜ@EcoMode 	      �?EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors  Processor Type ModulatorChain ID Attack Time Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID Attack Level Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID Decay Time Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID Sustain Level Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID Release Time Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type 
Velocity ID 
VELOCITY Bypassed Intensity 	      �?UseTable 	        Inverted 	        DecibelMode 	        EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID Sample Start Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type Random ID Random Modulator1 Bypassed Intensity 	   @33�?UseTable 	        EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   Processor Type 
Velocity ID Velocity Modulator1 Bypassed Intensity 	    ף�?UseTable 	        Inverted 	      �?DecibelMode 	        EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Group Fade Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� channels  channelData enabled level 	        suffix   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� macro_controls  macro name 	Macro 1 value 0.0 midi_cc -1  macro name 	Macro 2 value 0.0 midi_cc -1  macro name 	Macro 3 value 0.0 midi_cc -1  macro name 	Macro 4 value 0.0 midi_cc -1  macro name 	Macro 5 value 0.0 midi_cc -1  macro name 	Macro 6 value 0.0 midi_cc -1  macro name 	Macro 7 value 0.0 midi_cc -1  macro name 	Macro 8 value 0.0 midi_cc -1  MidiAutomation   MPEData Enabled  