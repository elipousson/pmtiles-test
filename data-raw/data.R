street_centerline_native <- arcgislayers::arc_read(
  "https://egis.baltimorecity.gov/egis/rest/services/Address_Points/Street_Centerline_Native/FeatureServer/0"
)

address_point_native <- arcgislayers::arc_read(
  "https://egis.baltimorecity.gov/egis/rest/services/Address_Points/AddressPoint_Native/FeatureServer/0"
)

baltimore_city_addresses <- list(
  street_centerline = freestiler::freestile_layer(
    street_centerline_native
  ),
  address_point = freestiler::freestile_layer(address_point_native)
)

freestiler::freestile(
  baltimore_city_addresses,
  fs::path(
    "files",
    "baltimore_city_addresses.pmtiles"
  )
)
