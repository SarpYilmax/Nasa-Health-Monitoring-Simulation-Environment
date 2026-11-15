# Nasa-Health-Monitoring-Simulation-Environment
Real-time mission health simulation and telemetry monitoring system for tracking aerospace and astronaut physiological metrics.
# Mission Health & Telemetry Monitoring System

A real-time mission health simulation and telemetry monitoring system engineered for tracking aerospace and astronaut physiological metrics. Designed to bridge the gap between complex biometric data streams and intuitive operator dashboards, this repository provides a lightweight, modular, and deployment-ready framework for mission control environments.

## Overview

At its core, the system simulates and visualizes critical astronaut telemetry, life-support metrics, and environmental parameters derived from sensor-equipped smart suits and wearable health architectures. By combining structured data bridging guidelines with interactive web-based monitoring interfaces, the platform ensures seamless data transmission, low-latency performance, and immediate visual feedback during critical mission phases.

## Key Features

* **Real-Time Telemetry Simulation:** Dynamic generation and handling of structured JSON telemetry packets mimicking live space mission conditions.
* **Interactive Health Dashboards:** Responsive, browser-based monitoring tools (`mission_health_simulator.html` and `health_monitor.html`) built for instant anomaly detection and system status evaluation.
* **Telemetry Bridging Architecture:** Clear communication protocols and integration documentation (`telemetry_bridge.md`) connecting simulated data sources to visualization layers.
* **Rapid Deployment:** Automated startup scripts (`start_demo.bat`) and step-by-step operational guides (`demo_script.md`) for effortless setup and testing.

## Repository Structure

```text
├── mission_health_simulator.html   # Interactive mission & physiological data simulator
├── health_monitor.html             # Real-time telemetry & health status dashboard
├── telemetry_packet.example.json   # Sample telemetry payload structure
├── telemetry_bridge.md             # Architecture & data pipeline documentation
├── demo_script.md                  # Step-by-step execution and presentation workflow
└── start_demo.bat                  # Quick-launch script for Windows environments
```

## Quick Start

1. **Clone the repository:**
   ```bash
   git clone <https://github.com/SarpYilmax/Nasa-Health-Monitoring-Simulation-Environment/>
   cd Nasa-Health-Monitoring-Simulation-Environment
   ```

2. **Launch the environment:**
   * **Windows:** Double-click `start_demo.bat` or run it via Command Prompt to initialize the dashboards.
   * **Cross-Platform:** Open `mission_health_simulator.html` and `health_monitor.html` directly in any modern web browser.

3. **Inspect Telemetry Data:**
   Refer to `telemetry_packet.example.json` and `telemetry_bridge.md` to customize data payloads or integrate external sensor streams.

## License

This project is open-source and available for educational, research, and aerospace simulation purposes.

What this demo shows
uranuß is an onboard-only prototype: a wearable sends a synthetic telemetry packet to a vehicle mission computer. The onboard computer stores the packet and checks fixed, explainable demo rules. There is no AI and no ground-computer or clinician-response workflow in this version.

The vehicle computer can open the Orbital Crew Monitoring console. It sends a typed postMessage packet containing the scenario, environment, timestamp, source, units and synthetic values. The console accepts nine whitelisted channels when the unit matches: heart rate, SpO₂, temperature, sleep, cabin CO₂, a demo-only radiation signal, respiratory rate, blood glucose (mg/dL) and hydration (urine specific gravity). Other fields remain visible in the uranuß onboard record.

Run the demo
Extract the ZIP file to a folder.
Double-click start_demo.bat.
In your browser, open http://127.0.0.1:8000/mission_health_simulator.html.
In Scenario control, pick a state in the Crew vitals feed bar (left) and/or the Mission hazards bar (right), then select Run scenario. Each bar starts with Normal on the far left; every other option toggles independently, so any combination (e.g. Low oxygen + High radiation + Comms delay) runs as one record and the highest-priority matching rule wins. Follow the record from the wearable to the vehicle computer.
Select Open · Health Monitor to see imported telemetry.
Toggle the wearable link off and on, change transfer delay, or simulate one dropped packet to demonstrate local queue and retry behavior.
Close the command window to stop the local web server.
The launcher requires Python 3. It serves these static files locally and needs no package installation.

Safety and data limits
All readings and alert triggers are illustrative demo settings. They are not NASA-approved clinical or operational limits. The rules only demonstrate local alerts; they do not diagnose or recommend treatment. The console's prototype guidance is not approved medical advice. Do not use real personal health data in this demo. No telemetry is sent to the internet by the prototype.

Files
mission_health_simulator.html — wearable-to-vehicle computer simulator (dark electric-blue / orange theme; scenarios include the console feed set: Nominal, Low oxygen, CO₂ rise, Poor sleep).
health_monitor.html — teammate's orbital health console, adapted for uranuß telemetry import (Pause control removed from the simulation feed).
telemetry_bridge.md — message flow and future hardware data path.
telemetry_packet.example.json — example console bridge message.
demo_script.md — short presentation script.
Export ranges
Health Monitor export now offers Current, Last 1 hour, Last 6 hours and Last 24 hours (JSON, CSV, Report; copy or download).
Samples are recorded in this browser by the console (live and uranuß imports). Gaps are filled with a deterministic nominal back-fill marked simulated_baseline; it is synthetic and not for clinical use.
