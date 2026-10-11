variable "playlists" {
  description = <<EOT
Map of playlists, attributes below
Required:
    - interval
    - name
Optional:
    - org_id
    - item (block):
        - order (required)
        - type (optional)
        - value (optional)
EOT

  type = map(object({
    interval = string
    name     = string
    org_id   = optional(string)
    item = optional(list(object({
      order = number
      type  = optional(string)
      value = optional(string)
    })))
  }))
}

