//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   row_major float4x4 g_MtxView;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float2 mrgFresnelParam;
//   float2 mrgGlassRefractionParam;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   g_Specular               c18      1
//   g_PowerGlossLevel        c20      1
//   g_EyePosition            c22      1
//   g_ViewportSize           c24      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgFresnelParam          c62      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_aLightField            c77      6
//   g_MtxView                c90      3
//   mrgGlassRefractionParam  c150     1
//   sampDif                  s0       1
//   sampEnv                  s1       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 1, 0, -1
    def c1, 2, -2, 10, 4
    def c2, 0.25, -0.707106769, 0.5, -0.5
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord5 v3.xy
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s9
    dcl_2d s11
    add r0.xy, c0.x, vPos
    mul r0.xy, r0, c24.zwzw
    mov r1.yzw, c0
    mad r2, c24.zzww, r1.yzzw, r1.zywz
    mad r0.xy, r0, c1, r2
    add_pp r0.xy, r2.zwzw, r0
    mul r0.z, c150.x, c150.x
    nrm r2, v2.xyzx
    mul_pp r1.xzw, r2.y, c91.xyyz
    mad_pp r1.xzw, r2.w, c90.xyyz, r1
    mad_pp r1.xzw, r2.z, c92.xyyz, r1
    mad r0.w, r1.w, -r1.w, c0.y
    mad r0.z, r0.z, -r0.w, c0.y
    cmp r0.w, r0.z, c0.y, c0.z
    mul r0.z, r0.w, r0.z
    mul r0.w, r0.w, c150.x
    rsq r0.z, r0.z
    rcp r0.z, r0.z
    mad r0.z, r0.w, -r1.w, r0.z
    mul_pp r0.zw, r1.xyxz, r0.z
    mad_pp r0.xy, r0.zwzw, c2.y, r0
    mad r0.xy, r0, c2.zwzw, c2.z
    texld_pp r0, r0, s11
    mad_pp r1.xzw, r2.wyyz, c0.x, c0.x
    mov r3.xyz, c80
    mad r3.xyz, r3, r1.z, c79
    mul_pp r4.xyz, r2.wyzw, r2.wyzw
    mul r3.xyz, r3, r4.y
    mov r5, c77
    mad r5.xyz, c78, r1.x, r5
    mov r6.xyz, c82
    mad r1.xzw, r6.xyyz, r1.w, c81.xyyz
    mad_pp r3.xyz, r4.x, r5, r3
    mad_pp r1.xzw, r4.z, r1, r3.xyyz
    dp3_sat_pp r0.w, r2.wyzw, -c10
    mul r0.w, r0.w, c77.w
    mul_pp r3.xyz, r0.w, c36
    mad_pp r1.xzw, r1, c17.xyyz, r3.xyyz
    mul_pp r1.xzw, r1, c16.xyyz
    texld_pp r3, v0, s0
    mad r1.xzw, r1, r3.xyyz, -r0.xyyz
    mul_pp r0.w, r3.w, c16.w
    mad r3.x, c16.w, -r3.w, r1.y
    mul r3.x, r3.x, c63.x
    mad_pp r0.xyz, r0.w, r1.xzww, r0
    mul r0.w, c64.z, c64.x
    mov r1.xz, c64
    mad r1.x, r1.x, -r1.z, r1.z
    mad_pp r0.w, c77.w, r1.x, r0.w
    mul r0.w, r0.w, r3.x
    add_pp r3, c22.xyzx, -v1.xyzx
    dp3_pp r1.x, r3.yzww, r3.yzww
    rsq_pp r1.x, r1.x
    mul r4, r1.x, r3
    mad_pp r1.xzw, r3.xyyz, r1.x, -c10.xyyz
    nrm_pp r3.xyz, r1.xzww
    dp3_sat_pp r1.x, r3, r2
    dp3 r1.z, r4.yzww, r2.yzww
    add r1.w, r1.z, r1.z
    mov_sat_pp r1.z, r1.z
    add_pp r1.z, -r1.z, c0.y
    mad r2, r1.w, r2, -r4
    mul r3, r2.wyzw, c0.wwyz
    mad r4, r2, c0.ywwz, c0.zzzx
    cmp r2, r2.z, r3, r4
    add r1.w, r2.z, c0.y
    rcp r1.w, r1.w
    mad r2.xy, r2.yxzw, r1.w, c0.y
    mad_pp r3.x, r2.y, c2.x, r2.w
    mul_pp r3.y, r2.x, c0.x
    texld_pp r2, r3, s1
    mul_pp r2.xyz, r0.w, r2
    mov r3.z, c1.z
    mul_pp r0.w, r3.z, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c1.w
    pow_pp r2.w, r1.x, r0.w
    mul_pp r0.w, r5.w, c20.z
    mul_pp r0.w, r2.w, r0.w
    mul_pp r3.xyz, r0.w, c37
    mad_pp r2.xyz, r3, c18, r2
    mul_pp r0.w, r1.z, r1.z
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r1.z, r0.w
    lrp_pp r2.w, r0.w, r1.y, c62.x
    mad_pp r0.xyz, r2.w, r2, r0
    texld_pp r1, v3.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1
    mov_pp oC0.w, c0.y

// approximately 95 instruction slots used (4 texture, 91 arithmetic)