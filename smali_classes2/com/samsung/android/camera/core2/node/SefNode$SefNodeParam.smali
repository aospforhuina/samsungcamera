.class public final enum Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;
.super Ljava/lang/Enum;
.source "SefNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/SefNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SefNodeParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum B:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum C:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum D:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum E:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum F:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum G:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum H:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum I:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum J:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum K:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum L:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum M:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field private static final synthetic N:[Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum f:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum g:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum k:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum l:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum m:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum n:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum o:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum p:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum q:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum r:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum s:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum t:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum u:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum v:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum w:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum x:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum y:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

.field public static final enum z:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:[B

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 38

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    const-string v1, "SINGLE_BOKEH_FRONT_META"

    const/4 v2, 0x0

    const-string v3, "SingleShot_Meta_Info"

    const/16 v4, 0xb40

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->f:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    const-string v3, "SINGLE_BOKEH_REAR_META"

    const/4 v4, 0x1

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "SingleShot_Meta_Rear_Info"

    const/16 v7, 0xca0

    .line 4
    invoke-direct {v1, v3, v4, v6, v7}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->g:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 5
    new-instance v3, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    const-string v6, "SINGLE_BOKEH_ORIGINAL_JPEG"

    const/4 v7, 0x2

    .line 6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "SingleShot"

    .line 7
    invoke-direct {v3, v6, v7, v9, v4}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->k:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 8
    new-instance v6, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    sget-object v9, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v5, v10, v2

    const-string v11, "SingeShot_DepthMap_%d"

    invoke-static {v9, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "SINGLE_BOKEH_DEPTH_MAP"

    const/4 v12, 0x3

    .line 9
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0xb41

    .line 10
    invoke-direct {v6, v10, v12, v9, v14}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->l:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 11
    new-instance v9, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    sget-object v10, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v15, v4, [Ljava/lang/Object;

    aput-object v8, v15, v2

    invoke-static {v10, v11, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v15, "SINGLE_BOKEH_SW_DEPTH_MAP"

    const/4 v12, 0x4

    .line 12
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 13
    invoke-direct {v9, v15, v12, v10, v14}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->m:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 14
    new-instance v10, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    sget-object v15, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v13, v12, v2

    invoke-static {v15, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v15, "SINGLE_BOKEH_HW_DEPTH_MAP"

    const/4 v7, 0x5

    .line 15
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 16
    invoke-direct {v10, v15, v7, v12, v14}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->n:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 17
    new-instance v12, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    sget-object v15, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v16, v7, v2

    invoke-static {v15, v11, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v15, "SINGLE_BOKEH_MATTE_MAP"

    const/4 v2, 0x6

    invoke-direct {v12, v15, v2, v7, v14}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->o:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 18
    new-instance v7, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    sget-object v15, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v2, v4, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v17, v2, v18

    invoke-static {v15, v11, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v15, "SINGLE_BOKEH_DEPTH_MAP_ENCODED"

    const/4 v4, 0x7

    invoke-direct {v7, v15, v4, v2, v14}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->p:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 19
    new-instance v2, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    sget-object v15, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v14, v4, [Ljava/lang/Object;

    const/16 v19, 0x6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v14, v18

    invoke-static {v15, v11, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "SINGLE_BOKEH_SW_DEPTH_MAP_ENCODED"

    const/16 v4, 0x8

    move-object/from16 v21, v7

    const/16 v7, 0xb41

    invoke-direct {v2, v15, v4, v14, v7}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->q:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 20
    new-instance v14, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    sget-object v15, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    const/16 v20, 0x7

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v7, v18

    invoke-static {v15, v11, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v15, "SINGLE_BOKEH_HW_DEPTH_MAP_ENCODED"

    const/16 v4, 0x9

    move-object/from16 v22, v2

    const/16 v2, 0xb41

    invoke-direct {v14, v15, v4, v7, v2}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v14, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->r:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 21
    new-instance v7, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    sget-object v15, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/Object;

    const/16 v20, 0x8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v2, v18

    invoke-static {v15, v11, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v15, "SINGLE_BOKEH_MATTING_MAP_ENCODED"

    const/16 v4, 0xa

    move-object/from16 v23, v14

    const/16 v14, 0xb41

    invoke-direct {v7, v15, v4, v2, v14}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->s:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 22
    new-instance v2, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    sget-object v15, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v14, v4, [Ljava/lang/Object;

    const/16 v20, 0x9

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v14, v18

    invoke-static {v15, v11, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "SINGLE_BOKEH_BODY_DEPTH_ENCODED"

    const/16 v4, 0xb

    move-object/from16 v24, v7

    const/16 v7, 0xb41

    invoke-direct {v2, v15, v4, v14, v7}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->t:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 23
    new-instance v14, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    sget-object v15, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v7, v18

    invoke-static {v15, v11, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "SINGLE_BOKEH_FINAL_MAP_ENCODED"

    const/16 v11, 0xc

    const/16 v15, 0xb41

    invoke-direct {v14, v7, v11, v4, v15}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v14, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->u:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 24
    new-instance v4, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    const-string v7, "SINGLE_BOKEH_RELIGHT_BOKEH_FRONT_INFO"

    const/16 v15, 0xd

    const-string v11, "Single_Relighting_Bokeh_Info"

    move-object/from16 v25, v14

    const/16 v14, 0xbc0

    invoke-direct {v4, v7, v15, v11, v14}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->v:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 25
    new-instance v7, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    const-string v11, "SINGLE_BOKEH_RELIGHT_BOKEH_REAR_INFO"

    const/16 v14, 0xe

    const-string v15, "Single_Relighting_Bokeh_Rear_Info"

    move-object/from16 v26, v4

    const/16 v4, 0xc90

    invoke-direct {v7, v11, v14, v15, v4}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->w:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 26
    new-instance v4, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    const-string v11, "DUAL_BOKEH_META"

    const/16 v15, 0xf

    const-string v14, "DualShot_Meta_Info"

    move-object/from16 v27, v7

    const/16 v7, 0xab0

    invoke-direct {v4, v11, v15, v14, v7}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->x:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 27
    new-instance v7, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    const-string v11, "DUAL_BOKEH_EXTRA"

    const/16 v14, 0x10

    const-string v15, "DualShot_Extra_Info"

    move-object/from16 v28, v4

    const/16 v4, 0xab3

    invoke-direct {v7, v11, v14, v15, v4}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->y:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 28
    new-instance v4, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    const-string v11, "DUAL_BOKEH_CORE_INFO"

    const/16 v15, 0x11

    const-string v14, "DualShot_Core_Info"

    move-object/from16 v29, v7

    const/16 v7, 0xab4

    invoke-direct {v4, v11, v15, v14, v7}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->z:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 29
    new-instance v7, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    sget-object v11, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v5, v15, v18

    const-string v14, "DualShot_DepthMap_%d"

    invoke-static {v11, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v15, "DUAL_BOKEH_DEPTH_MAP"

    move-object/from16 v30, v4

    const/16 v4, 0x12

    move-object/from16 v31, v2

    const/16 v2, 0xab1

    invoke-direct {v7, v15, v4, v11, v2}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->A:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 30
    new-instance v4, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    sget-object v11, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v15, 0x1

    new-array v2, v15, [Ljava/lang/Object;

    aput-object v13, v2, v18

    invoke-static {v11, v14, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "DUAL_BOKEH_TOF"

    const/16 v13, 0x13

    const/16 v15, 0xab1

    invoke-direct {v4, v11, v13, v2, v15}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->B:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 31
    new-instance v2, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    sget-object v11, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Object;

    aput-object v16, v15, v18

    invoke-static {v11, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v15, "DUAL_BOKEH_CONFIDENCE"

    const/16 v13, 0x14

    move-object/from16 v16, v4

    const/16 v4, 0xab1

    invoke-direct {v2, v15, v13, v11, v4}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->C:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 32
    new-instance v11, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    sget-object v13, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v15, 0x1

    new-array v4, v15, [Ljava/lang/Object;

    aput-object v17, v4, v18

    invoke-static {v13, v14, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v13, "DUAL_BOKEH_AI_MASK_MAP"

    const/16 v14, 0x15

    const/16 v15, 0xab1

    invoke-direct {v11, v13, v14, v4, v15}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->D:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 33
    new-instance v4, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    sget-object v13, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v5, v15, v18

    const-string v5, "DualShot_%d"

    invoke-static {v13, v5, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v13, "DUAL_BOKEH_JPEG_MAIN"

    const/16 v15, 0x16

    invoke-direct {v4, v13, v15, v5, v14}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->E:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 34
    new-instance v5, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    sget-object v13, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v8, v15, v18

    const-string v8, "DualShot_%d"

    invoke-static {v13, v8, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "DUAL_BOKEH_JPEG_SUB"

    const/16 v15, 0x17

    invoke-direct {v5, v13, v15, v8, v14}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->F:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 35
    new-instance v8, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    const-string v13, "DUAL_BOKEH_RELIGHT_BOKEH_INFO"

    const/16 v14, 0x18

    const-string v15, "Dual_Relighting_Bokeh_Info"

    move-object/from16 v17, v5

    const/16 v5, 0xbd0

    invoke-direct {v8, v13, v14, v15, v5}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->G:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 36
    new-instance v5, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    const-string v13, "NON_DESTRUCTION_DATA"

    const/16 v14, 0x19

    const-string v15, "PhotoEditor_Re_Edit_Data"

    move-object/from16 v32, v8

    const/16 v8, 0xba1

    invoke-direct {v5, v13, v14, v15, v8}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->H:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 37
    new-instance v8, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    const-string v13, "NON_DESTRUCTION_HASH"

    const/16 v14, 0x1a

    const-string v15, "Original_Path_Hash_Key"

    move-object/from16 v33, v5

    const/16 v5, 0xba1

    invoke-direct {v8, v13, v14, v15, v5}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->I:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 38
    new-instance v5, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    const-string v13, "WATERMARK_DATA"

    const/16 v14, 0x1b

    const-string v15, "Watermark_Info"

    move-object/from16 v34, v8

    const/16 v8, 0xc81

    invoke-direct {v5, v13, v14, v15, v8}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->J:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 39
    new-instance v8, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    const-string v13, "PANORAMA_SHOT_INFO"

    const/16 v14, 0x1c

    const-string v15, "Panorama_Shot_Info"

    move-object/from16 v35, v5

    const/16 v5, 0x8e0

    invoke-direct {v8, v13, v14, v15, v5}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->K:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 40
    new-instance v5, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    const-string v13, "PANORAMA_CAPTURE_MODE_INFO"

    const/16 v14, 0x1d

    const-string v15, "Camera_Capture_Mode_Info"

    move-object/from16 v36, v8

    const/16 v8, 0xc61

    invoke-direct {v5, v13, v14, v15, v8}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->L:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    .line 41
    new-instance v8, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    const-string v13, "FILTER_COPY_AVAILABLE_EDIT_VALUE"

    const/16 v14, 0x1e

    const-string v15, "Copy_Available_Edit_Info"

    move-object/from16 v37, v5

    const/16 v5, 0xba2

    invoke-direct {v8, v13, v14, v15, v5}, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->M:Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    const/16 v5, 0x1f

    new-array v5, v5, [Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    const/4 v13, 0x0

    aput-object v0, v5, v13

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v6, v5, v0

    const/4 v0, 0x4

    aput-object v9, v5, v0

    const/4 v0, 0x5

    aput-object v10, v5, v0

    const/4 v0, 0x6

    aput-object v12, v5, v0

    const/4 v0, 0x7

    aput-object v21, v5, v0

    const/16 v0, 0x8

    aput-object v22, v5, v0

    const/16 v0, 0x9

    aput-object v23, v5, v0

    const/16 v0, 0xa

    aput-object v24, v5, v0

    const/16 v0, 0xb

    aput-object v31, v5, v0

    const/16 v0, 0xc

    aput-object v25, v5, v0

    const/16 v0, 0xd

    aput-object v26, v5, v0

    const/16 v0, 0xe

    aput-object v27, v5, v0

    const/16 v0, 0xf

    aput-object v28, v5, v0

    const/16 v0, 0x10

    aput-object v29, v5, v0

    const/16 v0, 0x11

    aput-object v30, v5, v0

    const/16 v0, 0x12

    aput-object v7, v5, v0

    const/16 v0, 0x13

    aput-object v16, v5, v0

    const/16 v0, 0x14

    aput-object v2, v5, v0

    const/16 v0, 0x15

    aput-object v11, v5, v0

    const/16 v0, 0x16

    aput-object v4, v5, v0

    const/16 v0, 0x17

    aput-object v17, v5, v0

    const/16 v0, 0x18

    aput-object v32, v5, v0

    const/16 v0, 0x19

    aput-object v33, v5, v0

    const/16 v0, 0x1a

    aput-object v34, v5, v0

    const/16 v0, 0x1b

    aput-object v35, v5, v0

    const/16 v0, 0x1c

    aput-object v36, v5, v0

    const/16 v0, 0x1d

    aput-object v37, v5, v0

    const/16 v0, 0x1e

    aput-object v8, v5, v0

    .line 42
    sput-object v5, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->N:[Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->a:Ljava/lang/String;

    .line 3
    iput p4, p0, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->N:[Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;
    .locals 4

    new-instance v0, Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->c:[B

    iget v3, p0, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->b:I

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;-><init>(Ljava/lang/String;[BILjava/lang/String;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->d:Ljava/lang/String;

    return-object p0
.end method

.method public h([B)Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/SefNode$SefNodeParam;->c:[B

    return-object p0
.end method
