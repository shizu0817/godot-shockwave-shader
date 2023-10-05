# godot shockwave shader
shockwave shader for godot4, shader effects is shown in the images below.
<p align="center">
 <img src="https://github.com/shizu0817/godot-shockwave-shader/assets/54024777/1d2857a8-ce0e-4ffe-9f75-0de53416d010" width="40%"/>
 <img src="https://github.com/shizu0817/godot-shockwave-shader/assets/54024777/e20988d0-ecdb-4b82-80c1-554b31b76f98" width="40%"/>
</p>

## How to use
Shockwave shader is at `shaders/shockwave.gdshader`. 3 demo scenes with file name end with `_demo.tscn` can be found in `scenes\` directory.

Shockwave effect is achieved by using an `AnimationPlayer` Node to animate some shader parameters:
* `Size (shockwave radius)`
* `Width (shockwave ring width)`
* `Intensity (max screen offset amount)`
* `Chromatic Offset (offset for chromatic aberration effect)`

**Also, shader parameter `Center` must be specify to the coordinate of shockwave center in screen UV space**

To do this programmatically, reference to the
* scene: `scenes/multiple_shockwaves_demo.tscn`
* script: `scripts/shockwave_effect.gd`

(I read **[THIS](https://docs.godotengine.org/en/4.1/tutorials/2d/2d_transforms.html)** godot official documentation and try to do this)

**Notice: To achieve multiple shockwaves effects, I use a `BackBufferCopy` Node to copy whole viewport for each shockwave, this may cause performance problem (not tested, not knowing more effective way to done this)**

## Credits
Water Shader in demo scene is made by reading this tutorial: https://www.alanzucconi.com/2019/09/13/believable-caustics-reflections/

Water Caustics Effect texture download from: https://opengameart.org/content/water-caustics-effect-small

2D tilemap asset download from: https://www.kenney.nl/assets/platformer-art-requests

## License
The code is available under the MIT license. See [LICENSE](LICENSE) for details.
