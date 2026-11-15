# uranuß telemetry bridge

## Current demo path

1. The wearable simulator creates a synthetic packet with a scenario, mission environment, UTC capture time and values.
2. The simulated wearable link transfers it to the vehicle mission computer. If the link is down, the packet stays in the onboard queue and retries after reconnection.
3. The vehicle computer applies its fixed demo rule and stores the result.
4. When the crew opens the Orbital Crew Console, uranuß posts the latest packet to the embedded page using `postMessage` with type `uranus-health-data`.
5. The console accepts messages only from its embedding parent, maps supported numeric fields, updates its telemetry display, and returns `uranus-health-ack` with the imported channel names.

The demo currently imports heart rate (`hr`), oxygen saturation (`spo2`), temperature (`temp`), sleep (`sleep`), cabin CO₂ (`co2`), a clearly labelled synthetic radiation signal (`rad`), respiratory rate (`resp`, /min), blood glucose (`glu`, mg/dL) and urine specific gravity as a hydration signal (`usg`, SG). Blood pressure, mood and other fields remain visible in the uranuß mission-computer record because the console does not currently render them. The console reports the imported channel count and capture timestamp.

## Packet example

`telemetry_packet.example.json` shows the normalized shape. The bridge carries packet ID, source, environment, scenario, capture time, numeric `values`, and a `units` map. The console accepts only the nine whitelisted numeric channels when their units match. The file is an example contract for the wearable or future device adapter.

## Getting real sensor data later

Keep the sensor adapter on the vehicle computer. A wearable can send readings over a device link such as Bluetooth Low Energy; the onboard adapter should validate each field, unit, timestamp, sensor identity and quality before adding it to the local queue. The adapter then emits the same normalized packet whether the source is a physical sensor or this simulator. Preserve raw source data and label gaps, stale samples and sensor errors; never fill missing measurements with generated values.

For a deployed browser integration, serve both pages from the same trusted origin and restrict `postMessage` to that exact origin. The current demo uses the wildcard target only because local `file://` pages have an opaque origin, and it sends synthetic values only. Do not send real health data through this demo bridge.
