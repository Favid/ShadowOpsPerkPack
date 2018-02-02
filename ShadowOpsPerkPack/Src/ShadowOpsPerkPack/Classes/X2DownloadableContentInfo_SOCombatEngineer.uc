class X2DownloadableContentInfo_SOCombatEngineer extends X2DownloadableContentInfo;

static event InstallNewCampaign(XComGameState StartState)
{
	class'XComGameState_KillTracker'.static.InitializeWithGameState(StartState);
}

/// <summary>
/// Called after the Templates have been created (but before they are validated) while this DLC / Mod is installed.
/// </summary>
static event OnPostTemplatesCreated()
{
	class'TemplateEditors_CombatEngineer'.static.EditTemplates();
}
