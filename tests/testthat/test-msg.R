test_that("multiplication works", {
  httptest::with_mock_dir("pr0", {
    withr::local_envvar("GITHUB_PAT" = "ghp_111111111111111111111111111111111111111")
    expect_snapshot(gh::gh_whoami())
  })
})
