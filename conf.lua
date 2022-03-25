function love.conf(t)
  t.releases = {
    title = "Love2D-Concord-Template",
    loveVersion = "11.0",
    version = "0.0.1",
    author = "Ian S. Pringle",
    description = "A templae for LOV2D games that utilize Concord for ECS",
    excludeFileList = {
      "*.git",
      "*.md",
      "*.zip",
      "*.love",
    },
    releaseDirectory = "build",
  }
  t.window.title = t.releases.title
  t.window.width = 1028
  t.window.height = 720
end
