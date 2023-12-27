class SeverityMapping extends string {
  SeverityMapping() { this = "Error" }
  string toNewSeverity() {
    if this == "Error" then result = "High" else
    if this == "Warning" then result = "Medium" else
    result = "Low"
  }
}

// Access and modify severities in your queries here, using the SeverityMapping class
