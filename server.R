server <- function(input, output,session) {

  #dashboard call
  #---------------------------------------------------------------------------------------
  dcf.dashboard::dcf_dashboard_server(
    input = input, output = output, session = session,
    tasks = c(
      "Task: Catch"="catch",
      "Task: Effort"="effort"
    ),
    reporting_entity = c("Flagstates" = "flagstate"),
    ref_reporting_entities = "https://raw.githubusercontent.com/fdiwg/fdi-codelists/main/regional/recofi/cl_flagstate.csv"
  )

}
