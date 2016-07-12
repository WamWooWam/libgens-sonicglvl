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
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLocalLight0_Color;
//   float4 mrgLocalLight0_Position;
//   float4 mrgLocalLight0_Range;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgLuminanceRange;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampRef;
//
//
// Registers:
//
//   Name                       Reg   Size
//   -------------------------- ----- ----
//   mrgGlobalLight_Direction   c10      1
//   g_Diffuse                  c16      1
//   g_Ambient                  c17      1
//   g_Specular                 c18      1
//   g_PowerGlossLevel          c20      1
//   g_EyePosition              c22      1
//   g_EyeDirection             c23      1
//   mrgTexcoordIndex           c26      1
//   mrgGlobalLight_Diffuse     c36      1
//   mrgGlobalLight_Specular    c37      1
//   mrgLocalLight0_Position    c38      1
//   mrgLocalLight0_Color       c39      1
//   mrgLocalLight0_Range       c40      1
//   mrgLocalLight1_Position    c42      1
//   mrgLocalLight1_Color       c43      1
//   mrgLocalLight1_Range       c44      1
//   mrgLocalLight2_Position    c46      1
//   mrgLocalLight2_Color       c47      1
//   mrgLocalLight2_Range       c48      1
//   mrgLocalLight3_Position    c50      1
//   mrgLocalLight3_Color       c51      1
//   mrgLocalLight3_Range       c52      1
//   mrgEyeLight_Diffuse        c58      1
//   mrgEyeLight_Specular       c59      1
//   mrgEyeLight_Range          c60      1
//   mrgEyeLight_Attribute      c61      1
//   mrgLuminanceRange          c63      1
//   mrgInShadowScale           c64      1
//   g_ShadowMapParams          c65      1
//   g_GI0Scale                 c70      1
//   g_GI1Scale                 c71      1
//   g_LightScatteringColor     c75      1
//   g_ForceAlphaColor          c89      1
//   sampDif                    s0       1
//   sampEnv                    s5       1
//   sampRef                    s6       1
//   g_VerticalShadowMapSampler s7       1
//   g_GISampler                s10      1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 1024
    def c1, 2, -1, -2, 3
    def c2, 500, 5, 0.583607316, 1
    def c3, 0.25, 4, 0, 0
    def c4, -1, 1, 0, 0.5
    def c5, 0.763941944, 1, -1, 0
    def c6, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s5
    dcl_2d s6
    dcl_2d s7
    dcl_2d s10
    dcl_2d s13
    frc r0.x, c26.x
    cmp r0.y, -r0.x, c6.x, c6.y
    add r0.x, -r0.x, c26.x
    mov r1.xy, c6
    cmp r0.y, c26.x, r1.x, r0.y
    add r0.x, r0.y, r0.x
    add r0, r0.x, -c6
    cmp r1.xz, -r0_abs.x, v0.xyyw, c6.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1.xzzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s0
    mul_pp r2.w, r0.w, c16.w
    add_pp r0.w, -c61.z, c61.y
    rcp_pp r0.w, r0.w
    add r1.xzw, -c22.xyyz, v2.xyyz
    dp3 r3.x, r1.xzww, r1.xzww
    rsq r3.x, r3.x
    mul_pp r1.xzw, r1, r3.x
    rcp r3.x, r3.x
    add r3.x, r3.x, -c60.z
    dp3_pp r3.y, r1.xzww, c23
    add_pp r3.y, r3.y, -c61.z
    mul_sat_pp r0.w, r0.w, r3.y
    mad_pp r3.y, r0.w, c1.z, c1.w
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r0.w, r3.y
    pow_sat_pp r3.y, r0.w, c61.w
    add r0.w, r1.y, -c61.x
    cmp_pp r0.w, r0.w, c6.y, r3.y
    add r3.y, -c60.z, c60.w
    rcp r3.y, r3.y
    mul_sat r3.x, r3.y, r3.x
    add_pp r3.x, -r3.x, c6.y
    cmp_pp r1.y, -c61.x, r1.y, r3.x
    mul_pp r0.w, r0.w, r1.y
    add r1.y, -c52.z, c52.w
    rcp r1.y, r1.y
    add r3.xyz, -c50, v2
    dp3 r3.w, r3, r3
    rsq r3.w, r3.w
    rcp r4.x, r3.w
    mul_pp r3.xyz, r3.w, r3
    add r3.w, r4.x, -c52.z
    mul_sat r1.y, r1.y, r3.w
    add_pp r1.y, -r1.y, c6.y
    add r3.w, -c48.z, c48.w
    rcp r3.w, r3.w
    add r4.xyz, -c46, v2
    dp3 r4.w, r4, r4
    rsq r4.w, r4.w
    rcp r5.x, r4.w
    mul_pp r4.xyz, r4.w, r4
    add r4.w, r5.x, -c48.z
    mul_sat r3.w, r3.w, r4.w
    add_pp r3.w, -r3.w, c6.y
    add r4.w, -c40.z, c40.w
    rcp r4.w, r4.w
    add r5.xyz, -c38, v2
    dp3 r5.w, r5, r5
    rsq r5.w, r5.w
    rcp r6.x, r5.w
    mul_pp r5.xyz, r5.w, r5
    add r5.w, r6.x, -c40.z
    mul_sat r4.w, r4.w, r5.w
    add_pp r4.w, -r4.w, c6.y
    add r5.w, -c44.z, c44.w
    rcp r5.w, r5.w
    add r6.xyz, -c42, v2
    dp3 r6.w, r6, r6
    rsq r6.w, r6.w
    rcp r7.x, r6.w
    mul_pp r6.xyz, r6.w, r6
    add r6.w, r7.x, -c44.z
    mul_sat r5.w, r5.w, r6.w
    add_pp r5.w, -r5.w, c6.y
    nrm r7, v3.xyzx
    dp3_pp r6.w, r7.wyzw, -r6
    mul_pp r8.xyz, r6.w, c43
    cmp_pp r8.xyz, r6.w, r8, c6.x
    mul_pp r8.xyz, r5.w, r8
    dp3_pp r6.w, r7.wyzw, -r5
    mul_pp r9.xyz, r6.w, c39
    cmp_pp r9.xyz, r6.w, r9, c6.x
    mad_pp r8.xyz, r4.w, r9, r8
    dp3_pp r6.w, r7.wyzw, -r4
    mul_pp r9.xyz, r6.w, c47
    cmp_pp r9.xyz, r6.w, r9, c6.x
    mad_pp r8.xyz, r3.w, r9, r8
    dp3_pp r6.w, r7.wyzw, -r3
    mul_pp r9.xyz, r6.w, c51
    cmp_pp r9.xyz, r6.w, r9, c6.x
    mad_pp r8.xyz, r1.y, r9, r8
    max r6.w, v4.z, c6.x
    add r8.w, r6.w, -v4.w
    cmp r9.z, r8.w, c6.x, r6.w
    mov r9.xyw, v4
    texldp_pp r9, r9, s13
    max r6.w, v5.z, c6.x
    add r8.w, r6.w, -v5.w
    cmp r10.z, r8.w, c6.x, r6.w
    mov r10.xyw, v5
    texldp_pp r10, r10, s7
    min_pp r6.w, r10.x, r9.x
    lrp_pp r8.w, v6.z, c6.y, r6.w
    rcp r6.w, v4.w
    mul r9.xy, r6.w, v4
    mad r9.xy, r9, c1.x, c1.y
    abs_sat r9.xy, r9
    add_sat r9.xy, r9, -c65.x
    mul r9.xy, r9, c65.y
    max r6.w, r9.x, r9.y
    lrp_pp r9.x, r6.w, c6.y, r8.w
    texld_pp r10, v0.zwzw, s10
    mul r6.w, r9.x, r10.w
    dp3_pp r8.w, r7.wyzw, -c10
    mul r9.xyz, r8.w, c36
    mul_pp r9.xyz, r6.w, r9
    cmp_pp r9.xyz, r8.w, r9, c6.x
    add_pp r8.xyz, r8, r9
    mul_pp r9.xyz, c58.w, c58
    dp3_pp r8.w, r7.wyzw, -r1.xzww
    mul_pp r9.xyz, r8.w, r9
    cmp_pp r9.xyz, r8.w, r9, c6.x
    mad_pp r8.xyz, r0.w, r9, r8
    mul_pp r9.xyz, r10, r10
    dp3_pp r8.w, r9, c0
    mad_pp r9.xyz, r10, r10, -r8.w
    mad_sat_pp r9.xyz, r9, c71.w, r8.w
    mul_pp r9.xyz, r9, c70
    mad_pp r8.xyz, r9, c17, r8
    mul_pp r8.xyz, r8, c16
    mul_pp r2.xyz, r0, r8
    mul_pp r2, r2, v7
    add_pp r8, c22.xyzx, -v2.xyzx
    dp3_pp r0.x, r8.yzww, r8.yzww
    rsq_pp r0.x, r0.x
    mad_pp r6.xyz, r8, r0.x, -r6
    nrm_pp r9.xyz, r6
    dp3_sat_pp r0.y, r9, r7
    mov_pp r6.xy, c2
    mul_pp r6.xy, r6, c20.yzzw
    max_pp r0.z, r6.x, c6.y
    min r6.x, r0.z, c0.w
    pow r9.x, r0.y, r6.x
    mul_pp r9.yzw, r6.y, c43.xxyz
    mul_pp r9.xyz, r9.x, r9.yzww
    mul_pp r9.xyz, r5.w, r9
    mul_pp r10.xyz, r6.y, c39
    mad_pp r5.xyz, r8, r0.x, -r5
    nrm_pp r11.xyz, r5
    dp3_sat_pp r0.y, r11, r7
    pow r5.x, r0.y, r6.x
    mul_pp r5.xyz, r5.x, r10
    mad_pp r5.xyz, r4.w, r5, r9
    mul_pp r9.xyz, r6.y, c47
    mad_pp r4.xyz, r8, r0.x, -r4
    nrm_pp r10.xyz, r4
    dp3_sat_pp r0.y, r10, r7
    pow r4.x, r0.y, r6.x
    mul_pp r4.xyz, r4.x, r9
    mad_pp r4.xyz, r3.w, r4, r5
    mul_pp r5.xyz, r6.y, c51
    mad_pp r3.xyz, r8, r0.x, -r3
    nrm_pp r9.xyz, r3
    dp3_sat_pp r0.y, r9, r7
    pow r3.x, r0.y, r6.x
    mul_pp r3.xyz, r3.x, r5
    mad_pp r3.xyz, r1.y, r3, r4
    mul_pp r4.xyz, r6.y, c37
    mad_pp r5.xyz, r8, r0.x, -c10
    nrm_pp r9.xyz, r5
    dp3_sat_pp r0.y, r9, r7
    pow r1.y, r0.y, r6.x
    mul_pp r4.xyz, r1.y, r4
    mad_pp r3.xyz, r4, r6.w, r3
    mul_pp r4.xyz, c59.w, c59
    mul_pp r4.xyz, r6.y, r4
    mad_pp r1.xyz, r8, r0.x, -r1.xzww
    mul_pp r5, r0.x, r8
    nrm_pp r0.xyz, r1
    dp3_sat_pp r0.x, r0, r7
    pow r1.x, r0.x, r6.x
    mul_pp r0.xyz, r1.x, r4
    mad_pp r0.xyz, r0.w, r0, r3
    mul_pp r0.xyz, r0, c18
    mad_pp r0.xyz, r0, v3.w, r2
    mul r0.w, c64.z, c64.x
    mov r1.xz, c64
    mad r1.x, r1.x, -r1.z, r1.z
    mad_pp r0.w, r6.w, r1.x, r0.w
    dp3_pp r1.x, r5.yzww, r7.yzww
    mad_pp r1.y, r1.x, -r1.x, c6.y
    mad_pp r1.y, r1.y, -c2.z, c2.w
    rsq_pp r1.y, r1.y
    rcp_pp r1.y, r1.y
    mad r1.y, r1.x, c5.x, -r1.y
    add_pp r1.x, r1.x, r1.x
    mad r3, r1.x, r7, -r5
    mul_pp r4, r5.wyzw, c5.x
    mad r1, r7.wyzw, r1.y, -r4
    mad r4, r1.wyzw, c4.xxyz, c4.zzzw
    mul r5, r1, c5.yzzw
    cmp_pp r1, r1.z, r4, r5
    add_pp r1.z, r1.z, c6.y
    rcp r1.z, r1.z
    mad_pp r1.xy, r1.yxzw, r1.z, c6.y
    mad_pp r4.x, r1.y, c3.x, r1.w
    mul_pp r4.y, r1.x, c4.w
    texld_pp r1, r4, s6
    mul r4.xyz, r1, c63.x
    mad_pp r1.xyz, r4, r1.w, r1
    mad r4, r3.wyzw, c4.xxyz, c4.zzzw
    mul r5, r3, c5.yzzw
    cmp_pp r3, r3.z, r4, r5
    add_pp r1.w, r3.z, c6.y
    rcp r1.w, r1.w
    mad_pp r3.xy, r3.yxzw, r1.w, c6.y
    mad_pp r4.x, r3.y, c3.x, r3.w
    mul_pp r4.y, r3.x, c4.w
    texld_pp r3, r4, s5
    mul r4.xyz, r3, c63.x
    mad_pp r3.xyz, r4, r3.w, r3
    mad_pp r3.xyz, r3, r0.w, -r1
    mov_sat_pp r0.w, v3.w
    mad_pp r1.xyz, r0.w, r3, r1
    add_pp r2.xyz, r0, r1
    mul_pp r0, r2, c89
    min_pp r1, r0, c3.y
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 260 instruction slots used (6 texture, 254 arithmetic)