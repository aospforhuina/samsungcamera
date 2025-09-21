.class public final enum Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;
.super Ljava/lang/Enum;
.source "CamDeviceRequestOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PictureRequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

.field public static final enum f:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

.field public static final enum g:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

.field public static final enum k:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

.field public static final enum l:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

.field public static final enum m:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

.field public static final enum n:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

.field public static final enum o:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

.field public static final enum p:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

.field private static final synthetic q:[Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

.field private final b:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;

.field private final c:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v6, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    sget-object v7, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->b:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    sget-object v8, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;->a:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;

    sget-object v5, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->c:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v1, "FIRST_COMP"

    const/4 v2, 0x0

    move-object v0, v6

    move-object v3, v7

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;-><init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;)V

    sput-object v6, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->d:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    .line 2
    new-instance v9, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    sget-object v10, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;->b:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;

    sget-object v5, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->d:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v1, "FIRST_UN_COMP"

    const/4 v2, 0x1

    move-object v0, v9

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;-><init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;)V

    sput-object v9, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->f:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    .line 3
    new-instance v11, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    sget-object v12, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;->c:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;

    sget-object v5, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->f:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v1, "FIRST_RAW"

    const/4 v2, 0x2

    move-object v0, v11

    move-object v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;-><init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;)V

    sput-object v11, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->g:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    .line 4
    new-instance v7, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    sget-object v13, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->c:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    sget-object v5, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->g:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v1, "SECOND_COMP"

    const/4 v2, 0x3

    move-object v0, v7

    move-object v3, v13

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;-><init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;)V

    sput-object v7, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->k:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    .line 5
    new-instance v14, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    sget-object v5, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->k:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v1, "SECOND_UN_COMP"

    const/4 v2, 0x4

    move-object v0, v14

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;-><init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;)V

    sput-object v14, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->l:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    .line 6
    new-instance v15, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    sget-object v5, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->l:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v1, "SECOND_RAW"

    const/4 v2, 0x5

    move-object v0, v15

    move-object v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;-><init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;)V

    sput-object v15, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->m:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    .line 7
    new-instance v13, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    sget-object v16, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->d:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    sget-object v5, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->m:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v1, "THIRD_COMP"

    const/4 v2, 0x6

    move-object v0, v13

    move-object/from16 v3, v16

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;-><init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;)V

    sput-object v13, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->n:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    .line 8
    new-instance v8, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    sget-object v5, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->n:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v1, "THIRD_UN_COMP"

    const/4 v2, 0x7

    move-object v0, v8

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;-><init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;)V

    sput-object v8, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->o:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    .line 9
    new-instance v10, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    sget-object v5, Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;->o:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    const-string v1, "THIRD_RAW"

    const/16 v2, 0x8

    move-object v0, v10

    move-object v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;-><init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;)V

    sput-object v10, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->p:Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    aput-object v9, v0, v1

    const/4 v1, 0x2

    aput-object v11, v0, v1

    const/4 v1, 0x3

    aput-object v7, v0, v1

    const/4 v1, 0x4

    aput-object v14, v0, v1

    const/4 v1, 0x5

    aput-object v15, v0, v1

    const/4 v1, 0x6

    aput-object v13, v0, v1

    const/4 v1, 0x7

    aput-object v8, v0, v1

    const/16 v1, 0x8

    aput-object v10, v0, v1

    .line 10
    sput-object v0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->q:[Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;",
            "Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;",
            "Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->a:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    .line 3
    iput-object p4, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->b:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;

    .line 4
    iput-object p5, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->c:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->m(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;)Z

    move-result p0

    return p0
.end method

.method static l(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;)Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->values()[Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lo3/l;

    invoke-direct {v1, p0, p1}, Lo3/l;-><init>(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    return-object p0
.end method

.method private static synthetic m(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;)Z
    .locals 1

    iget-object v0, p2, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->a:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    if-ne v0, p0, :cond_0

    iget-object p0, p2, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->b:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->q:[Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->c:Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;

    return-object p0
.end method

.method public h()Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->b:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;

    return-object p0
.end method

.method public k()Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;->a:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    return-object p0
.end method
