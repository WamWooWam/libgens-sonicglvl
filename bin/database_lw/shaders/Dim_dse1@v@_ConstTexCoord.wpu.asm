//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_GISampler;
//   row_major float4x4 g_MtxView;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgLocalLight4_Color;
//   float4 mrgLocalLight4_Position;
//   float4 mrgLocalLight4_Range;
//   float4 mrgLuminanceRange;
//   float4 s_LightScaleParam;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampSpe;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Specular               c18      1
//   g_PowerGlossLevel        c20      1
//   g_EyePosition            c22      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgLocalLight1_Position  c42      1
//   mrgLocalLight1_Color     c43      1
//   mrgLocalLight1_Range     c44      1
//   mrgLocalLight2_Position  c46      1
//   mrgLocalLight2_Color     c47      1
//   mrgLocalLight2_Range     c48      1
//   mrgLocalLight3_Position  c50      1
//   mrgLocalLight3_Color     c51      1
//   mrgLocalLight3_Range     c52      1
//   mrgLocalLight4_Position  c54      1
//   mrgLocalLight4_Color     c55      1
//   mrgLocalLight4_Range     c56      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_MtxView                c90      3
//   s_LightScaleParam        c151     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampEnv                  s4       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//

    ps_3_0
    def c0, 1, 10, 4, 0
    def c1, 0.5, -0.5, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl_2d s0
    dcl_2d s1
    dcl_2d s4
    dcl_2d s9
    dcl_2d s10
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v4.w
    add_pp r1.xyz, -c42, v1
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mad_sat_pp r1.w, -r1.w, c44.z, c44.w
    mul_pp r2.xyz, r1.w, c43
    add_pp r3.xyz, -c46, v1
    dp3_pp r1.w, r3, r3
    rsq_pp r1.w, r1.w
    rcp_pp r2.w, r1.w
    mad_sat_pp r2.w, -r2.w, c48.z, c48.w
    mul_pp r4.xyz, r2.w, c47
    add_pp r5.xyz, c22, -v1
    dp3_pp r2.w, r5, r5
    rsq_pp r2.w, r2.w
    mul_pp r6.xyz, r2.w, r5
    mad_pp r5.xyz, r5, r2.w, -c10
    nrm_pp r7.xyz, r5
    mad_pp r3.xyz, r3, -r1.w, r6
    nrm_pp r5.xyz, r3
    nrm_pp r3.xyz, v2
    dp3_sat_pp r1.w, r5, r3
    mov r5.y, c20.y
    mul_pp r2.w, r5.y, c0.y
    exp_pp r2.w, r2.w
    mul_pp r2.w, r2.w, c0.z
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mul_pp r4.xyz, r4, r1.w
    mad_pp r1.xyz, r1, -r0.w, r6
    nrm_pp r5.xyz, r1
    dp3_sat_pp r0.w, r5, r3
    pow_pp r1.x, r0.w, r2.w
    mul_pp r0.w, r1.x, c20.z
    mad_pp r1.xyz, r0.w, r2, r4
    add_pp r2.xyz, -c50, v1
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mad_pp r2.xyz, r2, -r0.w, r6
    nrm_pp r4.xyz, r2
    dp3_sat_pp r0.w, r4, r3
    pow_pp r3.w, r0.w, r2.w
    mul_pp r0.w, r3.w, c20.z
    mad_sat_pp r1.w, -r1.w, c52.z, c52.w
    mul_pp r2.xyz, r1.w, c51
    mad_pp r1.xyz, r0.w, r2, r1
    add_pp r2.xyz, -c54, v1
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mad_pp r2.xyz, r2, -r0.w, r6
    nrm_pp r4.xyz, r2
    dp3_sat_pp r0.w, r4, r3
    pow_pp r3.w, r0.w, r2.w
    mul_pp r0.w, r3.w, c20.z
    mad_sat_pp r1.w, -r1.w, c56.z, c56.w
    mul_pp r2.xyz, r1.w, c55
    mad_pp r1.xyz, r0.w, r2, r1
    dp3_sat_pp r0.w, r7, r3
    pow_pp r1.w, r0.w, r2.w
    mul_pp r0.w, r1.w, c20.z
    mad_pp r1.xyz, r0.w, c37, r1
    mul_pp r1.xyz, r1, c18
    mul r2, r3.y, c91
    mad r2, r3.x, c90, r2
    mad r2, r3.z, c92, r2
    dp4 r0.w, r2, r2
    rsq r0.w, r0.w
    mul r2.xy, r0.w, r2
    mad_pp r2.xy, r2, c1, c1.x
    texld_pp r2, r2, s4
    mul r0.w, c64.z, c64.x
    mov r3.xz, c64
    mad r1.w, r3.x, -r3.z, r3.z
    texld r3, v0.zwzw, s10
    mad_pp r0.w, r3.w, r1.w, r0.w
    texld r4, v0, s1
    mul r1.w, r4.w, c63.x
    mul r0.w, r0.w, r1.w
    mul_pp r2.xyz, r0.w, r2
    mov_sat r0.w, r3.w
    mov_sat_pp r1.w, c151.x
    lrp r2.w, r0.w, c0.x, r1.w
    mad_pp r1.xyz, r1, r2.w, r2
    mul_pp r2.xyz, r2.w, c36
    mad_pp r2.xyz, r3, r3, r2
    mul_pp r2.xyz, r2, c16
    mul_pp r1.xyz, r4, r1
    mul_pp r1.xyz, r1, v2.w
    mad_pp r0.xyz, r2, r0, r1
    mul_pp r0.xyz, r0, v4
    texld_pp r1, v3.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 119 instruction slots used (5 texture, 114 arithmetic)