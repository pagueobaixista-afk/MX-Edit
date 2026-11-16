# HeadRush MX5 PC Editor – MX-Edit (unofficial fork, with Bridge and NAM-Mod support)

**MX-Edit that connects to the MX5 right away on Windows 11, with no retries. It also shows the picture of each pedal, amp and cab, as on the MX5 screen, in place of the drawn symbols.**

**MX-Edit que conecta ao MX5 na hora no Windows 11, sem precisar tentar de novo. Também mostra a imagem de cada pedal, amplificador e gabinete, como na tela do MX5, no lugar dos símbolos desenhados.**

**MX-Edit que se conecta al MX5 al instante en Windows 11, sin reintentos. También muestra la imagen de cada pedal, amplificador y gabinete, como en la pantalla del MX5, en lugar de los símbolos dibujados.**

**[English](#english) · [Português](#português) · [Español](#español)**

#### English

> **This is a fork, not the official MX-Edit.** The original project is
> [TicT4x/MX-Edit](https://github.com/TicT4x/MX-Edit) (MIT). Versions from this fork carry the
> suffix `-arte` (for example `0.9.6-beta.4-arte.1`), so they are not mistaken for the original.
>
> **You need the MX5 Bridge 0.7 on the device.** Without it the editor cannot connect to the MX5.
> The bridge is a small add-on to the stock firmware 2.7. Install it with
> `MX5Bridge_0.7_Patcher.exe` from the [original project's releases](https://github.com/TicT4x/MX-Edit/releases) (steps below), or with
> the installer of [mx5-nam-a2](https://github.com/pagueobaixista-afk/mx5-nam-a2), which puts the bridge and the NAM mod on the device together.
> This fork only publishes the editor.
>
> What this fork adds to MX-Edit `0.9.6-beta.4`:
>
> - **Reliable connection.** The editor waits 0.3 s after opening the MIDI ports (on Windows the
>   first message sent right after opening was lost 8 times out of 8), tries each pair of ports
>   with a ping when Windows lists more than one, and keeps looking for the device until it
>   finds it.
> - **Block pictures.** If a folder named `arte` sits next to `MX-Edit.exe`, the editor shows the
>   picture of each pedal, amp and cab in place of the drawn symbol. The folder holds PNG files
>   named after the block (`Amp/` and `Cab/` subfolders are named after the model). Without the
>   folder the editor looks like the original. The installer of
>   [mx5-nam-a2](https://github.com/pagueobaixista-afk/mx5-nam-a2) fills this folder for you.

#### Português

> **Este é um fork, não o MX-Edit oficial.** O projeto original é o
> [TicT4x/MX-Edit](https://github.com/TicT4x/MX-Edit) (MIT). As versões deste fork levam o
> sufixo `-arte` (por exemplo `0.9.6-beta.4-arte.1`), para não serem confundidas com o original.
>
> **É preciso ter o MX5 Bridge 0.7 no aparelho.** Sem ele o editor não conecta ao MX5. O bridge
> é um pequeno complemento ao firmware original 2.7. Instale com o `MX5Bridge_0.7_Patcher.exe`,
> que está nos [releases do projeto original](https://github.com/TicT4x/MX-Edit/releases) (passos mais abaixo, em inglês), ou com o
> instalador do [mx5-nam-a2](https://github.com/pagueobaixista-afk/mx5-nam-a2), que grava o bridge e o mod NAM juntos. Este fork publica só
> o editor.
>
> O que este fork acrescenta ao MX-Edit `0.9.6-beta.4`:
>
> - **Conexão confiável.** O editor espera 0,3 s depois de abrir as portas MIDI (no Windows, a
>   primeira mensagem enviada logo após abrir se perdia 8 vezes em 8), testa cada par de portas
>   com um ping quando o Windows lista mais de um, e continua procurando o aparelho até achar.
> - **Imagens dos blocos.** Se houver uma pasta chamada `arte` ao lado do `MX-Edit.exe`, o editor
>   mostra a imagem de cada pedal, amplificador e gabinete no lugar do símbolo desenhado. A pasta
>   guarda arquivos PNG com o nome do bloco (as subpastas `Amp/` e `Cab/` usam o nome do modelo).
>   Sem a pasta, o editor fica igual ao original. O instalador do
>   [mx5-nam-a2](https://github.com/pagueobaixista-afk/mx5-nam-a2) preenche essa pasta para você.
>
> O restante desta página (instalação e uso) está em inglês e vem do projeto original.

#### Español

> **Esto es un fork, no el MX-Edit oficial.** El proyecto original es
> [TicT4x/MX-Edit](https://github.com/TicT4x/MX-Edit) (MIT). Las versiones de este fork llevan el
> sufijo `-arte` (por ejemplo `0.9.6-beta.4-arte.1`), para que no se confundan con el original.
>
> **Hace falta el MX5 Bridge 0.7 en el equipo.** Sin él, el editor no se conecta al MX5. El
> bridge es un pequeño complemento del firmware original 2.7. Instálalo con
> `MX5Bridge_0.7_Patcher.exe`, que está en los [releases del proyecto original](https://github.com/TicT4x/MX-Edit/releases) (pasos más
> abajo, en inglés), o con el instalador de [mx5-nam-a2](https://github.com/pagueobaixista-afk/mx5-nam-a2), que graba el bridge y el mod NAM
> juntos. Este fork solo publica el editor.
>
> Lo que este fork añade a MX-Edit `0.9.6-beta.4`:
>
> - **Conexión fiable.** El editor espera 0,3 s después de abrir los puertos MIDI (en Windows, el
>   primer mensaje enviado justo después de abrir se perdía 8 veces de 8), prueba cada par de
>   puertos con un ping cuando Windows muestra más de uno, y sigue buscando el equipo hasta
>   encontrarlo.
> - **Imágenes de los bloques.** Si hay una carpeta llamada `arte` junto a `MX-Edit.exe`, el
>   editor muestra la imagen de cada pedal, amplificador y gabinete en lugar del símbolo dibujado.
>   La carpeta contiene archivos PNG con el nombre del bloque (las subcarpetas `Amp/` y `Cab/`
>   usan el nombre del modelo). Sin la carpeta, el editor se ve igual que el original. El
>   instalador de [mx5-nam-a2](https://github.com/pagueobaixista-afk/mx5-nam-a2) llena esa
>   carpeta por ti.
>
> El resto de esta página (instalación y uso) está en inglés y viene del proyecto original.

---

**Unofficial** tooling for the **HeadRush MX5** guitar processor – and, as a beta, the
**HeadRush Pedalboard** ([details](#headrush-pedalboard-beta)):

- **MX5 Bridge**: a small add-on to the stock MX5 firmware 2.7. It gives the device's internal
  parameter tree, its rig database and its files to a computer over **USB-MIDI (SysEx)**.
- **MX-Edit**: a desktop editor for Windows, macOS and Linux that uses the bridge. It works like the
  HeadRush web editor, but **live**: every change is heard on the device right away, and changes
  made on the device show up in the editor.

![MX-Edit, connected live to an MX5 with the NAM mod](docs/editor.png)

> **Not affiliated with HeadRush or inMusic.** HeadRush is a trademark of inMusic Brands.
> Installing modified firmware is **at your own risk**. Read the [installation](#installation)
> steps below first, especially the part about getting back to the stock firmware.

## Installation

You need a HeadRush **MX5 on firmware 2.7** (Pedalboard: see
[below](#headrush-pedalboard-beta)), its power supply, a USB cable and a Windows 10/11 PC
(Mac or Linux: see [macOS and Linux](#macos-and-linux)). It takes about 15 minutes. There is also a [video guide on YouTube](https://youtu.be/6ivzolrPEZA?si=BKzsChsaO2G2xgYX).
More details and troubleshooting: [INSTALL.md](INSTALL.md).

**0. Back up your rigs.** On the MX5, enable *USB transfer mode* (Global Settings) and copy the
`Rigs`, `Setlists`, `Blocks` and `Impulse Responses` folders to your PC.

**1. Download** `MX5Bridge_0.7_Patcher.exe` from the
[original project's releases](https://github.com/TicT4x/MX-Edit/releases) and the editor (`MX-Edit_…-arte.….exe`) from
[this fork's releases](../../releases). Nothing has to be installed, Python is not needed.
Windows SmartScreen may warn about an unknown publisher: *More info › Run anyway*.

**2. Build the firmware.** Put `MX5Bridge_0.7_Patcher.exe` into an empty folder and start it.

- **Bridge only:** click **Build updater**. The patcher downloads the official HeadRush updater
  and adds the bridge (1–2 minutes).
- **Bridge + NAM mod:** tick **Also install the NAM mod**, then click **Build updater**.
  A second window opens – the NAM mod's own installer:
  1. choose **MX5** and the number of instances, click **Install NAM Mod**,
  2. **then just wait.** ⚠️ **Do not click "Open"** in the NAM installer and do not run the
     `… (NAM mod).exe` it creates – that one has **no bridge**.
     The patcher **closes the NAM installer by itself** and adds the bridge on top.

When the patcher says **Updater ready**, you have `MX5Bridge_0.7_Updater` (or
`MX5Bridge_0.7_NAM_Updater`). **This is the only updater you install.**

**3. Flash it.**

1. Connect the MX5 to its **power supply** and via **USB** to the PC.
2. On the MX5: **Global Settings › ⋯ (more) › Firmware Update**.
3. In the patcher, click **Start firmware updater**. The window title must say
   *"MX5Bridge 0.7"*. Click **Install MX5Bridge 0.7** (or **… + NAM**) and wait.
   **Do not disconnect** the MX5 until it has restarted.

Your rigs, setlists, presets and IRs stay on the device.

**4. Start the editor.** Double-click `MX-Edit_0.9.exe`. About 10 seconds after the MX5 has
started, the editor connects by itself. With NAM, manage your `.nam` models with the **NAM**
button in the editor's left bar.

> **Flashed the NAM installer's updater by mistake?** No harm done – NAM is on the device, but
> the bridge is not. Just flash `MX5Bridge_0.7_NAM_Updater` afterwards (step 3).
>
> **Already have an updater from the NAM installer**
> (`HeadRush MX5 Firmware Updater (NAM mod).exe`)? Tick both boxes in the patcher
> (*Use a firmware file I already have* + *Also install the NAM mod*) and choose that file.
>
> **Back to stock:** run the official HeadRush MX5 2.7 updater the same way. If the device no
> longer starts, hold **footswitches 1 + 2** while switching it on (recovery mode).
> ⚠️ Footswitches **2 + 3** at power-on is a **factory reset** and erases your rigs.

### macOS and Linux

MX-Edit and the patcher are also built for **macOS** (Apple Silicon and Intel) and **Linux**
(x86-64). These builds are new and have **not been tested on a real Mac or a Linux PC with the
device yet** – please [report](../../issues) how they work for you.

- **Downloads** (from the same release): `MX-Edit_0.9_macOS-AppleSilicon.zip` /
  `…_macOS-Intel.zip` / `…_Linux-x64.tar.gz`, and the patcher with the same endings
  (`MX5Bridge_0.7_Patcher_…`).
- **macOS:** unzip and start the apps. They are not signed by Apple, so macOS blocks them the
  first time: open **System Settings › Privacy & Security** and click **Open Anyway** (older
  macOS: right-click the app › *Open*). The patcher downloads the official **Mac** updater from
  HeadRush and writes `MX5Bridge 0.7 Firmware Updater.app` into `Downloads/MX5Bridge_Patcher`.
  Flash it like in step 3 (*Start firmware updater*); it may need the same *Open Anyway* step.
  For the NAM mod, its installer needs SDL2 from [Homebrew](https://brew.sh): `brew install sdl2`
  (Intel Macs: `brew install curl xz sdl2`).
- **Linux:** unpack, then start `./MX-Edit` and `./MX5Bridge_Patcher`. **HeadRush has no firmware
  updater for Linux**, so the patcher builds the **Windows** updater folder (`MX5Bridge_0.7_Updater`).
  Flash it from a Windows PC, a Mac (run the patcher there) or a Windows virtual machine with the
  MX5's USB device passed through. The editor itself works natively on Linux (ALSA MIDI, the port
  shows up as *HeadRush MX5*). For the NAM mod the patcher runs the NAM mod's Linux installer,
  which needs SDL2 (`sudo apt install libsdl2-2.0-0`).

### HeadRush Pedalboard (beta)

The Pedalboard is supported **as a beta**. Testers have confirmed that the bridge runs on it, and
MX-Edit was adapted from their diagnosis logs, but I don't own a Pedalboard, so the editor has not
been run on a real one by me. Please [report](../../issues) what works and what doesn't.

- **Downloads:** take `MX5Bridge_0.7_Patcher.exe` and `MX-Edit_0.9.6-beta…exe` from the newest
  **pre-release** on the [releases page](../../releases) (the *latest* release is MX5 only).
- **Patcher:** under **Device**, choose **Pedalboard (beta)**. It downloads the official
  *HeadRush Pedalboard 2.7* updater and creates `HeadRush_Bridge_0.7_Pedalboard_Updater`. The
  button in the firmware updater is called **Install HeadRush Bridge 0.7**. Flash it like in step 3
  (on the Pedalboard: *Global Settings › ⋯ › Firmware Update*).
- **Editor:** connects to the port *Headrush Pedalboard* and shows **PEDALBOARD BETA** at the bottom
  right. It works on **All Rigs** – Pedalboard setlists hold *songs*, which are not supported yet,
  so the setlist manager, *New* rig and *Restore everything* are switched off. The 8 assignable
  footswitches are shown in two rows where they sit on the device.
- **NAM mod:** not tested together with the bridge on the Pedalboard yet.
- **Back to stock:** run the official HeadRush Pedalboard 2.7 updater. If the device no longer
  starts, hold **footswitches 1 + 8** while switching it on (recovery mode). Don't try other
  footswitch combinations at power-on – one of them may be a factory reset.
- The **Gigboard** is not supported (no diagnosis log so far). Owners can help with the tools in
  the [testing repository](https://github.com/TicT4x/MX-Edit-Testing).

The editor and the patcher are also available as Python source (`MX-Edit_0.9.zip`,
`MX5Bridge_0.7_Patcher.zip`), see [INSTALL.md](INSTALL.md#run-from-source-optional).

## What the editor can do

- **Signal chain**: add, remove and move blocks with drag & drop. Pick the routing
  (serial / parallel), double amps, cabs and IRs, and switch blocks on/off. Model picker with
  an icon for every amp, cab and effect.
- **All parameters** of every block, with the labels the device uses for each amp model.
  Load **block presets**, and save your own or overwrite them.
- **Rigs**: All Rigs and setlists in device order. Load, save, *save as new*, rename, colour,
  program numbers, delete. There is also a **setlist manager** (drag & drop, banks of three,
  numbering).
- **Footswitches, scenes and pedals**: scene/toggle mode, labels, colours, which blocks a scene
  switches and which preset it loads, toggle assignments, expression pedal targets and ranges,
  and rig tempo.
- **Impulse responses**: upload, rename, delete and organise IR files, and audition them while
  browsing.
- **Looper**: record/overdub, start/stop, peel, clear, reverse, half/double speed and length,
  loop level, feedback, pre/post position and the footswitch layout, with a live position ring.
- **Tuner** and **input/output level meters**.
- **Backup / restore** of everything (rigs, setlists, block presets) as the same `.rig`,
  `.setlist` and `.block` files the MX5 writes in USB transfer mode.
- **Offline mode**: edit `.rig` files from a backup without the device.
- **Optional NAM support**: works together with the
  [HeadRush NAM mod by lolgab](https://github.com/lolgab/headrush-nam-mod). It manages NAM
  models and shows NAM blocks as amps. Turning NAM off and on needs a restart of the device app.
- Reconnects on its own when the device restarts or the cable is pulled.

## What the bridge adds to the device

- A USB-MIDI port **"HeadRush MX5"** next to the stock USB audio.
- SysEx commands to read and write any property (`/Engine/Patch/...`), run small scripts in the
  device's QML engine, and query or modify the rig database (SQLite).
- **Safety**: the bridge backs up the rig database automatically before the first write after
  each boot. It has a crash guard: after three app crashes in a row it restores that backup (with
  NAM: it switches NAM off first). The stock rig database is never replaced wholesale.
- File access for impulse responses and NAM models.

Developers: the protocol is described in [docs/PROTOCOL.md](docs/PROTOCOL.md), and
[`editor/bridge.py`](editor/bridge.py) is a small Python client for it.

## How the firmware is distributed

This project **does not ship any HeadRush firmware**. The **patcher** works like the NAM mod
installer:

1. It downloads the **official** HeadRush MX5 (or Pedalboard) 2.7 updater from inMusic's server
   (or uses a copy you already have).
2. It adds the bridge files to that firmware **on your computer**.
3. It writes a ready-to-run updater that uses HeadRush's own updater program
   (`FirmwareUpdater.exe` on Windows, the HeadRush updater app on macOS).

The patcher is a single program with a window (`MX5Bridge_0.7_Patcher.exe` on Windows, an app on
macOS, a binary on Linux). It needs neither Python nor WSL. It can also run the NAM mod's own installer for you, so you get both
(see [Installation](#installation)).

## Requirements

| | |
|---|---|
| Device | HeadRush **MX5** with firmware **2.7**; HeadRush **Pedalboard** 2.7 as a beta (Gigboard: not supported) |
| Computer | Windows 10/11; macOS 11+ and Linux x86-64 (glibc 2.35+, e.g. Ubuntu 22.04) as new, untested builds. Flashing needs Windows or macOS – HeadRush has no Linux updater |
| Python | not needed for the ready-made programs. For the source versions: 3.9 or newer, editor with `mido`, `python-rtmidi`, `pillow` (Linux: also the `python3-tk` package) |

## Repository layout

```
editor/            MX-Edit (Python/tkinter) + bridge.py client
editor/werkzeuge/  test program, regression test, catalog builder (developer tools)
firmware/          bridge firmware: patcher, device files (mod/), build scripts
docs/PROTOCOL.md   SysEx protocol and useful device property paths
```

Source comments and developer tool output are mostly in German. The editor UI, the patcher and
the docs are in English.

## Status

The project was developed and tested on one MX5 against firmware 2.7, with an automated
regression test (`editor/werkzeuge/regressionstest.py`, 30 steps) that runs against the real
device. It is a hobby project: expect rough edges, and keep a backup of your rigs
(*⋯ › Back up everything* in the editor).

- Developed on Windows 10/11; the macOS and Linux builds are new and untested on real hardware
- Made for the MX5. **HeadRush Pedalboard: beta** (patcher and MX-Edit 0.9.6 beta) – the bridge
  runs on it (confirmed by testers), the editor was built from their diagnosis logs and has not been
  run by me on a real Pedalboard. It works on *All Rigs* there (Pedalboard setlists hold songs, which
  it does not support yet); chain, parameters, block presets, saving, the 8 footswitches, pedals,
  tuner, looper and IRs should work. See [HeadRush Pedalboard (beta)](#headrush-pedalboard-beta) and
  please [report](../../issues) what works.
- Gigboard: not supported yet (no diagnosis log so far).

## Disclaimer

This only works with custom firmware. I wouldn't advise installing random stuff from the internet on the MX5, because you can brick those devices with the wrong firmware. That's also why I don't ship any HeadRush firmware myself, the patcher builds it on your PC from the official file, and the whole source code is on GitHub so everyone can check what it does. AI can be of help detecting shitty stuff, but isnt a guarantee.****

## Credits & licences

- MX5 Bridge and MX-Edit: [MIT licence](LICENSE).
- [`firmware/bin/sqlite3`](firmware/bin): a static ARM build of [SQLite](https://sqlite.org)
  (public domain), built with `firmware/tools/build-sqlite3.sh`.
- NAM support uses the [HeadRush NAM mod](https://github.com/lolgab/headrush-nam-mod) by lolgab
  (GPLv3). It is **not included**: the NAM mod's own installer or `firmware/tools/nam-mod.sh`
  fetches it from its repository.
- The model icons are original flat drawings, not HeadRush artwork.
