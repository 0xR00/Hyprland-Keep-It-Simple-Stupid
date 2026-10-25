-- #######################################################################################
-- HYPRLAND LUA CONFIG
-- Converted from the supplied hyprland.conf
-- #######################################################################################

-- See https://wiki.hypr.land/Configuring/

----------------
--- MONITORS ---
----------------

hl.monitor({
    output = "DP-1",
    mode = "1920x1080",
    position = "0x0",
    scale = 1,
})

hl.monitor({
    output = "HDMI-A-1",
    mode = "1366x768",
    position = "1920x0",
    scale = 1,
})

-------------------
--- WORKSPACES ---
-------------------

hl.workspace_rule({
    workspace = "1",
    monitor = "DP-1",
    default = true,
    persistent = true,
})

hl.workspace_rule({
    workspace = "2",
    monitor = "DP-1",
    persistent = true,
})

hl.workspace_rule({
    workspace = "3",
    monitor = "DP-1",
    persistent = true,
})

hl.workspace_rule({
    workspace = "4",
    monitor = "DP-1",
    persistent = true,
})

hl.workspace_rule({
    workspace = "5",
    monitor = "DP-1",
    persistent = true,
})

hl.workspace_rule({
    workspace = "6",
    monitor = "DP-1",
    persistent = true,
})

hl.workspace_rule({
    workspace = "7",
    monitor = "DP-1",
    persistent = true,
})

hl.workspace_rule({
    workspace = "8",
    monitor = "DP-1",
    persistent = true,
})

hl.workspace_rule({
    workspace = "9",
    monitor = "DP-1",
    persistent = true,
})

hl.workspace_rule({
    workspace = "10",
    monitor = "DP-1",
    persistent = true,
})

hl.workspace_rule({
    workspace = "11",
    monitor = "HDMI-A-1",
    default = true,
    persistent = true,
})

hl.workspace_rule({
    workspace = "12",
    monitor = "HDMI-A-1",
    persistent = true,
})

hl.workspace_rule({
    workspace = "13",
    monitor = "HDMI-A-1",
    persistent = true,
})

hl.workspace_rule({
    workspace = "14",
    monitor = "HDMI-A-1",
    persistent = true,
})

---------------------
--- MY PROGRAMS ---
---------------------

local terminal = "kitty"
local fileManager = "nautilus"
-- local menu = "rofi -show drun"
local menu = 'rofi -show combi -modi combi -combi-modi "drun,run"'
local browser = "brave"

----------------
--- AUTOSTART ---
----------------

hl.on("hyprland.start", function()
    hl.exec_cmd("waybar -c ~/.config/waybar/config & waybar -c ~/.config/waybar/config2")
    hl.exec_cmd("easyeffects --gapplication-service")
    hl.exec_cmd("awww-daemon")
end)

-- `exec` runs on configuration reload as well.
hl.on("config.reloaded", function()
    hl.exec_cmd("awww img /home/miguel/Documents/Wallpapers/1.jpg")
    hl.exec_cmd('gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"')
    hl.exec_cmd('gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3"')
end)

-------------------------------
--- ENVIRONMENT VARIABLES ---
-------------------------------

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("GBM_BACKEND", "nvidia-drm")

-----------------------
--- LOOK AND FEEL ---
-----------------------

hl.config({
    general = {
        gaps_in = 2,
        gaps_out = 8,

        border_size = 0,

        col = {
            active_border = "rgba(9f9f9fff)",
            inactive_border = "rgba(595959aa)",
        },

        resize_on_border = false,
        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding = 0,
        rounding_power = 2,

        active_opacity = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = 0xee1a1a1a,
        },

        blur = {
            enabled = true,
            size = 3,
            passes = 1,

            vibrancy = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },

    dwindle = {
        preserve_split = true,
    },

    master = {
        new_status = "master",
    },

    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = false,
    },

    input = {
        kb_layout = "es",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",

        follow_mouse = 1,

        sensitivity = 0,

        touchpad = {
            natural_scroll = false,
        },
    },
})

--------------------
--- ANIMATIONS ---
--------------------

hl.curve("easeOutQuint", {
    type = "bezier",
    points = {
        { 0.23, 1 },
        { 0.32, 1 },
    },
})

hl.curve("easeInOutCubic", {
    type = "bezier",
    points = {
        { 0.65, 0.05 },
        { 0.36, 1 },
    },
})

hl.curve("linear", {
    type = "bezier",
    points = {
        { 0, 0 },
        { 1, 1 },
    },
})

hl.curve("almostLinear", {
    type = "bezier",
    points = {
        { 0.5, 0.5 },
        { 0.75, 1.0 },
    },
})

hl.curve("quick", {
    type = "bezier",
    points = {
        { 0.15, 0 },
        { 0.1, 1 },
    },
})

hl.animation({
    leaf = "global",
    enabled = true,
    speed = 10,
    bezier = "default",
})

hl.animation({
    leaf = "border",
    enabled = true,
    speed = 5.39,
    bezier = "easeOutQuint",
})

hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 4.79,
    bezier = "easeOutQuint",
})

hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 4.1,
    bezier = "easeOutQuint",
    style = "popin 87%",
})

hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 1.49,
    bezier = "linear",
    style = "popin 87%",
})

hl.animation({
    leaf = "fadeIn",
    enabled = true,
    speed = 1.73,
    bezier = "almostLinear",
})

hl.animation({
    leaf = "fadeOut",
    enabled = true,
    speed = 1.46,
    bezier = "almostLinear",
})

hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 3.03,
    bezier = "quick",
})

hl.animation({
    leaf = "layers",
    enabled = true,
    speed = 3.81,
    bezier = "easeOutQuint",
})

hl.animation({
    leaf = "layersIn",
    enabled = true,
    speed = 4,
    bezier = "easeOutQuint",
    style = "fade",
})

hl.animation({
    leaf = "layersOut",
    enabled = true,
    speed = 1.5,
    bezier = "linear",
    style = "fade",
})

hl.animation({
    leaf = "fadeLayersIn",
    enabled = true,
    speed = 1.79,
    bezier = "almostLinear",
})

hl.animation({
    leaf = "fadeLayersOut",
    enabled = true,
    speed = 1.39,
    bezier = "almostLinear",
})

hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 1.94,
    bezier = "almostLinear",
    style = "fade",
})

hl.animation({
    leaf = "workspacesIn",
    enabled = true,
    speed = 1.21,
    bezier = "almostLinear",
    style = "fade",
})

hl.animation({
    leaf = "workspacesOut",
    enabled = true,
    speed = 1.94,
    bezier = "almostLinear",
    style = "fade",
})

----------------------------
--- SMART GAPS (DISABLED)
----------------------------

-- workspace = w[tv1], gapsout:0, gapsin:0
-- workspace = f[1], gapsout:0, gapsin:0
-- windowrulev2 = bordersize 0, floating:0, onworkspace:w[tv1]
-- windowrulev2 = rounding 0, floating:0, onworkspace:w[tv1]
-- windowrulev2 = bordersize 0, floating:0, onworkspace:f[1]
-- windowrulev2 = rounding 0, floating:0, onworkspace:f[1]

----------------
--- INPUT ---
----------------

hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})

---------------------
--- KEYBINDINGS ---
---------------------

local mainMod = "SUPER"

-- Launch terminal
hl.bind(
    mainMod .. " + Return",
    hl.dsp.exec_cmd(terminal)
)

-- Kill active window
hl.bind(
    mainMod .. " + Q",
    hl.dsp.window.close()
)

-- Exit Hyprland
hl.bind(
    mainMod .. " + M",
    hl.dsp.exit()
)

-- File manager
hl.bind(
    mainMod .. " + E",
    hl.dsp.exec_cmd(fileManager)
)

-- Toggle floating
hl.bind(
    mainMod .. " + V",
    hl.dsp.window.float({
        action = "toggle",
    })
)

-- Menu
hl.bind(
    mainMod .. " + D",
    hl.dsp.exec_cmd(menu)
)

-- Pseudo
hl.bind(
    mainMod .. " + P",
    hl.dsp.window.pseudo()
)

-- Toggle split
hl.bind(
    mainMod .. " + J",
    hl.dsp.layout("togglesplit")
)

-- Browser
hl.bind(
    mainMod .. " + F",
    hl.dsp.exec_cmd(browser)
)

-- Screenshot
hl.bind(
    "CTRL + SHIFT + S",
    hl.dsp.exec_cmd('grim -g "$(slurp)" - | wl-copy')
)

-- Screenshot with swappy
hl.bind(
    "CTRL + " .. mainMod .. " + S",
    hl.dsp.exec_cmd('grim -g "$(slurp)" - | swappy -f -')
)

---------------------------
--- MOVE FOCUS
---------------------------

hl.bind(
    mainMod .. " + left",
    hl.dsp.focus({ direction = "left" })
)

hl.bind(
    mainMod .. " + right",
    hl.dsp.focus({ direction = "right" })
)

hl.bind(
    mainMod .. " + up",
    hl.dsp.focus({ direction = "up" })
)

hl.bind(
    mainMod .. " + down",
    hl.dsp.focus({ direction = "down" })
)

---------------------------
--- WORKSPACE SWITCHING
---------------------------

for i = 1, 10 do
    local key = tostring(i % 10)

    hl.bind(
        mainMod .. " + " .. key,
        hl.dsp.focus({
            workspace = i,
        })
    )
end

---------------------------
--- SECOND MONITOR
---------------------------

hl.bind(
    "ALT + SHIFT + 1",
    hl.dsp.focus({ workspace = 11 })
)

hl.bind(
    "ALT + SHIFT + 2",
    hl.dsp.focus({ workspace = 12 })
)

hl.bind(
    "ALT + SHIFT + 3",
    hl.dsp.focus({ workspace = 13 })
)

hl.bind(
    "ALT + SHIFT + 4",
    hl.dsp.focus({ workspace = 14 })
)

---------------------------
--- DISABLE KEYBINDS
---------------------------

-- Equivalent to:
-- bind = $mainMod, A, submap, disable_keybinds
-- submap = disable_keybinds
-- bind = $mainMod, A, submap, reset
-- submap = reset

hl.bind(
    mainMod .. " + A",
    hl.dsp.submap("disable_keybinds")
)

hl.define_submap("disable_keybinds", function()
    hl.bind(
        mainMod .. " + A",
        hl.dsp.submap("reset")
    )
end)

---------------------------
--- MOVE WINDOW TO WORKSPACE
---------------------------

for i = 1, 10 do
    local key = tostring(i % 10)

    hl.bind(
        mainMod .. " + SHIFT + " .. key,
        hl.dsp.window.move({
            workspace = i,
        })
    )
end

---------------------------
--- SPECIAL WORKSPACE
---------------------------

hl.bind(
    mainMod .. " + S",
    hl.dsp.workspace.toggle_special("magic")
)

hl.bind(
    mainMod .. " + SHIFT + S",
    hl.dsp.window.move({
        workspace = "special:magic",
    })
)

---------------------------
--- SCROLL WORKSPACES
---------------------------

hl.bind(
    mainMod .. " + mouse_down",
    hl.dsp.focus({
        workspace = "e+1",
    })
)

hl.bind(
    mainMod .. " + mouse_up",
    hl.dsp.focus({
        workspace = "e-1",
    })
)

---------------------------
--- MOVE / RESIZE WINDOWS
---------------------------

hl.bind(
    mainMod .. " + mouse:272",
    hl.dsp.window.drag(),
    {
        mouse = true,
    }
)

hl.bind(
    mainMod .. " + mouse:273",
    hl.dsp.window.resize(),
    {
        mouse = true,
    }
)

---------------------------
--- VOLUME / BRIGHTNESS
---------------------------

hl.bind(
    "XF86AudioRaiseVolume",
    hl.dsp.exec_cmd(
        "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
    ),
    {
        repeating = true,
    }
)

hl.bind(
    "XF86AudioLowerVolume",
    hl.dsp.exec_cmd(
        "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
    ),
    {
        repeating = true,
    }
)

hl.bind(
    "XF86AudioMute",
    hl.dsp.exec_cmd(
        "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
    ),
    {
        repeating = true,
    }
)

hl.bind(
    "XF86AudioMicMute",
    hl.dsp.exec_cmd(
        "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
    ),
    {
        repeating = true,
    }
)

hl.bind(
    "XF86MonBrightnessUp",
    hl.dsp.exec_cmd(
        "brightnessctl s 10%+"
    ),
    {
        repeating = true,
    }
)

hl.bind(
    "XF86MonBrightnessDown",
    hl.dsp.exec_cmd(
        "brightnessctl s 10%-"
    ),
    {
        repeating = true,
    }
)

---------------------------
--- MEDIA PLAYER
---------------------------

hl.bind(
    "XF86AudioNext",
    hl.dsp.exec_cmd("playerctl next"),
    {
        locked = true,
    }
)

hl.bind(
    "XF86AudioPause",
    hl.dsp.exec_cmd("playerctl play-pause"),
    {
        locked = true,
    }
)

hl.bind(
    "XF86AudioPlay",
    hl.dsp.exec_cmd("playerctl play-pause"),
    {
        locked = true,
    }
)

hl.bind(
    "XF86AudioPrev",
    hl.dsp.exec_cmd("playerctl previous"),
    {
        locked = true,
    }
)

--------------------------------
--- WINDOWS AND WORKSPACES
--------------------------------

-- Ignore maximize requests from apps.
hl.window_rule({
    name = "suppressevent-maximize",
    match = {
        class = ".*",
    },
    suppress_event = "maximize",
})

-- Fix some dragging issues for XWayland
hl.window_rule({
    name = "nofocus-xwayland-drag",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false
    },
    no_focus = true,
})

-------------------------------
--- ADDITIONAL ENVIRONMENT
-------------------------------

hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("GTK_THEME", "adw-gtk3:dark")
