Content.makeFrontInterface(596, 300);

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
 