## 🚀 Step 8: Maximum Limit Test & Analysis

### 📊 Performance Summary Table

| Metric | Measured Value | Analysis / System Behavior |
| :--- | :--- | :--- |
| **Max Processed Limit** | **1,573.77 requests/sec** [cite: 109] | The absolute peak throughput traffic sustained globally across the run[cite: 109]. |
| **Successful Requests (OK)** | **95,878** [cite: 106] | Total operations successfully handled by Tomcat without failure[cite: 106]. |
| **Failed Requests (KO)** | **122** [cite: 107] | Total requests dropped because the server backlog reached capacity[cite: 107]. |
| **Max Response Time** | **542 ms** [cite: 114] | The worst-case latency recorded before socket connections were refused[cite: 114]. |
| **99th Percentile (GET)** | **62 ms** [cite: 127] | The response speed for the slowest 1% of index page requests[cite: 127]. |

---

### 🔍 Technical Breakdown & Graph Analysis
*(To satisfy project items **j** and **l**)* [cite: 34, 37]

* **The Saturated Ceiling:** Our application reached its structural boundary at a peak throughput of **1,573.77 requests per second**[cite: 109].
* **The Crack (Error Saturation):** Out of 96,000 total attempts [cite: 106], exactly **122 requests failed** (0.13% error rate)[cite: 107].
* **The Root Cause:** 100% of the failures were caused by `java.net.ConnectException: Connection refused: getsockopt`[cite: 143, 145]. This proves that Tomcat's internal TCP accept queue/connection backlog became fully saturated and forcefully rejected newer connection handshakes to protect the Java Virtual Machine from crashing.

---

## 🛠️ Combined Infrastructure Insights & Testing Scope
*(Contextual evaluation of our hardware execution environment)*

* **Initial Tool Bottleneck:** During initial aggressive testing (ramping up to a theoretical 2,000 requests/sec over 5 minutes), the local testing infrastructure collapsed first. Gatling's JVM threw a `java.lang.OutOfMemoryError: Java heap space` and triggered a physical heap dump before the application server showed any stress.
* **The Weakest Link:** In load testing, the final result is always bounded by the weakest link in the chain. Running both the load generator (Gatling) and the target environment (Tomcat) on a single laptop turned our local host machine into the primary bottleneck.
* **Optimization and True Limit:** To bypass this tool limitation, we implemented connection sharing (`.shareConnections()`) and calibrated the injection to a sustained **800 users/sec** (delivering over 1,500 continuous requests/sec)[cite: 109]. This successfully allowed us to exhaust Tomcat's actual network socket capabilities rather than our laptop's memory. To find a ceiling higher than this, Gatling would need to be executed from a separate, distributed multi-node testing architecture.

---

> **Professor Submission Note:** The official HTML report for this run has been printed to PDF as requested in the guidelines (`max_limit_report.pdf`)[cite: 36]. A screenshot of the CMD terminal confirming the 122 KO handshake drops has also been attached to satisfy Step 10 (k)[cite: 35].