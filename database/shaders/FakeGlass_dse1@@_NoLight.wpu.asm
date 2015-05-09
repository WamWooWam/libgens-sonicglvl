//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   float4 g_GI0Scale;
//   float4 g_GI1Scale;
//   sampler2D g_GISampler;
//   float4 g_LightScatteringColor;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 mrgChrEmissionParam;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampSpec;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_Specular                            c18      1
//   g_PowerGlossLevel                     c20      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   mrgTexcoordIndex                      c26      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   mrgChrEmissionParam                   c150     1
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampEnv                               s3       1
//   g_VerticalShadowMapSampler            s7       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -1, 1.05263162, -3
    def c1, 0.298900008, 0.586600006, 0.114399999, -0.0500000007
    def c2, 0, 1, 2, 3
    def c3, 500, 5, 1024, 4
    def c4, 0.5, -0.5, 0, 0
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s7
    dcl_2d s10
    dcl_2d s13
    max r0.x, v4.z, c2.x
    add r0.y, r0.x, -v4.w
    cmp r0.z, r0.y, c2.x, r0.x
    mov r0.xyw, v4
    texldp_pp r0, r0, s13
    max r0.y, v5.z, c2.x
    add r0.z, r0.y, -v5.w
    cmp r1.z, r0.z, c2.x, r0.y
    mov r1.xyw, v5
    texldp_pp r1, r1, s7
    min_pp r2.x, r1.x, r0.x
    lrp_pp r0.x, v6.z, c2.y, r2.x
    rcp r0.y, v4.w
    mul r0.yz, r0.y, v4.xxyw
    mad r0.yz, r0, c0.x, c0.y
    abs_sat r0.yz, r0
    add_sat r0.yz, r0, -c65.x
    mul r0.yz, r0, c65.y
    max r1.x, r0.y, r0.z
    lrp_pp r2.x, r1.x, c2.y, r0.x
    texld_pp r0, v0.zwzw, s10
    mul r0.w, r0.w, r2.x
    add_pp r1.x, -c61.z, c61.y
    rcp_pp r1.x, r1.x
    add r1.yzw, -c22.xxyz, v2.xxyz
    dp3 r2.y, r1.yzww, r1.yzww
    rsq r2.y, r2.y
    mul_pp r1.yzw, r1, r2.y
    rcp r2.y, r2.y
    add r2.y, r2.y, -c60.z
    dp3_pp r2.z, r1.yzww, c23
    add_pp r2.z, r2.z, -c61.z
    mul_sat_pp r1.x, r1.x, r2.z
    mad_pp r2.z, r1.x, -c0.x, -c0.w
    mul_pp r1.x, r1.x, r1.x
    mul_pp r1.x, r1.x, r2.z
    pow_sat_pp r2.z, r1.x, c61.w
    mov r3.xy, c2
    add r1.x, r3.y, -c61.x
    cmp_pp r1.x, r1.x, c2.y, r2.z
    add r2.z, -c60.z, c60.w
    rcp r2.z, r2.z
    mul_sat r2.y, r2.z, r2.y
    add_pp r2.y, -r2.y, c2.y
    cmp_pp r2.y, -c61.x, r3.y, r2.y
    mul_pp r1.x, r1.x, r2.y
    mul_pp r2.yzw, c59.w, c59.xxyz
    mov_pp r4.xy, c3
    mul_pp r3.yz, r4.xxyw, c20
    mul_pp r2.yzw, r2, r3.z
    max_pp r4.x, r3.y, c2.y
    mul_pp r3.yzw, r3.z, c37.xxyz
    min r5.x, r4.x, c3.z
    add_pp r4.xyz, c22, -v2
    dp3_pp r4.w, r4, r4
    rsq_pp r4.w, r4.w
    mad_pp r5.yzw, r4.xxyz, r4.w, -r1
    mad_pp r4.xyz, r4, r4.w, -c10
    nrm_pp r6.xyz, r4
    nrm_pp r4.xyz, r5.yzww
    nrm_pp r7.xyz, v3
    dp3_sat_pp r4.x, r4, r7
    pow r6.w, r4.x, r5.x
    mul_pp r2.yzw, r2, r6.w
    mul_pp r2.yzw, r1.x, r2
    dp3_sat_pp r4.x, r6, r7
    pow r6.x, r4.x, r5.x
    mul_pp r3.yzw, r3, r6.x
    mad_pp r2.yzw, r3, r0.w, r2
    mul_pp r2.yzw, r2, c18.xxyz
    frc r3.yz, c26.xxzw
    cmp r4.xy, -r3.yzzw, c2.x, c2.y
    add r3.yz, -r3, c26.xxzw
    cmp r3.xw, c26.xyzz, r3.x, r4.xyzy
    add r3.xy, r3.xwzw, r3.yzzw
    add r4, r3.y, -c2
    add r3, r3.x, -c2
    cmp r5.xy, -r4_abs.x, v0, c2.x
    cmp r4.xy, -r4_abs.y, v0.zwzw, r5
    cmp r4.xy, -r4_abs.z, v1, r4
    cmp r4.xy, -r4_abs.w, v1.zwzw, r4
    texld_pp r4, r4, s1
    mul r5, r7.y, c91
    mad r5, r7.x, c90, r5
    mad r5, r7.z, c92, r5
    dp4 r5.z, r5, r5
    rsq r5.z, r5.z
    mul r5.xy, r5.z, r5
    mad_pp r5.xy, r5, c4, c4.x
    texld_pp r5, r5, s3
    mul r6.xyz, r5, c63.x
    mad_pp r5.xyz, r6, r5.w, r5
    mul_pp r5.xyz, r4.w, r5
    mul r4.w, c64.z, c64.x
    mov r6.xz, c64
    mad r6.x, r6.x, -r6.z, r6.z
    mad_pp r4.w, r0.w, r6.x, r4.w
    mul_pp r5.xyz, r4.w, r5
    mad_pp r2.yzw, r2, r4.xxyz, r5.xxyz
    mul_pp r2.yzw, r2, v3.w
    mul_pp r4.xyz, r0, r0
    dp3_pp r4.x, r4, c1
    mad_pp r0.xyz, r0, r0, -r4.x
    mad_sat_pp r0.xyz, r0, c71.w, r4.x
    mul_pp r4.xyz, r0, c70
    mul r4.xyz, r4, c70.w
    mad r0.xyz, r0, c70, -r4
    mad_pp r0.xyz, r2.x, r0, r4
    dp3_pp r1.y, r7, -r1.yzww
    dp3_pp r1.z, r7, -c10
    add_pp r1.yz, r1, c1.w
    mul_sat_pp r1.yz, r1, c0.z
    mul_pp r4.xyz, r1.z, c36
    mul r5.xyz, c58.w, c58
    mul_pp r1.yzw, r1.y, r5.xxyz
    mul_pp r1.xyz, r1.yzww, r1.x
    mad_pp r1.xyz, r4, r0.w, r1
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    cmp r1.xy, -r3_abs.x, v0, c2.x
    cmp r1.xy, -r3_abs.y, v0.zwzw, r1
    cmp r1.xy, -r3_abs.z, v1, r1
    cmp r1.xy, -r3_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    add_sat_pp r0.w, r5.w, r1.w
    mul_pp r3.w, r0.w, c16.w
    mad_pp r0.xyz, r0, r1, r2.yzww
    mov r1.xyz, c150
    mul_pp r1.xyz, r1, c17
    mad_pp r3.xyz, r1, c150.w, r0
    mul_pp r0, r3, v7
    mul_pp r0.w, r0.w, c21.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c3.w
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 149 instruction slots used (6 texture, 143 arithmetic)