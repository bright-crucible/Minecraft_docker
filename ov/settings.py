from .optimizeimages import optipng

worlds["octoLand"] = "/overviewer/octoLand/octoLand"
end_lighting = [Base(), EdgeLines(), Lighting(strength=0.5)]
end_smooth_lighting = [Base(), EdgeLines(), SmoothLighting(strength=0.5)]

texturepath = "/overviewer/client.jar"

renders["daytime"] = {
    "world": "octoLand",
    "title": "octoLand Day",
    "rendermode": smooth_lighting,
    "dimension": "overworld",
    "optimizeimg":[optipng()],
}

renders["night"] = {
    "world": "octoLand",
    "title": "octoLand Night",
    "rendermode": smooth_night,
    "dimension": "overworld",
    "optimizeimg":[optipng()],
}

renders["cave"] = {
    "world": "octoLand",
    "title": "octoLand Caves",
    "rendermode": cave,
    "dimension": "overworld",
    "optimizeimg":[optipng()],
}

renders["nether"] = {
    "world": "octoLand",
    "title": "octoLand Nether",
    "rendermode": nether,
    "dimension": "nether",
    "optimizeimg":[optipng()],
}

renders["end"] = {
    "world": "octoLand",
    "title": "octoLand End",
    "rendermode": end_smooth_lighting,
    "dimension": "end",
    "optimizeimg":[optipng()],
}

outputdir = "/overviewer/render"
