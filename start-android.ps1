# start-android.ps1
# Startar vald AVD (eller första i listan), väntar tills Android är färdigbootad och kör `flutter run`.

param(
  [string]$AvdName = ""
)

# --- Miljö ---
$Sdk = "$env:LOCALAPPDATA\Android\Sdk"
$env:JAVA_HOME = "C:\Program Files\Eclipse Adoptium\jdk-17.0.16.8-hotspot"
$env:Path = "$env:JAVA_HOME\bin;$Sdk\platform-tools;$env:Path"

# --- Hitta AVD-namn om inte angett ---
if ([string]::IsNullOrWhiteSpace($AvdName)) {
  $avds = & "$Sdk\emulator\emulator.exe" -list-avds
  if (-not $avds) { Write-Host "Hittar inga AVDs. Skapa en i Android Studio." -ForegroundColor Red; exit 1 }
  $AvdName = $avds | Select-Object -First 1
}

Write-Host "AVD som används: $AvdName" -ForegroundColor Cyan

# --- Starta/anslut ADB ---
adb kill-server *> $null
adb start-server

# --- Starta emulatorn om den inte redan rullar ---
$devices = adb devices | Select-String "emulator-"
if (-not $devices) {
  Write-Host "Startar emulatorn..." -ForegroundColor Yellow
  Start-Process -FilePath "$Sdk\emulator\emulator.exe" -ArgumentList @("-avd", "$AvdName", "-netdelay", "none", "-netspeed", "full") | Out-Null
}

# --- Vänta tills ADB ser emulatorn ---
Write-Host "Väntar på ADB-anslutning..." -ForegroundColor Yellow
adb wait-for-device

# --- Vänta tills Android är färdigbootad ---
Write-Host "Väntar på att Android ska boota klart..." -ForegroundColor Yellow
do {
  Start-Sleep -Seconds 1
  $boot = adb shell getprop sys.boot_completed
} while ($boot.Trim() -ne "1")

# Extra sanity: ska vara "running"
$zygote = adb shell getprop init.svc.zygote
Write-Host "zygote: $zygote" -ForegroundColor DarkGray

# --- (Valfritt) rensa gammal installation om den strular ---
# adb uninstall com.oakdev.nuria 2>$null

# --- Kör appen (Flutter väljer den enda device som finns) ---
Write-Host "Startar appen via Flutter..." -ForegroundColor Green
flutter run

