import sarif

class SeverityMapping {
  // Map Snyk severities to GitHub Code Scanning severities
  getMappedSeverity(snykSeverity: string): string {
    if (snykSeverity == "high") {
      return "error";
    } else if (snykSeverity == "medium") {
      return "warning";
    } else {
      return "note";
    }
  }
}

from Issue i
select i
  .setSeverity(SeverityMapping.getMappedSeverity(i.severity))
