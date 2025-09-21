.class public final enum Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;
.super Ljava/lang/Enum;
.source "CamDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/CamDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageReaderHandlerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum b:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum c:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum d:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum f:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum g:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum k:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum l:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum m:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum n:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum o:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum p:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum q:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum r:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

.field public static final enum s:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

.field private static final synthetic t:[Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v1, "MAIN_PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->a:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v3, "SUB_PREVIEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->b:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    .line 3
    new-instance v3, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v5, "FIRST_COMPRESSED_PICTURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->c:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    .line 4
    new-instance v5, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v7, "FIRST_UNCOMPRESSED_PICTURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->d:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    .line 5
    new-instance v7, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v9, "FIRST_RAW_PICTURE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->f:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    .line 6
    new-instance v9, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v11, "SECOND_COMPRESSED_PICTURE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->g:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    .line 7
    new-instance v11, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v13, "SECOND_UNCOMPRESSED_PICTURE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->k:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    .line 8
    new-instance v13, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v15, "SECOND_RAW_PICTURE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->l:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    .line 9
    new-instance v15, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v14, "THIRD_COMPRESSED_PICTURE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->m:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    .line 10
    new-instance v14, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v12, "THIRD_UNCOMPRESSED_PICTURE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->n:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    .line 11
    new-instance v12, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v10, "THIRD_RAW_PICTURE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->o:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    .line 12
    new-instance v10, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v8, "PREVIEW_DEPTH"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->p:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    .line 13
    new-instance v8, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v6, "PICTURE_DEPTH"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->q:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    .line 14
    new-instance v6, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v4, "THUMBNAIL"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->r:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    .line 15
    new-instance v4, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v2, "UNKNOWN"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->s:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    .line 16
    sput-object v2, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->t:[Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->t:[Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    return-object v0
.end method
