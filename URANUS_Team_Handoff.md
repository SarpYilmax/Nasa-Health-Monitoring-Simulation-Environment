# uranuß Team Demo Package

## What this demo shows

uranuß is an onboard-only prototype: a wearable sends a synthetic telemetry packet to a vehicle mission computer. The onboard computer stores the packet and checks fixed, explainable demo rules. There is no AI and no ground-computer or clinician-response workflow in this version.

The vehicle computer can open the Orbital Crew Monitoring console. It sends a typed `postMessage` packet containing the scenario, environment, timestamp, source, units and synthetic values. The console accepts nine whitelisted channels when the unit matches: heart rate, SpO₂, temperature, sleep, cabin CO₂, a demo-only radiation signal, respiratory rate, blood glucose (mg/dL) and hydration (urine specific gravity). Other fields remain visible in the uranuß onboard record.

## Run the demo

1. Extract the ZIP file to a folder.
2. Double-click `start_demo.bat`.
3. In your browser, open `http://127.0.0.1:8000/mission_health_simulator.html`.
4. In **Scenario control**, pick a state in the **Crew vitals feed** bar (left) and/or the **Mission hazards** bar (right), then select **Run scenario**. Each bar starts with **Normal** on the far left; every other option toggles independently, so any combination (e.g. Low oxygen + High radiation + Comms delay) runs as one record and the highest-priority matching rule wins. Follow the record from the wearable to the vehicle computer.
5. Select **Open · Health Monitor** to see imported telemetry.
6. Toggle the wearable link off and on, change transfer delay, or simulate one dropped packet to demonstrate local queue and retry behavior.
7. Close the command window to stop the local web server.

The launcher requires Python 3. It serves these static files locally and needs no package installation.

## Safety and data limits

All readings and alert triggers are illustrative demo settings. They are not NASA-approved clinical or operational limits. The rules only demonstrate local alerts; they do not diagnose or recommend treatment. The console's prototype guidance is not approved medical advice. Do not use real personal health data in this demo. No telemetry is sent to the internet by the prototype.

## Files

- `mission_health_simulator.html` — wearable-to-vehicle computer simulator (dark electric-blue / orange theme; scenarios include the console feed set: Nominal, Low oxygen, CO₂ rise, Poor sleep).
- `health_monitor.html` — teammate's orbital health console, adapted for uranuß telemetry import (Pause control removed from the simulation feed).
- `telemetry_bridge.md` — message flow and future hardware data path.
- `telemetry_packet.example.json` — example console bridge message.
- `demo_script.md` — short presentation script.

## Export ranges
- Health Monitor export now offers Current, Last 1 hour, Last 6 hours and Last 24 hours (JSON, CSV, Report; copy or download).
- Samples are recorded in this browser by the console (live and uranuß imports). Gaps are filled with a deterministic nominal back-fill marked `simulated_baseline`; it is synthetic and not for clinical use.
