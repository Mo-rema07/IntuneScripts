<H1>Scripts to setup Intune:</H1>

<b><u>Note</u></b>: Adapted from IT Pro Mentor's Baseline Policies at https://github.com/vanvfields/Microsoft-365/tree/master/Setup%20Intune

Download scripts and JSONs into the same working directory before running Setup-Intune.ps1.

None of the policies will be assigned when you import the JSON files; simply review, adjust and test settings before assigning them

Intune deployment script:

	• Setup-Intune.ps1 = Imports all the baseline policies from JSON (but does not assign them)

MAM scripts:

	• Export-MAMPolicy.ps1 = Prompts for authentication user, then exports to JSON all existing MAM policies
	• Import-MAMPolicy.ps1 = Prompts for authentication user, and prompts for path to JSON file for import

MDM scripts:

	• Export-Compliance.ps1 = Prompts for authentication user, then exports to JSON all existing Compliance policies
	• Import-Compliance.ps1 = Prompts for authentication user, and prompts for path to JSON file for import
	• Export-DeviceConfig.ps1 = Prompts for authentication user, then exports to JSON all existing Device profiles
	• Import-DeviceConfig.ps1 = Prompts for authentication user, and prompts for path to JSON file for import
	
Export script:

	• Export-Policies.ps1 = Prompts for authentication user, then exports all the policies to JSON files.

The original article which corresponds with these scripts is located here: https://www.itpromentor.com/setup-intune
