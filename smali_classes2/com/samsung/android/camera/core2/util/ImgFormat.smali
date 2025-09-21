.class public enum Lcom/samsung/android/camera/core2/util/ImgFormat;
.super Ljava/lang/Enum;
.source "ImgFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/util/ImgFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum B:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum C:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum D:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field private static final synthetic E:[Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum c:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum d:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum f:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum g:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum k:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum l:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum m:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum n:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum o:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum p:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum q:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum r:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum s:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum t:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum u:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum v:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum w:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum x:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum y:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field public static final enum z:Lcom/samsung/android/camera/core2/util/ImgFormat;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/ImgFormat;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/core2/util/ImgFormat;->c:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/util/ImgFormat;

    const-string v3, "DEPTH16"

    const/4 v4, 0x1

    const v5, 0x44363159

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/camera/core2/util/ImgFormat;->d:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 3
    new-instance v3, Lcom/samsung/android/camera/core2/util/ImgFormat;

    const-string v5, "DEPTH_JPEG"

    const/4 v6, 0x2

    const v7, 0x69656963

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/camera/core2/util/ImgFormat;->f:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 4
    new-instance v5, Lcom/samsung/android/camera/core2/util/ImgFormat;

    const-string v7, "DEPTH_POINT_CLOUD"

    const/4 v8, 0x3

    const/16 v9, 0x101

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/camera/core2/util/ImgFormat;->g:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 5
    new-instance v7, Lcom/samsung/android/camera/core2/util/ImgFormat;

    sget-object v9, Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;->c:Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;

    invoke-static {v9}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v11, "FLEX_RGB_888"

    const/4 v12, 0x4

    const/16 v13, 0x29

    invoke-direct {v7, v11, v12, v13, v10}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;IILjava/util/List;)V

    sput-object v7, Lcom/samsung/android/camera/core2/util/ImgFormat;->k:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 6
    new-instance v10, Lcom/samsung/android/camera/core2/util/ImgFormat;

    sget-object v11, Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;->a:Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;

    sget-object v13, Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;->b:Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;

    invoke-static {v11, v13, v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v15, "FLEX_RGBA_8888"

    const/4 v8, 0x5

    const/16 v6, 0x2a

    invoke-direct {v10, v15, v8, v6, v14}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;IILjava/util/List;)V

    sput-object v10, Lcom/samsung/android/camera/core2/util/ImgFormat;->l:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 7
    new-instance v6, Lcom/samsung/android/camera/core2/util/ImgFormat;

    invoke-static {v11, v13, v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v15, "JPEG"

    const/4 v8, 0x6

    const/16 v4, 0x100

    invoke-direct {v6, v15, v8, v4, v14}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;IILjava/util/List;)V

    sput-object v6, Lcom/samsung/android/camera/core2/util/ImgFormat;->m:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 8
    new-instance v4, Lcom/samsung/android/camera/core2/util/ImgFormat;

    const-string v14, "NV16"

    const/4 v15, 0x7

    const/16 v8, 0x10

    invoke-direct {v4, v14, v15, v8}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/camera/core2/util/ImgFormat;->n:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 9
    new-instance v14, Lcom/samsung/android/camera/core2/util/ImgFormat;

    const-string v8, "NV21"

    const/16 v15, 0x8

    const/16 v2, 0x11

    invoke-direct {v14, v8, v15, v2}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/camera/core2/util/ImgFormat;->o:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 10
    new-instance v8, Lcom/samsung/android/camera/core2/util/ImgFormat;

    const-string v15, "PRIVATE"

    const/16 v2, 0x9

    const/16 v12, 0x22

    invoke-direct {v8, v15, v2, v12}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/camera/core2/util/ImgFormat;->p:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 11
    new-instance v12, Lcom/samsung/android/camera/core2/util/ImgFormat;

    invoke-static {v9}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const-string v2, "RAW10"

    move-object/from16 v16, v8

    const/16 v8, 0xa

    move-object/from16 v17, v14

    const/16 v14, 0x25

    invoke-direct {v12, v2, v8, v14, v15}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;IILjava/util/List;)V

    sput-object v12, Lcom/samsung/android/camera/core2/util/ImgFormat;->q:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 12
    new-instance v2, Lcom/samsung/android/camera/core2/util/ImgFormat;

    invoke-static {v9}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v15, "RAW12"

    const/16 v8, 0xb

    move-object/from16 v18, v12

    const/16 v12, 0x26

    invoke-direct {v2, v15, v8, v12, v14}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;IILjava/util/List;)V

    sput-object v2, Lcom/samsung/android/camera/core2/util/ImgFormat;->r:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 13
    new-instance v12, Lcom/samsung/android/camera/core2/util/ImgFormat;

    const-string v14, "RAW_PRIVATE"

    const/16 v15, 0xc

    const/16 v8, 0x24

    invoke-direct {v12, v14, v15, v8}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/android/camera/core2/util/ImgFormat;->s:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 14
    new-instance v8, Lcom/samsung/android/camera/core2/util/ImgFormat;

    invoke-static {v11, v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v15, "RAW_SENSOR"

    move-object/from16 v19, v12

    const/16 v12, 0xd

    move-object/from16 v20, v2

    const/16 v2, 0x20

    invoke-direct {v8, v15, v12, v2, v14}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;IILjava/util/List;)V

    sput-object v8, Lcom/samsung/android/camera/core2/util/ImgFormat;->t:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 15
    new-instance v2, Lcom/samsung/android/camera/core2/util/ImgFormat;

    const-string v14, "RGB_565"

    const/16 v15, 0xe

    const/4 v12, 0x4

    invoke-direct {v2, v14, v15, v12}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/camera/core2/util/ImgFormat;->u:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 16
    new-instance v12, Lcom/samsung/android/camera/core2/util/ImgFormat;

    const-string v14, "YCBCR_P010"

    const/16 v15, 0xf

    move-object/from16 v21, v2

    const/16 v2, 0x36

    invoke-direct {v12, v14, v15, v2}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/android/camera/core2/util/ImgFormat;->v:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 17
    new-instance v2, Lcom/samsung/android/camera/core2/util/ImgFormat$1;

    invoke-static {v11, v13, v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    const-string v23, "YUV_420_888"

    const/16 v24, 0x10

    const/16 v25, 0x23

    const/16 v27, 0x0

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v27}, Lcom/samsung/android/camera/core2/util/ImgFormat$1;-><init>(Ljava/lang/String;IILjava/util/List;Lcom/samsung/android/camera/core2/util/s0;)V

    sput-object v2, Lcom/samsung/android/camera/core2/util/ImgFormat;->w:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 18
    new-instance v14, Lcom/samsung/android/camera/core2/util/ImgFormat;

    const-string v15, "YUV_422_888"

    move-object/from16 v23, v2

    const/16 v2, 0x27

    move-object/from16 v24, v12

    const/16 v12, 0x11

    invoke-direct {v14, v15, v12, v2}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/camera/core2/util/ImgFormat;->x:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 19
    new-instance v2, Lcom/samsung/android/camera/core2/util/ImgFormat;

    const-string v12, "YUV_444_888"

    const/16 v15, 0x12

    move-object/from16 v25, v14

    const/16 v14, 0x28

    invoke-direct {v2, v12, v15, v14}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/camera/core2/util/ImgFormat;->y:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 20
    new-instance v12, Lcom/samsung/android/camera/core2/util/ImgFormat;

    const-string v14, "YUY2"

    const/16 v15, 0x13

    move-object/from16 v27, v2

    const/16 v2, 0x14

    invoke-direct {v12, v14, v15, v2}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/android/camera/core2/util/ImgFormat;->z:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 21
    new-instance v14, Lcom/samsung/android/camera/core2/util/ImgFormat;

    const-string v15, "YV12"

    move-object/from16 v28, v12

    const v12, 0x32315659

    invoke-direct {v14, v15, v2, v12}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/camera/core2/util/ImgFormat;->A:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 22
    new-instance v12, Lcom/samsung/android/camera/core2/util/ImgFormat;

    invoke-static {v11, v13, v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v11, "HEIC"

    const/16 v13, 0x15

    const v15, 0x48454946

    invoke-direct {v12, v11, v13, v15, v9}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;IILjava/util/List;)V

    sput-object v12, Lcom/samsung/android/camera/core2/util/ImgFormat;->B:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 23
    new-instance v9, Lcom/samsung/android/camera/core2/util/ImgFormat;

    const-string v11, "Y8"

    const/16 v15, 0x16

    const v13, 0x20203859

    invoke-direct {v9, v11, v15, v13}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/camera/core2/util/ImgFormat;->C:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 24
    new-instance v11, Lcom/samsung/android/camera/core2/util/ImgFormat;

    const-string v13, "Y16"

    const/16 v15, 0x17

    const v2, 0x20363159

    invoke-direct {v11, v13, v15, v2}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/camera/core2/util/ImgFormat;->D:Lcom/samsung/android/camera/core2/util/ImgFormat;

    const/16 v2, 0x18

    new-array v2, v2, [Lcom/samsung/android/camera/core2/util/ImgFormat;

    const/4 v13, 0x0

    aput-object v0, v2, v13

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v6, v2, v0

    const/4 v0, 0x7

    aput-object v4, v2, v0

    const/16 v0, 0x8

    aput-object v17, v2, v0

    const/16 v0, 0x9

    aput-object v16, v2, v0

    const/16 v0, 0xa

    aput-object v18, v2, v0

    const/16 v0, 0xb

    aput-object v20, v2, v0

    const/16 v0, 0xc

    aput-object v19, v2, v0

    const/16 v0, 0xd

    aput-object v8, v2, v0

    const/16 v0, 0xe

    aput-object v21, v2, v0

    const/16 v0, 0xf

    aput-object v24, v2, v0

    const/16 v0, 0x10

    aput-object v23, v2, v0

    const/16 v0, 0x11

    aput-object v25, v2, v0

    const/16 v0, 0x12

    aput-object v27, v2, v0

    const/16 v0, 0x13

    aput-object v28, v2, v0

    const/16 v0, 0x14

    aput-object v14, v2, v0

    const/16 v0, 0x15

    aput-object v12, v2, v0

    const/16 v0, 0x16

    aput-object v9, v2, v0

    const/16 v0, 0x17

    aput-object v11, v2, v0

    .line 25
    sput-object v2, Lcom/samsung/android/camera/core2/util/ImgFormat;->E:[Lcom/samsung/android/camera/core2/util/ImgFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/samsung/android/camera/core2/util/ImgFormat;->a:I

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/ImgFormat;->b:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    iput p3, p0, Lcom/samsung/android/camera/core2/util/ImgFormat;->a:I

    .line 6
    iput-object p4, p0, Lcom/samsung/android/camera/core2/util/ImgFormat;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILjava/util/List;Lcom/samsung/android/camera/core2/util/t0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/camera/core2/util/ImgFormat;-><init>(Ljava/lang/String;IILjava/util/List;)V

    return-void
.end method

.method public static synthetic a(ILcom/samsung/android/camera/core2/util/ImgFormat;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/ImgFormat;->m(ILcom/samsung/android/camera/core2/util/ImgFormat;)Z

    move-result p0

    return p0
.end method

.method public static l(I)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/camera/core2/util/ImgFormat$2;->a:[I

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/ImgFormat;->n(I)Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private static synthetic m(ILcom/samsung/android/camera/core2/util/ImgFormat;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImgFormat;->h()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static n(I)Lcom/samsung/android/camera/core2/util/ImgFormat;
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/util/ImgFormat;->values()[Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/util/r0;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/util/r0;-><init>(I)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/util/ImgFormat;->c:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/util/ImgFormat;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/util/ImgFormat;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/util/ImgFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/util/ImgFormat;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/util/ImgFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/util/ImgFormat;->E:[Lcom/samsung/android/camera/core2/util/ImgFormat;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/util/ImgFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/util/ImgFormat;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/util/Size;Lcom/samsung/android/camera/core2/util/StrideInfo;)I
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getRowStride()I

    move-result p0

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getHeightSlice()I

    move-result p1

    mul-int/2addr p0, p1

    return p0

    .line 2
    :cond_0
    iget p0, p0, Lcom/samsung/android/camera/core2/util/ImgFormat;->a:I

    invoke-static {p0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result p0

    if-lez p0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-long p1, p1

    mul-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    int-to-long v0, p0

    .line 4
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    const-wide/16 p1, 0x8

    .line 5
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/util/ImgFormat;->a:I

    return p0
.end method

.method public k(Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImgFormat;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
