output "endpoint_id" {
  description = "The ID of the Vertex AI endpoint"
  value       = google_vertex_ai_endpoint.this.id
}