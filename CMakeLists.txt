cmake_minimum_required(VERSION 3.21)
project(PureDoom LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(BUILD_SHARED_LIBS ON)

find_package(SDL2 CONFIG REQUIRED)
find_package(SDL2_mixer CONFIG REQUIRED)

add_executable(PureDoom

        src/i_main.c
        #src/doomdef.c
        #src/doomstat.c
        #src/d_main.c
        #src/d_net.c
        #src/d_items.c
        #src/g_game.c
        #src/hu_stuff.c
        #src/info.c
        #src/i_system.c
        #src/i_sound.c
        #src/i_video.c
        #src/m_bbox.c
        #src/m_fixed.c
        #src/m_menu.c
        #src/m_misc.c
        #src/m_random.c
        #src/m_swap.c
        #src/p_maputl.c
        #src/p_setup.c
        #src/p_spec.c
        #src/p_tick.c
        #src/p_user.c
        #src/r_bsp.c
        #src/r_data.c
        #src/r_draw.c
        #src/r_main.c
        #src/r_plane.c
        #src/r_segs.c
        #src/r_sky.c
        #src/r_things.c
        #src/s_sound.c
        #src/st_stuff.c
        #src/v_video.c
        #src/wi_stuff.c
)

target_link_libraries(PureDoom PRIVATE SDL2::SDL2)

target_link_libraries(PureDoom PRIVATE ${SDL_MIXER_LIBRARIES})
target_include_directories(PureDoom PRIVATE ${SDL_MIXER_INCLUDE_DIRS})
