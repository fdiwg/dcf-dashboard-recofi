server <- function(input, output,session) {

  #dashboard call
  #---------------------------------------------------------------------------------------
  dcf.dashboard::dcf_dashboard_server(
    input = input, output = output, session = session,
    tasks =  list(
      list(
        id = "catch",
        label = "Task: Catch",
        formats = list(
          list(
            id = "simplified",
            label="Simplified",
            ref= "https://raw.githubusercontent.com/fdiwg/fdi-formats/main/cwp_rh_simplified_recofi_catch.json"
          )
        )
      ),
      list(
        id = "effort",
        label = "Task: Effort",
        formats = list(
          list(
            id = "simplified",
            label="Simplified",
            ref= "https://raw.githubusercontent.com/fdiwg/fdi-formats/main/cwp_rh_simplified_recofi_effort.json"
          )
        )
      )
    ),
    reporting_entity = c("Flagstates" = "flagstate"),
    ref_reporting_entities = "https://raw.githubusercontent.com/fdiwg/fdi-codelists/main/regional/recofi/cl_flagstate.csv",
    allow_download=FALSE
  )

}
