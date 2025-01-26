import vapoursynth as vs

core = vs.core
clip = video_in

dst_fps = display_fps

src_fps_num = int(container_fps * 1e8)
src_fps_den = int(1e8)
dst_fps_num = int(dst_fps * 1e4)
dst_fps_den = int(1e4)
# Needed because clip FPS is missing
clip = core.std.AssumeFPS(clip, fpsnum = src_fps_num, fpsden = src_fps_den)

sup  = core.mv.Super(clip, pel=2, hpad=16, vpad=16)
bvec = core.mv.Analyse(sup, blksize=16, isb=True , chroma=True, search=3, searchparam=1)
fvec = core.mv.Analyse(sup, blksize=16, isb=False, chroma=True, search=3, searchparam=1)
clip = core.mv.FlowFPS(clip, sup, bvec, fvec, num=dst_fps_num, den=dst_fps_den, mask=2, thscd2=12)

clip.set_output()
