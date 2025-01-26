import vapoursynth as vs

core = vs.core
core.num_threads = 4

clip = video_in
clip = vs.core.resize.Bicubic(clip, format=vs.RGBS, matrix_in_s="709")

clip = core.rife.RIFE(
    clip,
    model=63,
    factor_num=5,
    factor_den=2,
    gpu_id=0,
    gpu_thread=2,
    tta=False,
    uhd=False,
    skip=False,
    sc=False,
)

clip = vs.core.resize.Bicubic(clip, format=vs.YUV420P8, matrix_s="709")

clip.set_output()
