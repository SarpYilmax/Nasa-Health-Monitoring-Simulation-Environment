# uranuß demo narrative (3 minutes)

**0:00–0:25 | The problem.** In a remote mission, the crew needs useful health and environment monitoring even when a ground connection is delayed or unavailable. Our demo focuses on the onboard part of that problem.

**0:25–0:50 | The system.** uranuß has two nodes: a wearable sensor and a vehicle mission computer. The wearable captures a synthetic record. The computer stores it locally and checks transparent, fixed rules. The new orbital health console imports supported telemetry channels from that onboard record through the local message bridge. There is no AI and no ground-computer screen in this version.

**0:50–1:45 | Show the flow.** Run the fever scenario. Point out the timestamped wearable record and the packet moving to the vehicle computer. Once it arrives, the local rule shows an alert. Then run the high-radiation or habitat scenario to show environmental data is kept distinct from crew biometrics. The result is a local warning, not a diagnosis or treatment instruction.

**1:45–2:20 | Show resilience.** Disable the wearable link, create a reading, and show it remains in the wearable log. Re-enable the link and watch the computer receive it. Demonstrate transfer delay or a simulated dropped packet and retry.

**2:20–2:45 | Safety and evidence.** All readings and rule limits are illustrative demo settings, not NASA-approved clinical or operational thresholds. NASA OSDR datasets and NASA standards provide research and protocol context; they are not a unified live vital-sign feed.

**2:45–3:00 | What we want feedback on.** We want feedback on which measurements, environmental sensors, and onboard alert behavior would best support crew awareness while keeping decisions with the crew and approved mission procedures.

All readings shown are synthetic and for interface demonstration only.
