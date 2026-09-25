// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Cocos2d-x/jsb_opengl.js:1
// source line 12, bytecode pc 0
var gl;
// source line 12, bytecode pc 32
(gl = (gl || {}));
// source line 17, bytecode pc 48
(gl.createTexture = function() {
    var ret;
    // source line 19, bytecode pc 19
    (ret = gl._createTexture());
    // source line 20, bytecode pc 34
    return { texture_id: ret }
});
// source line 23, bytecode pc 64
(gl.createBuffer = function() {
    var ret;
    // source line 25, bytecode pc 19
    (ret = gl._createBuffer());
    // source line 26, bytecode pc 34
    return { buffer_id: ret }
});
// source line 29, bytecode pc 80
(gl.createRenderbuffer = function() {
    var ret;
    // source line 31, bytecode pc 19
    (ret = gl._createRenderuffer());
    // source line 32, bytecode pc 34
    return { renderbuffer_id: ret }
});
// source line 35, bytecode pc 96
(gl.createFramebuffer = function() {
    var ret;
    // source line 37, bytecode pc 19
    (ret = gl._createFramebuffer());
    // source line 38, bytecode pc 34
    return { framebuffer_id: ret }
});
// source line 41, bytecode pc 112
(gl.createProgram = function() {
    var ret;
    // source line 43, bytecode pc 19
    (ret = gl._createProgram());
    // source line 44, bytecode pc 34
    return { program_id: ret }
});
// source line 47, bytecode pc 128
(gl.createShader = function(shaderType) {
    var ret;
    // source line 49, bytecode pc 23
    (ret = gl._createShader(shaderType));
    // source line 50, bytecode pc 38
    return { shader_id: ret }
});
// source line 56, bytecode pc 144
(gl.deleteTexture = function(texture) {
    var texture_id;
    // source line 57, bytecode pc 11
    (texture_id = texture.texture_id);
    if ((typeof(texture) === "number")) {
        // source line 60, bytecode pc 33
        (texture_id = texture);
    }
    // source line 62, bytecode pc 54
    gl._deleteTexture(texture_id);
});
// source line 65, bytecode pc 160
(gl.deleteBuffer = function(bufer) {
    var buffer_id;
    // source line 66, bytecode pc 13
    (buffer_id = buffer.buffer_id);
    if ((typeof(buffer) === "number")) {
        // source line 69, bytecode pc 39
        (buffer_id = buffer);
    }
    // source line 71, bytecode pc 60
    gl._deleteBuffer(buffer_id);
});
// source line 74, bytecode pc 176
(gl.deleteRenderbuffer = function(bufer) {
    var buffer_id;
    // source line 75, bytecode pc 13
    (buffer_id = buffer.renderbuffer_id);
    if ((typeof(buffer) === "number")) {
        // source line 78, bytecode pc 39
        (buffer_id = buffer);
    }
    // source line 80, bytecode pc 62
    gl._deleteRenderbuffer(renderbuffer_id);
});
// source line 83, bytecode pc 192
(gl.deleteFramebuffer = function(bufer) {
    var buffer_id;
    // source line 84, bytecode pc 13
    (buffer_id = buffer.framebuffer_id);
    if ((typeof(buffer) === "number")) {
        // source line 87, bytecode pc 39
        (buffer_id = buffer);
    }
    // source line 89, bytecode pc 60
    gl._deleteFramebuffer(buffer_id);
});
// source line 92, bytecode pc 208
(gl.deleteProgram = function(program) {
    var program_id;
    // source line 93, bytecode pc 11
    (program_id = program.program_id);
    if ((typeof(program) === "number")) {
        // source line 96, bytecode pc 33
        (program_id = program);
    }
    // source line 98, bytecode pc 54
    gl._deleteProgram(program_id);
});
// source line 101, bytecode pc 224
(gl.deleteShader = function(shader) {
    var shader_id;
    // source line 102, bytecode pc 11
    (shader_id = shader.shader_id);
    if ((typeof(shader) === "number")) {
        // source line 105, bytecode pc 33
        (shader_id = shader);
    }
    // source line 107, bytecode pc 54
    gl._deleteShader(shader_id);
});
// source line 114, bytecode pc 240
(gl.bindTexture = function(target, texture) {
    var texture_id;
    if ((typeof(texture) === "number")) {
        // source line 119, bytecode pc 25
        (texture_id = texture);
    } else {
        if ((texture === null)) {
            // source line 121, bytecode pc 45
            (texture_id = 0);
        } else {
            // source line 123, bytecode pc 62
            (texture_id = texture.texture_id);
        }
    }
    // source line 125, bytecode pc 87
    gl._bindTexture(target, texture_id);
});
// source line 129, bytecode pc 256
(gl.bindBuffer = function(target, buffer) {
    var buffer_id;
    if ((typeof(buffer) === "number")) {
        // source line 133, bytecode pc 25
        (buffer_id = buffer);
    } else {
        if ((buffer === null)) {
            // source line 135, bytecode pc 45
            (buffer_id = 0);
        } else {
            // source line 137, bytecode pc 62
            (buffer_id = buffer.buffer_id);
        }
    }
    // source line 139, bytecode pc 87
    gl._bindBuffer(target, buffer_id);
});
// source line 143, bytecode pc 272
(gl.bindRenderBuffer = function(target, buffer) {
    var buffer_id;
    if ((typeof(buffer) === "number")) {
        // source line 148, bytecode pc 25
        (buffer_id = buffer);
    } else {
        if ((buffer === null)) {
            // source line 150, bytecode pc 45
            (buffer_id = 0);
        } else {
            // source line 152, bytecode pc 62
            (buffer_id = buffer.buffer_id);
        }
    }
    // source line 154, bytecode pc 87
    gl._bindRenderbuffer(target, buffer_id);
});
// source line 158, bytecode pc 288
(gl.bindFramebuffer = function(target, buffer) {
    var buffer_id;
    if ((typeof(buffer) === "number")) {
        // source line 163, bytecode pc 25
        (buffer_id = buffer);
    } else {
        if ((buffer === null)) {
            // source line 165, bytecode pc 45
            (buffer_id = 0);
        } else {
            // source line 167, bytecode pc 62
            (buffer_id = buffer.buffer_id);
        }
    }
    // source line 169, bytecode pc 87
    gl._bindFramebuffer(target, buffer_id);
});
// source line 176, bytecode pc 304
(gl.getUniform = function(program, location) {
    var program_id, location_id;
    if ((typeof(program) === "number")) {
        // source line 182, bytecode pc 29
        (program_id = program);
    } else {
        // source line 184, bytecode pc 46
        (program_id = program.program_id);
    }
    if ((typeof(location) === "number")) {
        // source line 187, bytecode pc 68
        (location_id = location);
    } else {
        // source line 189, bytecode pc 85
        (location_id = location.location_id);
    }
    // source line 191, bytecode pc 110
    return gl._getUniform(program_id, location_id);
});
// source line 211, bytecode pc 320
(gl.compileShader = function(shader) {
    // source line 212, bytecode pc 25
    gl._compileShader(shader.shader_id);
});
// source line 216, bytecode pc 336
(gl.shaderSource = function(shader, source) {
    // source line 217, bytecode pc 29
    gl._shaderSource(shader.shader_id, source);
});
// source line 221, bytecode pc 352
(gl.getShaderParameter = function(shader, e) {
    // source line 222, bytecode pc 29
    return gl._getShaderParameter(shader.shader_id, e);
});
// source line 226, bytecode pc 368
(gl.getShaderInfoLog = function(shader) {
    // source line 227, bytecode pc 25
    return gl._getShaderInfoLog(shader.shader_id);
});
// source line 234, bytecode pc 384
(gl.attachShader = function(program, shader) {
    var program_id;
    // source line 235, bytecode pc 11
    (program_id = program.program_id);
    if ((typeof(program) === "number")) {
        // source line 238, bytecode pc 33
        (program_id = program);
    }
    // source line 240, bytecode pc 63
    gl._attachShader(program_id, shader.shader_id);
});
// source line 244, bytecode pc 400
(gl.linkProgram = function(program) {
    var program_id;
    // source line 245, bytecode pc 11
    (program_id = program.program_id);
    if ((typeof(program) === "number")) {
        // source line 248, bytecode pc 33
        (program_id = program);
    }
    // source line 250, bytecode pc 54
    gl._linkProgram(program_id);
});
// source line 255, bytecode pc 416
(gl.getProgramParameter = function(program, e) {
    var program_id;
    // source line 256, bytecode pc 11
    (program_id = program.program_id);
    if ((typeof(program) === "number")) {
        // source line 259, bytecode pc 33
        (program_id = program);
    }
    // source line 261, bytecode pc 58
    return gl._getProgramParameter(program_id, e);
});
// source line 265, bytecode pc 432
(gl.useProgram = function(program) {
    var program_id;
    if ((typeof(program) === "number")) {
        // source line 269, bytecode pc 25
        (program_id = program);
    } else {
        // source line 271, bytecode pc 42
        (program_id = program.program_id);
    }
    // source line 273, bytecode pc 63
    gl._useProgram(program_id);
});
// source line 278, bytecode pc 448
(gl.getAttribLocation = function(program, name) {
    var program_id;
    // source line 279, bytecode pc 11
    (program_id = program.program_id);
    if ((typeof(program) === "number")) {
        // source line 282, bytecode pc 33
        (program_id = program);
    }
    // source line 284, bytecode pc 58
    return gl._getAttribLocation(program_id, name);
});
// source line 288, bytecode pc 464
(gl.getUniformLocation = function(program, name) {
    var program_id;
    // source line 289, bytecode pc 11
    (program_id = program.program_id);
    if ((typeof(program) === "number")) {
        // source line 292, bytecode pc 33
        (program_id = program);
    }
    // source line 295, bytecode pc 58
    return gl._getUniformLocation(program_id, name);
});
// source line 300, bytecode pc 480
(gl.getActiveAttrib = function(program, index) {
    var program_id;
    // source line 301, bytecode pc 11
    (program_id = program.program_id);
    if ((typeof(program) === "number")) {
        // source line 304, bytecode pc 33
        (program_id = program);
    }
    // source line 306, bytecode pc 58
    return gl._getActiveAttrib(program_id, index);
});
// source line 310, bytecode pc 496
(gl.getActiveUniform = function(program, index) {
    var program_id;
    // source line 311, bytecode pc 11
    (program_id = program.program_id);
    if ((typeof(program) === "number")) {
        // source line 314, bytecode pc 33
        (program_id = program);
    }
    // source line 316, bytecode pc 58
    return gl._getActiveUniform(program_id, index);
});
// source line 320, bytecode pc 512
(gl.getAttachedShaders = function(program) {
    var program_id;
    // source line 321, bytecode pc 11
    (program_id = program.program_id);
    if ((typeof(program) === "number")) {
        // source line 324, bytecode pc 33
        (program_id = program);
    }
    // source line 326, bytecode pc 54
    return gl._getAttachedShaders(program_id);
});
// source line 339, bytecode pc 528
(gl.texImage2D = function() {
    var arguments;
    // source line 339, bytecode pc 4
    (arguments = arguments);
    if ((arguments.length != 9)) {
        // source line 341, bytecode pc 35
        throw ("texImage2D: Unsupported number of parameters:" + arguments.length);
    }
    // source line 343, bytecode pc 63
    gl._texImage2D.apply(this, arguments);
});
// source line 352, bytecode pc 544
(gl.texSubImage2D = function() {
    var arguments;
    // source line 352, bytecode pc 4
    (arguments = arguments);
    if ((arguments.length != 9)) {
        // source line 354, bytecode pc 26
        throw "texImage2D: Unsupported number of parameters";
    }
    // source line 356, bytecode pc 54
    gl._texSubImage2D.apply(this, arguments);
});
// source line 368, bytecode pc 560
(gl.getExtension = function(extension) {
    var extensions;
    // source line 369, bytecode pc 19
    (extensions = gl.getSupportedExtensions());
    if ((extensions.indexOf(extension) > -1)) {
        // source line 371, bytecode pc 52
        return {}
    }
    // source line 372, bytecode pc 54
    return null;
});
