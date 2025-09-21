.class public final enum Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;
.super Ljava/lang/Enum;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraClient"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

.field public static final enum c:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

.field public static final enum d:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

.field public static final enum f:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

.field public static final enum g:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

.field public static final enum k:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

.field public static final enum l:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

.field public static final enum m:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

.field public static final enum n:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

.field public static final enum o:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

.field public static final enum p:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

.field private static final synthetic q:[Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    const-string v1, "CAMERA_CLIENT_SAMSUNG_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;->b:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    const-string v3, "CAMERA_CLIENT_3RD_UNIHAL_DEFAULT"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;->c:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    .line 3
    new-instance v3, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    const-string v6, "CAMERA_CLIENT_CAMERA_X"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v5, v7}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;->d:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    .line 4
    new-instance v6, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    const-string v8, "CAMERA_CLIENT_SAMSUNG_VIP_SDK"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;->f:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    .line 5
    new-instance v8, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    const-string v10, "CAMERA_CLIENT_SAMSUNG_ATTACH"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;->g:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    .line 6
    new-instance v10, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    const-string v12, "CAMERA_CLIENT_3RD_UNIHAL_VIP"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;->k:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    .line 7
    new-instance v12, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    const-string v14, "CAMERA_CLIENT_3RD_UNIHAL_VIDEO"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;->l:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    .line 8
    new-instance v14, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    const-string v13, "CAMERA_CLIENT_SAMSUNG_QR"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;->m:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    .line 9
    new-instance v13, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    const-string v15, "CAMERA_CLIENT_3RD_UNIHAL_ALLOWLIST"

    const/16 v9, 0x64

    invoke-direct {v13, v15, v11, v9}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;->n:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    .line 10
    new-instance v9, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    const-string v15, "CAMERA_CLIENT_3RD_UNIHAL_ALLOWLIST_LITE"

    const/16 v11, 0x9

    const/16 v7, 0x65

    invoke-direct {v9, v15, v11, v7}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;->o:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    .line 11
    new-instance v7, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    const-string v15, "CAMERA_CLIENT_EXECUTOR"

    const/16 v11, 0xa

    const/16 v5, 0xc8

    invoke-direct {v7, v15, v11, v5}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;->p:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    const/16 v5, 0xb

    new-array v5, v5, [Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v6, v5, v0

    const/4 v0, 0x4

    aput-object v8, v5, v0

    const/4 v0, 0x5

    aput-object v10, v5, v0

    const/4 v0, 0x6

    aput-object v12, v5, v0

    const/4 v0, 0x7

    aput-object v14, v5, v0

    const/16 v0, 0x8

    aput-object v13, v5, v0

    const/16 v0, 0x9

    aput-object v9, v5, v0

    aput-object v7, v5, v11

    .line 12
    sput-object v5, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;->q:[Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

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
    iput p3, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;->q:[Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;->a:I

    return p0
.end method
