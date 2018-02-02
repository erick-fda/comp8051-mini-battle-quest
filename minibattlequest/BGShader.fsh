//
//  BGShader.fsh
//  minibattlequest
//
//  Created by Chris Leclair on 2017-01-24.
//  Copyright © 2017 Mini Battle Quest. All rights reserved.
//

//carbon copy of default Shader for now, will figure out textures later
varying lowp vec4 colorVarying; //do I need this?

varying lowp vec2 texCoordOut; //from Vertex shader

uniform sampler2D texture;

void main()
{
    //gl_FragColor = vec4(0.0, 1.0, 0.0, 1.0);
    gl_FragColor = texture2D(texture, texCoordOut); //I hope this works!
}
