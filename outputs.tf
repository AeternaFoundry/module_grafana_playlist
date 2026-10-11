output "playlists_id" {
  description = "Map of id values across all playlists, keyed the same as var.playlists except keys with no id are omitted"
  value       = { for k, v in grafana_playlist.playlists : k => v.id if v.id != null && length(v.id) > 0 }
}
output "playlists_interval" {
  description = "Map of interval values across all playlists, keyed the same as var.playlists except keys with no interval are omitted"
  value       = { for k, v in grafana_playlist.playlists : k => v.interval if v.interval != null && length(v.interval) > 0 }
}
output "playlists_item" {
  description = "Map of item values across all playlists, keyed the same as var.playlists except keys with no item are omitted"
  value       = { for k, v in grafana_playlist.playlists : k => v.item if v.item != null && length(v.item) > 0 }
}
output "playlists_name" {
  description = "Map of name values across all playlists, keyed the same as var.playlists except keys with no name are omitted"
  value       = { for k, v in grafana_playlist.playlists : k => v.name if v.name != null && length(v.name) > 0 }
}
output "playlists_org_id" {
  description = "Map of org_id values across all playlists, keyed the same as var.playlists except keys with no org_id are omitted"
  value       = { for k, v in grafana_playlist.playlists : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}

