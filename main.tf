resource "grafana_playlist" "playlists" {
  for_each = var.playlists

  interval = each.value.interval
  name     = each.value.name
  org_id   = each.value.org_id

  dynamic "item" {
    for_each = each.value.item != null ? each.value.item : []
    content {
      order = item.value.order
      type  = item.value.type
      value = item.value.value
    }
  }
}

