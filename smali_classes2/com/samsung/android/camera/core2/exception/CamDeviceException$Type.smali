.class public final enum Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;
.super Ljava/lang/Enum;
.source "CamDeviceException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/exception/CamDeviceException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

.field public static final enum d:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

.field public static final enum f:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

.field public static final enum g:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

.field public static final enum k:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

.field public static final enum l:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

.field public static final enum m:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

.field public static final enum n:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

.field public static final enum o:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

.field public static final enum p:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

.field public static final enum q:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

.field public static final enum r:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

.field public static final enum s:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

.field public static final enum t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

.field public static final enum u:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

.field public static final enum v:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

.field private static final synthetic w:[Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v1, "NO_CAPTURE_SESSION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "There is no capture session"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->c:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v4, "NO_PREVIEW_SURFACE"

    const/16 v5, 0xb

    const-string v6, "There is no preview surface"

    invoke-direct {v1, v4, v3, v5, v6}, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->d:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    .line 3
    new-instance v4, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v6, "NO_RECORD_SURFACE"

    const/4 v7, 0x2

    const/16 v8, 0xc

    const-string v9, "There is no record surface"

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->f:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    .line 4
    new-instance v6, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v9, "NO_PREVIEW_EXTRA_SURFACE"

    const/4 v10, 0x3

    const/16 v11, 0xd

    const-string v12, "There is no preview extra surface"

    invoke-direct {v6, v9, v10, v11, v12}, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->g:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    .line 5
    new-instance v9, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v12, "NO_PREVIEW_IMAGE_READER"

    const/4 v13, 0x4

    const/16 v14, 0xe

    const-string v15, "There is no preview image reader"

    invoke-direct {v9, v12, v13, v14, v15}, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->k:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    .line 6
    new-instance v12, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v15, "NO_PICTURE_IMAGE_READER"

    const/4 v13, 0x5

    const/16 v10, 0xf

    const-string v7, "There is no picture image reader"

    invoke-direct {v12, v15, v13, v10, v7}, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->l:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    .line 7
    new-instance v7, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v15, "NO_PICTURE_IMAGE_WRITER"

    const/4 v13, 0x6

    const/16 v3, 0x10

    const-string v2, "There is no picture image writer"

    invoke-direct {v7, v15, v13, v3, v2}, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->m:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    .line 8
    new-instance v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v15, "NO_THUMBNAIL_IMAGE_READER"

    const/4 v13, 0x7

    const/16 v3, 0x11

    const-string v10, "There is no thumbnail image reader"

    invoke-direct {v2, v15, v13, v3, v10}, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->n:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    .line 9
    new-instance v3, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v10, "NO_PREVIEW_DEPTH_READER"

    const/16 v15, 0x8

    const/16 v13, 0x12

    const-string v14, "There is no preview depth reader"

    invoke-direct {v3, v10, v15, v13, v14}, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->o:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    .line 10
    new-instance v10, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v13, "NO_PICTURE_DEPTH_READER"

    const/16 v14, 0x9

    const/16 v15, 0x13

    const-string v11, "There is no picture depth reader"

    invoke-direct {v10, v13, v14, v15, v11}, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->p:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    .line 11
    new-instance v11, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v13, "NO_DEFERRED_PREVIEW_OUTPUT_CONFIGURATION"

    const/16 v15, 0xa

    const/16 v14, 0x15

    const-string v8, "There is no deferred preview output configuration"

    invoke-direct {v11, v13, v15, v14, v8}, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->q:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    .line 12
    new-instance v8, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v13, "NO_REQUEST_BUILDER"

    const/16 v14, 0x1f

    const-string v15, "There is no request builder"

    invoke-direct {v8, v13, v5, v14, v15}, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->r:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    .line 13
    new-instance v13, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v14, "ILLEGAL_ARGUMENT"

    const/16 v15, 0x29

    const-string v5, "Illegal argument"

    move-object/from16 v16, v8

    const/16 v8, 0xc

    invoke-direct {v13, v14, v8, v15, v5}, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->s:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    .line 14
    new-instance v5, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v8, "INVALID_OPERATION"

    const/16 v14, 0x2a

    const-string v15, "Invalid operation"

    move-object/from16 v17, v13

    const/16 v13, 0xd

    invoke-direct {v5, v8, v13, v14, v15}, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    .line 15
    new-instance v8, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v13, "UNSUPPORTED_OS_VERSION"

    const/16 v14, 0x2b

    const-string v15, "Unsupported OS version"

    move-object/from16 v18, v5

    const/16 v5, 0xe

    invoke-direct {v8, v13, v5, v14, v15}, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->u:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    .line 16
    new-instance v5, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v13, "UNSUPPORTED_OPERATION"

    const/16 v14, 0x2c

    const-string v15, "Unsupported operation"

    move-object/from16 v19, v8

    const/16 v8, 0xf

    invoke-direct {v5, v13, v8, v14, v15}, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->v:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const/16 v8, 0x10

    new-array v8, v8, [Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const/4 v13, 0x0

    aput-object v0, v8, v13

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v4, v8, v0

    const/4 v0, 0x3

    aput-object v6, v8, v0

    const/4 v0, 0x4

    aput-object v9, v8, v0

    const/4 v0, 0x5

    aput-object v12, v8, v0

    const/4 v0, 0x6

    aput-object v7, v8, v0

    const/4 v0, 0x7

    aput-object v2, v8, v0

    const/16 v0, 0x8

    aput-object v3, v8, v0

    const/16 v0, 0x9

    aput-object v10, v8, v0

    const/16 v0, 0xa

    aput-object v11, v8, v0

    const/16 v0, 0xb

    aput-object v16, v8, v0

    const/16 v0, 0xc

    aput-object v17, v8, v0

    const/16 v0, 0xd

    aput-object v18, v8, v0

    const/16 v0, 0xe

    aput-object v19, v8, v0

    const/16 v0, 0xf

    aput-object v5, v8, v0

    .line 17
    sput-object v8, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->w:[Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->a:I

    .line 3
    iput-object p4, p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->w:[Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->a:I

    return p0
.end method
